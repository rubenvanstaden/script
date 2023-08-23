#!/usr/bin/env bash
#
# Extract <a href="..."> URLs from an HTML document or documents

set -e

# Input is either stdin or the given arguments concatenated
cat -- "${@:--}" |

# Pipe through pup to get all the href links
pup -p 'a attr{href}' |

# Sort them uniquely
sort | uniq
