#!/bin/bash

# Stop development infrastructure for Convert Platform
set -e

echo "🛑 Stopping Convert Platform development infrastructure..."

# Navigate to docker directory
cd "$(dirname "$0")/../docker"

# Stop and remove containers
docker-compose -f docker-compose.yml -f docker-compose.dev.yml down

echo "✅ Development infrastructure stopped!"
echo ""
echo "💡 To start again: ./start-dev.sh"
echo "🗑️  To remove all data: ./cleanup-dev.sh"