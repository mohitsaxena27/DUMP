#!/bin/bash
# Usage: ./import.sh <mysql_user> <mysql_host>
# You will be prompted for the password.
set -e
USER="${1:-root}"
HOST="${2:-127.0.0.1}"
read -sp "MySQL password: " PASS
echo

echo "Importing authservice..."
{
  cat "authservice/00_create_database.sql"
  for f in "authservice"/*.sql; do
    [[ "$f" == *00_create_database.sql ]] && continue
    cat "$f"
  done
} | mysql -u"$USER" -h"$HOST" -p"$PASS"

echo "Importing tcg..."
{
  cat "tcg/00_create_database.sql"
  for f in "tcg"/*.sql; do
    [[ "$f" == *00_create_database.sql ]] && continue
    cat "$f"
  done
} | mysql -u"$USER" -h"$HOST" -p"$PASS"

echo "Importing automation..."
{
  cat "automation/00_create_database.sql"
  for f in "automation"/*.sql; do
    [[ "$f" == *00_create_database.sql ]] && continue
    cat "$f"
  done
} | mysql -u"$USER" -h"$HOST" -p"$PASS"

echo "Importing tdm..."
{
  cat "tdm/00_create_database.sql"
  for f in "tdm"/*.sql; do
    [[ "$f" == *00_create_database.sql ]] && continue
    cat "$f"
  done
} | mysql -u"$USER" -h"$HOST" -p"$PASS"

echo "Import complete."