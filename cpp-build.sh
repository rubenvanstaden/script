#!/usr/bin/env bash

cat << "EOF"
clang++ -MJ compile_commands.json -std=c++20 -stdlib=libc++ -Wall -Wextra -Wpedantic src/main.cpp -o bin/run
EOF
