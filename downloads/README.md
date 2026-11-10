# Bombu release downloads

The website uses:

https://github.com/davidparaschiv/bombu-only-web/releases/latest/download/Bombu.dmg

Create a release at https://github.com/davidparaschiv/bombu-only-web/releases/new and upload the installer with the exact case-sensitive filename **Bombu.dmg**. Publish it as the latest stable release. Keep the asset name unchanged for future releases so the website follows the newest installer automatically.

The URL is configured in site-config.js and mirrored in the HTML fallback. Do not place installers in the Pages branch; .gitignore excludes DMG/PKG/app bundles.
