#!/bin/sh

set -eu

root_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
cd "$root_dir"

missing=0
for ref in $(grep -Eo '(href|src)="[^"]+"' index.html | cut -d '"' -f 2 | grep -Ev '^(https?:|mailto:|#)'); do
    relative_ref=${ref#/}
    if [ ! -e "$relative_ref" ]; then
        echo "Missing internal resource: $ref"
        missing=1
    fi
done

if grep -q 'FORM_URL_PLACEHOLDER' index.html; then
    echo "Prospective-student form URL has not been configured."
    missing=1
fi

if [ "$missing" -ne 0 ]; then
    exit 1
fi

echo "Site checks passed."
