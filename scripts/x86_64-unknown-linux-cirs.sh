#!/usr/bin/env bash

# exit on nonzero return for any command
set -ex

gcc --version
rustc -vV
xargo build --verbose --target x86_64-unknown-linux-cirs
xargo test --verbose --target x86_64-unknown-linux-cirs