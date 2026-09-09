#!/bin/bash
# Double-click this file in Finder to preview the site locally in Safari.
cd "$(dirname "$0")"

# Open Safari once the server is listening on port 4000 (or after a short wait).
(
  for _ in $(seq 1 60); do
    if curl -sf "http://127.0.0.1:4000/" >/dev/null 2>&1; then
      open -a Safari "http://localhost:4000/"
      exit 0
    fi
    sleep 1
  done
  # Fallback if the health check never succeeds
  open -a Safari "http://localhost:4000/"
) &

./bin/serve
