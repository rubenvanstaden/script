#!/usr/bin/env bash

# 1. We will always want to while-loop a queue until empty.
# 2. First thing in this loop is to pop the top item.
# 3. Process this item and decide as to whether enqueue another one or not.

cat << "EOF"
#include <queue>
std::queue<int> q;
q.push();

while (!q.empty()) {

    int u = q.front();
    q.pop();

    std::cout << u << std::endl;
}
EOF
