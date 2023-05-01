#!/usr/bin/env bash

cat << EOF
#include <stdlib.h>
int *arr = (int *)malloc(n * sizeof(int));
if (arr == NULL) {
    printf("Error: Memory allocation failed.");
    return 1;
}
free(arr);
EOF
