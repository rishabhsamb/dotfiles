#!/bin/sh

# Catppuccin Macchiato Colors
BLANK='#00000000'          # Transparent
CLEAR='#1e203066'          # Mantle with transparency
DEFAULT='#8aadf4cc'        # Blue with transparency (for ring)
TEXT='#cad3f5ee'           # Text color
WRONG='#ed8796bb'          # Red with transparency (for errors)
VERIFYING='#a6da95bb'      # Green with transparency (for verification)
HIGHLIGHT='#c6a0f6cc'      # Mauve with transparency (for key highlights)

# Path to your pre-processed blurred image
BACKGROUND_IMAGE="/home/rishabh/Downloads/bg-blur.jpg"

i3lock \
  -i "$BACKGROUND_IMAGE" \
  --nofork \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$HIGHLIGHT     \
--bshl-color=$WRONG          \
\
--screen 1                   \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
--date-str="%A, %Y-%m-%d"    \
--keylayout 1                \

