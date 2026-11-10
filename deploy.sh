#!/usr/bin/env bash
set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# The copy intentionally has no .git directory. Initialize a NEW repository first.
if ! git -C "$SCRIPT_DIR" rev-parse --show-toplevel >/dev/null 2>&1; then
  echo "Deployment stopped: initialize a new Git repository in bombu-only-web and add its own remote first."
  exit 1
fi
REPO_ROOT="$(git -C "$SCRIPT_DIR" rev-parse --show-toplevel)"
if [[ "$(cd "$REPO_ROOT" && pwd -P)" != "$(cd "$SCRIPT_DIR" && pwd -P)" ]]; then
  echo "Deployment stopped: bombu-only-web must be the repository root."
  exit 1
fi
REMOTE="${REMOTE:-origin}"
PAGES_BRANCH="${PAGES_BRANCH:-gh-pages}"
REMOTE_URL="$(git -C "$REPO_ROOT" remote get-url "$REMOTE")"
if [[ "$REMOTE_URL" != *"/bombu-only-web.git" && "$REMOTE_URL" != *"/bombu-only-web" && "$REMOTE_URL" != *":bombu-only-web.git" ]]; then
  echo "Deployment stopped: the remote must point to the new bombu-only-web repository."
  exit 1
fi
if [[ -n "$(git -C "$REPO_ROOT" status --porcelain)" ]]; then
  echo "Deployment stopped: commit the website changes first."
  exit 1
fi
python3 "$SCRIPT_DIR/scripts/check_indexing.py" --root "$SCRIPT_DIR"
TEMP_BRANCH="bombu-pages-$(date +%Y%m%d-%H%M%S)"
TEMP_DIR="$(mktemp -d "${TMPDIR:-/tmp}/bombu-pages.XXXXXX")"
cleanup() {
  git -C "$REPO_ROOT" worktree remove --force "$TEMP_DIR" >/dev/null 2>&1 || true
  git -C "$REPO_ROOT" branch -D "$TEMP_BRANCH" >/dev/null 2>&1 || true
  rm -rf "$TEMP_DIR"
}
trap cleanup EXIT INT TERM

git -C "$REPO_ROOT" worktree add --detach "$TEMP_DIR" HEAD >/dev/null
git -C "$TEMP_DIR" switch --orphan "$TEMP_BRANCH" >/dev/null
git -C "$TEMP_DIR" rm -rf . >/dev/null 2>&1 || true
# Explicit public-file list: never publish backend files, local secrets or caches.
PUBLIC_FILES=(index.html terms.html styles.css terms.css app.js site-config.js favicon.png robots.txt sitemap.xml llms.txt CNAME)
# Archive committed public paths only, so ignored files inside assets cannot leak.
git -C "$REPO_ROOT" archive HEAD -- "${PUBLIC_FILES[@]}" assets | tar -x -C "$TEMP_DIR"
touch "$TEMP_DIR/.nojekyll"
python3 "$SCRIPT_DIR/scripts/check_indexing.py" --root "$TEMP_DIR"
git -C "$TEMP_DIR" add --all
git -C "$TEMP_DIR" commit -m "Deploy Bombu website" >/dev/null
git -C "$TEMP_DIR" push --force "$REMOTE" "$TEMP_BRANCH:$PAGES_BRANCH"
echo "Published Bombu to $REMOTE/$PAGES_BRANCH. Wait for the Pages build, then run python3 scripts/check_indexing.py --live."
