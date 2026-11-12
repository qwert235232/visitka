#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
git pull origin main || true
docker compose up -d --build
sleep 2
curl -fsS http://localhost:8034/health && echo " deploy OK"
