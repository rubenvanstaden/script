#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

cat << "EOF"
use std::collections::{HashMap};

type Id = i32;

pub struct Graph {
    pub nodes: HashMap<Id, Vec<Id>>,
}

impl Graph {
    
    pub fn new() -> Self {
        Graph { nodes: HashMap::new() }
    }
}
EOF

exit 0
