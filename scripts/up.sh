#!/usr/bin/env bash
set -euo pipefail
docker compose up -d
echo "Attente des services (Postgres, Metabase-db, Metabase)..."
sleep 10
docker compose ps
echo "Ouverture Metabase: http://localhost:3000"
