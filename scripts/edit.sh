#!/bin/bash
# Edit helper: one thing per render, absolute value
set -e
PROJECT=${1:-.}
EDIT_DESC=${2:-"trim intro to 3s"}
echo "Editing $PROJECT: $EDIT_DESC"
cd "$PROJECT"
echo "Before lint:"
npx hyperframes lint
echo "Make your edit in compositions/index.html (ONE attribute, absolute value)"
echo "Then:"
echo "  npx hyperframes check"
echo "  npx hyperframes snapshot --at 3,6 --out out/stills"
echo "  npx hyperframes preview"
echo "  npx hyperframes render --output out/video-edit.mp4"
echo ""
echo "Good prompts:"
echo "  intro clip duration = 3s; leave animation alone"
echo "  swap logo for assets/logo-2025.svg keep animation"
echo "  title copy: \"Ship faster.\" - exact text"
