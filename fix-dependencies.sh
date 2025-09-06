#!/bin/bash

echo "🔧 Fixing dependency vulnerabilities..."

# Update postcss to latest secure version
npm install postcss@latest --save-dev

# Update other vulnerable packages
npm install @testing-library/react@latest --save
npm install @testing-library/user-event@latest --save

# Clear npm cache
npm cache clean --force

# Remove node_modules and package-lock.json
rm -rf node_modules package-lock.json

# Reinstall with legacy peer deps to avoid conflicts
npm install --legacy-peer-deps

echo "✅ Dependencies updated! Run 'npm audit' to check security status."
echo "🚀 You can now push to trigger deployment."