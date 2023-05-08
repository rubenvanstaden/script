#!/usr/bin/env bash

cat << "EOF"
// Set nth bit
x |= (1 << n);

// Clear nth bit
x &= ~(1 << n);

// Toggle nth bit
x ^= (1 << n);

// Check nth bit
int bit = x & (1 << n);

// Shifting
x <<= n; // Multiply x by 2^n
x >>= n; // Divide x by 2^n

// Swap two integers
a ^= b;
b ^= a;
a ^= b;
EOF
