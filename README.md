# Bombu website

Responsive static website for https://bombu.net, copied from SHIFT Beat. Layout and billing form are retained, with Bombu's dark blue/violet palette, supplied logo, native DJ features and a genuine owner-provided app screenshot. The original website is unchanged.

## Public configuration

Edit `site-config.js` for the public Supabase URL/publishable key, download URL, customer-portal URL and support email. No server secrets belong here.

Checkout/catalogs use **https://mtvtkoopyrfbdnvnolzx.supabase.co** and Bombu's supplied publishable key. Endpoint names stay `create-checkout`, `get-countries` and `get-cities`. The existing billing body and country/RO-city/external-city behavior are preserved. The backend controls the actual price (currently EUR 25/month).

The download URL now points to Bombu’s stable release asset: `https://github.com/davidparaschiv/bombu-only-web/releases/latest/download/Bombu.dmg`. Upload the installer with the exact case-sensitive asset name **Bombu.dmg** on each latest stable release. The customer-portal URL still uses the previous Stripe link until the owner supplies or confirms a replacement.

Support is **support@shift-beat.com**, intentionally shared. If changing it, update both HTML pages and site-config.js.

## App information

Compatibility is **macOS 26+**, on Intel and Apple Silicon, matching the supplied reference app/source and the owner’s confirmed website requirement. The reference informs the blue/violet two-deck workspace, local audio, wired Pioneer DDJ-FLX4 workflow, stems, hot cues, loops, Beat Jump, Pad FX, kick sampler banks and playlists. No Serato/rekordbox export or SHIFT Beat transition-ranking claims are inherited. Audio processing is local; fresh license approval and new helper analyses require internet. The hero uses the owner’s unchanged Desktop screenshot (2808×1534), preserved at its natural aspect ratio; it opens at full size on click. The page uses fluid window width with readable text measures and stacked mobile layout. The previous illustrative pad mockup and its JavaScript were removed. Native app hardware/listening acceptance was not performed for this website.

## Local preview

```sh
python3 scripts/preview.py --port 8088
```

Open http://127.0.0.1:8088. The preview substitutes local sample catalogs and blocks checkout; no Supabase or Stripe requests. This is a visual aid, not a catalog-loading or payment test. Stop with Ctrl+C.

## Checks

```sh
node --check app.js
node --check site-config.js
bash -n deploy.sh
python3 scripts/check_indexing.py
```

No catalog-loading tests or rate limiting added. Actual checkout/payment/license delivery and public DNS/redirects require owner verification after deployment.

## GitHub Pages publishing

The initial copy was created without Git metadata as requested. The owner subsequently initialized a new repository; the current origin is https://github.com/davidparaschiv/bombu-only-web.git. This independent repository is preserved. Do not reuse the SHIFT Beat remote.

`./deploy.sh` requires an independent Git root, clean checkout and remote pointing to `bombu-only-web`. It validates source and packaged indexing files and publishes only committed public files/assets from an explicit allowlist to `gh-pages`. Secrets, local scripts, documentation, installers and backend folders are excluded. The agent did not initialize the owner-created repository and has not pushed or deployed these final edits.

Configure GitHub Pages to serve **gh-pages / (root)**. CNAME is **bombu.net**. Set DNS to GitHub Pages and enable HTTPS when the certificate is ready. The domain did not resolve during initial inspection. All canonicals, sitemap, robots and social URLs use https://bombu.net. Home/Terms have separate canonicals, without invented sitemap dates or priority/changefreq.

After publication run `python3 scripts/check_indexing.py --live` to verify GET/HEAD, types, release contents and HTTP/www redirects. Submit https://bombu.net/sitemap.xml in Google Search Console. Live verification and Search Console submission remain pending for this unpublished copy.

## Stripe / backend readiness

The frontend needs no Stripe secret or direct Stripe API call: it opens the checkout returned by Bombu's backend. The owner must configure/deploy that backend with Bombu's product/price, webhook secret and migrations, and verify license/invoice delivery. The prepared backend uses product=bombu, bombu.net return URLs and Bombu CORS origins. Review the retained portal URL in the correct Stripe environment before launch. These website changes do not change Stripe settings or deploy Supabase functions.

Ownership caption: “Owned by ShiftBEAT” appears below Bombu logos, followed by the generated transparent waveform mark, rendered in Bombu’s theme blue through a CSS mask. This reference and the shared support address are intentional. Terms include the owner-provided statement about DJ beta/manual production testing and automated testing, and a compact Liability section requiring at least 5 GB of free disk space. Those testing claims are owner-supplied, not independently verified during website work. No separate privacy-policy page existed in the source.

SEO/crawlers: both pages contain page-specific canonical and structured metadata. Home identifies SoftwareApplication and WebSite; Terms identifies its own WebPage. llms.txt contains verified product facts and the explicitly retained link status. robots.txt and the standard XML sitemap remain in the public deployment allowlist. No invented ratings, reviews, sitemap dates, priority or changefreq values are added. Metadata helps discovery but does not guarantee Google indexing, ranking or rich-result eligibility.

Feature-card copy is grounded in ControllerSpecifications.txt revision 1.7 and Docs/implementation-status.txt from the local Bombu project. The final four cards focus on smart looping, precision per-deck TRIM, Smart Sample accents and stem gestures. Automatic loudness matching is highlighted in the opening section. CDJ-inspired wording describes the design approach; no certification or superior-audio claim is made. Only source-implemented behavior is described; the website edit does not establish hardware/listening verification or release-build availability for newer source changes. No proprietary DSP, certified loudness or professional scratch claims were added.
