#!/bin/bash


echo "Starting deployment..."


# Stop previous application

pkill node || true



# Start application

nohup npm start > app.log 2>&1 &



echo "Application deployed successfully"