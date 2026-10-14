#!/bin/bash
set -e
PROJECT=${1:-.}
OUTPUT=${2:-out/video.mp4}
FPS=${3:-60}
QUALITY=${4:-high}
cd "$PROJECT"
echo "Lint..."
npx hyperframes lint
echo "Check..."
npx hyperframes check
echo "Snapshot..."
npx hyperframes snapshot --at 0,1,3,5 --out out/stills || true
echo "Render $OUTPUT fps=$FPS quality=$QUALITY"
npx hyperframes render --output "$OUTPUT" --fps "$FPS" --quality "$QUALITY"
echo "Done: $OUTPUT"
ls -lh "$OUTPUT"
