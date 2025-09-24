#!/bin/bash
source ../emsdk/emsdk_env.sh
export BINDGEN_EXTRA_CLANG_ARGS="--sysroot=$EMSDK/upstream/emscripten/cache/sysroot"
cargo clean
rm ./Cargo.lock
rustup target add wasm32-unknown-emscripten
cargo build --target wasm32-unknown-emscripten --release