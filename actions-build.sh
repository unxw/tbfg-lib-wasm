#!/bin/bash
export BINDGEN_EXTRA_CLANG_ARGS="--sysroot=$EMSDK/upstream/emscripten/cache/sysroot"
rustup target add wasm32-unknown-emscripten
cargo build --target wasm32-unknown-emscripten --release
