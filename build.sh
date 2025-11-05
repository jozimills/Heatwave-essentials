#!/bin/bash

# Netlify build script for HeatWave Essentials
echo "🔥 Starting HeatWave Essentials build..."

# Ensure public directory exists
if [ ! -d "public" ]; then
  echo "❌ Error: public directory not found!"
  exit 1
fi

# Check if main files exist
if [ ! -f "public/index.html" ]; then
  echo "❌ Error: index.html not found in public directory!"
  exit 1
fi

# Create dist directory for build output (optional, since we're using public directly)
mkdir -p dist
cp -r public/* dist/

echo "✅ Build completed successfully!"
echo "📂 Files ready for deployment in public/ directory"