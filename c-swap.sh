#!/usr/bin/env bash

cat << "EOF"
void swap(int *nums, int i, int j) {
    int t = nums[i];
    nums[i] = nums[j];
    nums[j] = t;
}
EOF
