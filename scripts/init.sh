#!/bin/bash
set -e
SLUG=${1:-my-video}
EXAMPLE=${2:-warm-grain}
echo "Init $SLUG with example $EXAMPLE"
npx hyperframes init "$SLUG" --example "$EXAMPLE"
cd "$SLUG"
echo "brief.md" > brief.md
echo "beats.md" > beats.md
mkdir -p assets out/stills
echo "file | source | license | what it shows" > assets/manifest.md
echo "Init done. cd $SLUG && npx hyperframes preview"
