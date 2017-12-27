#!/usr/bin/env bash

# exit on nonzero return for any command
set -ex

gcc --version
rustc -vV
ln -s "$TRAVIS_BUILD_DIR/x86_64-unknown-linux-cirs.json" "$TRAVIS_BUILD_DIR/scripts/x86_64-unknown-linux-cirs.json"
xargo build --verbose --target x86_64-unknown-linux-cirs
xargo test --verbose --target x86_64-unknown-linux-cirs
rm "$TRAVIS_BUILD_DIR/scripts/x86_64-unknown-linux-cirs.json"
