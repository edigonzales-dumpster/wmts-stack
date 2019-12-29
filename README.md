# wmts-stack

```
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up
docker-compose -f docker-compose.yml -f docker-compose.dev.yml down
```

TODO:
- Handling der Zertifikate im Zusammenspiel mit Caddy: Was passiert, wenn ich mehrere Konstrukte im Caddyfile habe, z.B. wmts-t.example.com und wmts.example.com. Lokal scheint es so, dass er immer versucht die Zertifikate für alle Domains zu holen, was natürlich zu Fehler führt. -> Ein Caddyfile für dev-only, das gemountet wird. Ein eingebranntes Caddyfile für Prod und Test mit Subdomain als ENV.
- Backup: alles? Zertifikate?
- 