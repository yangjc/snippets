#!/bin/bash

echo "$0"
echo "$(readlink -f "$0")"
echo "${BASH_SOURCE[0]}"
