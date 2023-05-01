#!/usr/bin/env bash

cat << EOF
#include <stdbool.h>
#include <string.h>

bool assert_arrays_equal(int *arr1[], int *arr2[], int size) {
    if (memcmp(arr1, arr2, size * sizeof(int)) == 0) {
        return true;
    } else {
        return false;
    }
}
EOF

