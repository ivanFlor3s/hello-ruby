#!/bin/bash
set -e

echo "Base de datos disponible. Ejecutando migraciones..."

# Ejecutar migraciones con Sequel
bundle exec sequel -m  /app/src/data/migrations "$DATABASE_STRING_CONNECTION"

echo "Migraciones aplicadas. Iniciando la app..."

# Reemplazá esto por el comando de inicio real de tu app
bundle exec ruby /app/hello-telegram.rb