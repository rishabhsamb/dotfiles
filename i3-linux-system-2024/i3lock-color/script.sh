#!/bin/bash

# Image to process
ORIGINAL_IMAGE="/home/rishabh/Downloads/bg.jpg"

# Get the directory and filename parts
DIR_PATH=$(dirname "$ORIGINAL_IMAGE")
FILENAME=$(basename "$ORIGINAL_IMAGE")
FILENAME_NOEXT="${FILENAME%.*}"
BLURRED_IMAGE="$DIR_PATH/${FILENAME_NOEXT}-blur.jpg"

# Get screen resolution
RESOLUTION=$(xrandr --query | grep ' connected primary' | grep -o '[0-9][0-9]*x[0-9][0-9]*')
if [ -z "$RESOLUTION" ]; then
    # If no primary monitor is found, use the first connected monitor
    RESOLUTION=$(xrandr --query | grep ' connected' | head -n 1 | grep -o '[0-9][0-9]*x[0-9][0-9]*')
fi

WIDTH=$(echo $RESOLUTION | cut -d"x" -f1)
HEIGHT=$(echo $RESOLUTION | cut -d"x" -f2)

echo "Processing image: $ORIGINAL_IMAGE"
echo "Screen resolution: ${WIDTH}x${HEIGHT}"
echo "Output will be saved to: $BLURRED_IMAGE"

# Process the image with ImageMagick
convert "$ORIGINAL_IMAGE" \
    -resize "${WIDTH}x${HEIGHT}^" \
    -gravity center \
    -extent "${WIDTH}x${HEIGHT}" \
    -blur 0x8 \
    "$BLURRED_IMAGE"

echo "Done! Your blurred background has been saved."

