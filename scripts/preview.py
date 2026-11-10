#!/usr/bin/env python3
"""Local visual preview with sample billing catalogs; never contacts Supabase or Stripe."""
import argparse
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
import json
from pathlib import Path
from urllib.parse import urlsplit

ROOT = Path(__file__).resolve().parents[1]
PUBLIC = {'index.html', 'terms.html', 'styles.css', 'terms.css', 'app.js',
          'site-config.js', 'favicon.png', 'robots.txt', 'sitemap.xml', 'llms.txt', 'CNAME'}

class Preview(SimpleHTTPRequestHandler):
    extensions_map = {**SimpleHTTPRequestHandler.extensions_map, '.xml': 'application/xml'}
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=str(ROOT), **kwargs)
    def send_bytes(self, data, content_type, status=200):
        self.send_response(status)
        self.send_header('Content-Type', content_type)
        self.send_header('Content-Length', str(len(data)))
        self.send_header('Cache-Control', 'no-store')
        self.end_headers()
        if self.command != 'HEAD': self.wfile.write(data)
    def do_GET(self):
        path = urlsplit(self.path).path
        if path == '/site-config.js':
            config = (ROOT / 'site-config.js').read_text().replace(
                'https://mtvtkoopyrfbdnvnolzx.supabase.co', f'http://127.0.0.1:{self.server.server_port}')
            self.send_bytes(config.encode(), 'text/javascript; charset=utf-8')
        elif path == '/functions/v1/get-countries':
            self.send_bytes(json.dumps([{'code': 'RO', 'name': 'Romania'},
                {'code': 'GB', 'name': 'United Kingdom'}, {'code': 'FR', 'name': 'France'}]).encode(), 'application/json')
        elif path == '/functions/v1/get-cities':
            self.send_bytes(json.dumps([{'id': 7, 'name': 'Cluj-Napoca', 'county': 'Cluj'},
                {'id': 1, 'name': 'Abrud', 'county': 'Alba'}]).encode(), 'application/json')
        elif path in ('/', '/index.html') or path.lstrip('/') in PUBLIC or path.startswith('/assets/') and '..' not in path:
            super().do_GET()
        else: self.send_error(404)
    def do_HEAD(self): self.do_GET()
    def do_POST(self):
        self.send_bytes(json.dumps({'error': 'Checkout is disabled in the local preview. No payment was created.'}).encode(),
                        'application/json', 403)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--port', type=int, default=8088)
    args = parser.parse_args()
    server = ThreadingHTTPServer(('127.0.0.1', args.port), Preview)
    print(f'Bombu preview: http://127.0.0.1:{args.port} — sample catalogs; checkout disabled.', flush=True)
    try: server.serve_forever()
    except KeyboardInterrupt: pass
    finally: server.server_close()
