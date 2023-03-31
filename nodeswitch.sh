#!/bin/bash

# Check if the version argument is passed
if [ -z "$1" ]; then
  echo "Please specify a version number."
  exit 1
fi

# Set the Node.js version
NODE_VERSION="$1"

# Check if the specified version is installed
if ! node --version | grep -q "$NODE_VERSION"; then
  echo "Node.js version $NODE_VERSION is not installed."
  exit 1
fi

# Switch to the specified version
sudo update-alternatives --install /usr/bin/node node /usr/bin/nodejs"$NODE_VERSION" 1
sudo update-alternatives --install /usr/bin/npm npm /usr/bin/npm"$NODE_VERSION" 1

# Select the new version
sudo update-alternatives --set node /usr/bin/nodejs"$NODE_VERSION"
sudo update-alternatives --set npm /usr/bin/npm"$NODE_VERSION"

echo "Node.js version has been switched to $NODE_VERSION."
