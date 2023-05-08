#!/usr/bin/env bash

cat << "EOF"
struct Node {
    int data;
    Node *left;
    Node *right;

    Node(int val) : data(val), left(nullptr), right(nullptr) {}
};
EOF
