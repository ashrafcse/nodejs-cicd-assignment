#!/bin/bash

echo "===== Starting Deployment ====="

echo "Installing dependencies..."
npm install

echo "Stopping old application..."
pkill -f "node src/server.js" || true

echo "Starting application..."
nohup npm start > app.log 2>&1 &

echo "===== Deployment Successful ====="