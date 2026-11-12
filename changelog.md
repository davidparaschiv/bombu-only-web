## 2026-11-13

- Added the owner's RMX support statement above the hero screenshot, with a blue/violet bordered callout, RMX badge and emphasized Pioneer-100 / FLX4-only wording. The callout stacks on mobile. Local indexing and whitespace checks passed; no backend changes.

- Changed PAD FX2 to RMX on both decks in assets/bombu-workspace.png, retaining the earlier SMART SAMPLE and SHIFT KEY edits. Verified the 2808×1534 dimensions and identical decoded pixels outside the two label rectangles; visually inspected both replacements.

## 2026-11-12

- Retouched only the four second-row labels in assets/bombu-workspace.png: both decks now show SMART SAMPLE beneath HOT CUE and SHIFT KEY beneath SAMPLER. Preserved the 2808×1534 dimensions and verified decoded pixels outside the four label rectangles are identical to the original. Visually inspected the edited labels; no app/backend behavior changed.

## 2026-11-10 — Compatibility correction

- Set Bombu’s minimum system requirement to macOS 26+ throughout the homepage, download label, Terms, SEO/structured data, crawler summary and current README. Local indexing, structured-data parsing and whitespace checks passed. No deployment performed.

## 2026-11-10

- Updated Bombu’s visible compatibility labels to “MacOS 15+ · Intel & Apple Silicon” at the owner’s request, with matching minimum-version information in Terms, SEO/structured data, crawler summary and current README. Native app requirements/builds were not changed. Local indexing, structured-data and whitespace checks passed; no deployment performed.

- Replaced the copied SHIFT Beat download with the owner-supplied Bombu.dmg latest-release URL in public configuration and HTML fallback. Updated release instructions, crawler summary and current project guidance; retained the existing Stripe management portal URL. JavaScript syntax, indexing, download/config consistency and whitespace checks passed. Public HEAD returned 404 during verification; release/asset availability remains owner setup. No backend changes or deployment performed.
- Refined the final main section to four feature cards at the owner's request: smart looping, precision TRIM gain, Smart Sample and stem control. Loop copy covers beat lengths, jog in/out adjustment and saved loops; TRIM copy follows the current specification's -12/+12 dB deck gain on top of automatic matching. Added automatic loudness matching to the opening section and CDJ-inspired design wording without unsupported highest-quality/certification claims. Updated structured/crawler feature descriptions and responsive card columns. HTML card-count/metadata checks, JavaScript syntax, indexing and whitespace checks passed. No native app code/build/test, backend operation or public deployment performed.
- Replaced Bombu's generic feature cards with six specification-grounded cards: stem gestures, track-derived kick banks, Smart Sample phrase accents, eight pad modes/sixteen assignable FX, moving loops and automatic loudness matching. Cross-checked ControllerSpecifications.txt revision 1.7 against the implementation audit; did not advertise planned scratch tuning, certified metering or proprietary algorithms. Updated quick-point cards, structured feature data and llms.txt to match.
- Feature cards use three desktop columns, two tablet columns and one mobile column, with blue/violet CSS icons and readable copy. Source/HTML metadata, JavaScript, indexing and whitespace checks passed. No native app changes/builds, catalog tests, backend calls or public deployment performed.
- Widened the Bombu homepage to a fluid viewport layout with small responsive gutters, readable introduction columns and a full-width hero screenshot. Mobile content stacks and the screenshot uses width:100%/height:auto, preserving its native aspect ratio without stretching or cropping.
- Replaced the illustrative deck/pad mockup with the owner-provided Desktop screenshot, copied pixel-for-pixel to assets/bombu-workspace.png. Removed the mockup's pad-mode JavaScript; added full-size image links, descriptive alt text and actual-screenshot social/structured metadata. The app was opened with permission; the owner's preferred screenshot was used instead of the agent's separate capture. No app code or playback was changed. JavaScript/indexing/whitespace checks, screenshot hash and native-ratio checks, and local homepage/image HTTP checks passed; mobile visual/device testing and public deployment were not performed.
- Expanded SEO/crawler data: consistent macOS 26 descriptions, SoftwareApplication identity/features/publisher, WebSite identity, Terms WebPage metadata and detailed llms.txt product/compatibility/licensing/support facts. Retained robots/sitemap and distinct canonicals, without fabricated ratings/reviews or sitemap dates. JSON/HTML/resource, JavaScript/shell, local static GET/HEAD and indexing checks passed. The old preview process was no longer running during the first HTTP check; after restarting it, final GET/HEAD checks passed. Public deployment/Search Console submission not performed.
- Finalized compatibility as macOS 26+ (Tahoe), Intel and Apple Silicon, following the owner’s correction and matching the reference app. Updated homepage/download copy, Terms, structured data, crawler summary and README. Owner-created Git metadata and the new bombu-only-web origin were detected and preserved; an obsolete no-Git check stopped at that changed assumption. No Git initialization, push, deployment or Supabase operation performed by the agent.
- Created Bombu's independent website copy in bombu-only-web without .git/history, local secrets or backend files. Kept SHIFT Beat's source unchanged and added the user's mandatory frontend-project selection rule for future changes.
- Reused the responsive layout and billing form with Bombu's blue/violet palette, provided logo/favicon, native two-deck/FLX4/stems/pads copy and an interactive visual pad-mode preview. Removed inherited SHIFT Beat transition-ranking/export claims. Optimized header/favicon/ownership images for the small display sizes.
- Connected public checkout/catalog configuration to Bombu project mtvtkoopyrfbdnvnolzx with the supplied publishable key. Endpoint names/body remain the same. Kept support@shift-beat.com and, at the owner's explicit request, the previous SHIFT Beat release and Stripe portal URLs as temporary values in site-config.js; documentation flags them for review before launch.
- Added “Owned by ShiftBEAT” below Bombu logos with a transparent generated waveform mark rendered in theme blue, following the owner's latest color preference. Kept the illustrative performance preview as requested.
- Updated existing Terms with Bombu licensing wording, owner-supplied DJ beta/manual production testing and automated-testing statements, and a compact Liability section requiring at least 5 GB of free disk space. No separate privacy-policy page existed. Website compatibility is macOS 15+ / Intel and Apple Silicon per explicit owner confirmation; the supplied reference bundle still declares macOS 26, recorded in README for release reconciliation.
- Set CNAME, separate page canonicals, sitemap, robots and social/crawler metadata to bombu.net. Updated .gitignore and deploy.sh with a committed-public-file allowlist, no-repository/independent-root checks and a Bombu-only remote guard. No repository was initialized, pushed or deployed.
- Verification passed: JavaScript/shell syntax, local indexing/namespace/canonical checks, HTML IDs/anchors/assets and structured metadata, required Terms/ownership wording, static preview GET/HEAD/MIME checks, staged publish-package checks, tracked-only asset export excluding ignored files, and rejection of the SHIFT Beat remote. The expected deployment refusal without .git was confirmed. The generated mark's transparent alpha was inspected. No catalog-loading tests or rate limiting added; no Supabase/Stripe calls, checkout transactions or native app builds/tests performed. Automated browser/mobile visual QA was unavailable; native hardware/listening and live checkout remain owner checks. Public DNS did not resolve during inspection, so live-host SEO checks/Search Console submission remain pending.
- Added a loopback-only visual preview with sample catalogs and checkout blocked; it does not contact Supabase or Stripe.

## 2026-11-08

- Expanded the supported audio input list to MP3, AIF/AIFF, FLAC, WAV, and AAC in the visible feature list, SoftwareApplication structured data and llms.txt. Export formats, layout and styles are unchanged.
- Checks: local indexing validation, structured-data JSON parsing, input-list consistency and whitespace checks passed. Reviewed native Scripts/build.py and Package.swift packaging dependencies: no app/DMG changes required.

## 2026-11-06

- Audited GitHub Pages domain/HTTPS: HTTP and www variants redirect to https://shift-beat.com; Pages serves gh-pages at the root. Preserved the existing permissive robots.txt and per-page canonicals; formatted the two-page standard XML sitemap without invented dates or optional settings. Terms home links now use the canonical root URL. No design or visible copy changes.
- Added an indexing validator for robots rules, sitemap/page/canonical consistency and optional live GET/HEAD checks, MIME types, release contents and path-preserving redirects. Deployment validates both source and packaged indexing files and includes them at the published root.
- Documented Google guidance, verification commands and pending Search Console submission: browser access timed out, so authorized property access could not be confirmed. Native Scripts/build.py and Package.swift packaging reviewed: no app/DMG updates required.
- Verification: source and deployment-package indexing checks, shell syntax and whitespace checks passed. After Pages publication, live GET/HEAD passed for both pages, robots.txt (200 text/plain) and sitemap.xml (200 application/xml), matching release bytes; HTTP/www redirects preserve both home and Terms paths. The first live check saw the prior sitemap while the Pages build was still running; the final check passed after publication. No Search Console submission was performed.

## 2026-11-04

- Corrected setup documentation: Stripe charges EUR 25 without Tax Rate IDs; fiscal Romanian VAT is calculated by the backend. No website UI or payment endpoint changed. Documentation/whitespace checks passed; native packaging needs no update.

- Restyled billing to match the original purchase panel: shared 680px width, quiet charcoal fields, aligned labels and the original solid green subscribe button. Removed the extra price summary, decorative heading and Romanian VAT breakdown from the form.
- Verified the form visually at desktop, 390px and 320px widths using local display fixtures only: single-column mobile layout, aligned fields, no horizontal overflow, Romanian city select/external city text field. No Supabase request or catalog-loading test was run. JavaScript syntax, HTML label/ID and whitespace checks passed. Native build/packaging review: no updates required.

- Corrected the final requested price from EUR 35 to EUR 25 across the billing form, Romanian VAT breakdown (20.66 + 4.34), SEO, crawler summary, Terms and documentation. Checks: JavaScript syntax, pricing consistency and whitespace checks passed; no deployment or live payment test. Reviewed native build/packaging: no changes needed.

- Added an aligned billing form in the existing dark cyan/green style, with two desktop columns and a single-column mobile layout. Collects first/last name, email, address and country; Romania uses a city dropdown, other countries use free-text city.
- Connected the public country/city catalogs with loading/error feedback and retry, and extended the existing checkout request with billing details. No catalog rate limiting or loading tests were added.
- Updated pricing, structured SEO data, crawler summary, documentation and Terms to EUR 35 final per month: Romanian 21% VAT included (28.93 + 6.07); no VAT for other countries. The existing subscription management link remains.
- Checks: JavaScript syntax and whitespace checks passed; local form label/ID, asset and structured-data checks passed. Browser/mobile visual verification and live checkout remain unverified; nothing was deployed. The matching backend must be configured/deployed by the owner before publishing this form.
- Reviewed the native app Scripts/build.py and packaging dependencies; no app/DMG build changes are needed.

## 2026-10-30

- Corrected subscription pricing to EUR 25/month in the website, checkout button, structured SEO data, crawler summary, documentation and Terms of Service. Stripe configuration is managed separately through the backend STRIPE_PRICE_ID secret.

## 2026-10-28

- Updated subscription pricing to EUR 50/month in the website, checkout button, structured SEO data, crawler summary, documentation and Terms of Service.
- Reviewed the deployed checkout source without changing it: the billed amount is controlled by the backend STRIPE_PRICE_ID. Remote Stripe configuration was not changed; checkout still requires separate backend configuration.
- Checks: parsed structured pricing data; verified displayed prices and Terms, checked local HTML references, and ran git diff --check. No live payment or browser visual test was run.
- Reviewed the native app Scripts/build.py and packaging dependencies; website pricing changes need no app/DMG build updates.

