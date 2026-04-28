#!/bin/bash

echo "Cleaning old build..."
rm -rf package
rm -f lambda.zip

echo "Creating package folder..."
mkdir package

echo "Installing dependencies..."
pip install -r requirements.txt -t package/

echo "Copying app code..."
cp app.py package/

echo "Creating zip..."
cd package
zip -r ../lambda.zip .
cd ..

echo "Done! lambda.zip is ready"