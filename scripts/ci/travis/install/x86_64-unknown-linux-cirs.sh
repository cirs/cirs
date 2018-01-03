#!/usr/bin/env bash

set -ex

if [[ ! -e ~/.cargo/bin/xargo  ]]
then
	cargo install xargo
fi

xargo -vV

rustup component add rust-src
