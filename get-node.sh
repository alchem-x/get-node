#!/usr/bin/env bash
cd "$(dirname "$0")" || exit 1

PLATFORM="$(uname -s | tr '[:upper:]' '[:lower:]')"
ARCH="$(uname -m)"

if [ "$ARCH" == 'x86_64' ]; then
    ARCH='x64'
fi

NODE_VERSION='22.9.0'

NODE_FILE_NAME="node-v$NODE_VERSION-$PLATFORM-$ARCH"
NODE_FILE_NAME_EXT="$NODE_FILE_NAME.tar.gz"
NODE_URL="https://nodejs.org/dist/v$NODE_VERSION/$NODE_FILE_NAME_EXT"

if [ -d "$NODE_FILE_NAME" ]; then
    rm -rf "$NODE_FILE_NAME"
fi

curl "$NODE_URL" -o "$NODE_FILE_NAME_EXT"
tar -xzf "$NODE_FILE_NAME_EXT"
rm "$NODE_FILE_NAME_EXT"

echo "export PATH=\"$(pwd)/$NODE_FILE_NAME/bin:\$PATH\"" >> .profile
