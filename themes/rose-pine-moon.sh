#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#393552"           # Black
export COLOR_02="#EB6F92"           # Red
export COLOR_03="#9CCFD8"           # Green
export COLOR_04="#F6C177"           # Yellow
export COLOR_05="#3E8FB0"           # Blue
export COLOR_06="#C4A7E7"           # Magenta
export COLOR_07="#EA9A97"           # Cyan
export COLOR_08="#E0DEF4"           # Light gray

export COLOR_09="#6E6A86"           # Dark gray
export COLOR_10="#EB6F92"           # Light Red
export COLOR_11="#9CCFD8"           # Light Green
export COLOR_12="#F6C177"           # Light Yellow
export COLOR_13="#3E8FB0"           # Light Blue
export COLOR_14="#C4A7E7"           # Light Magenta
export COLOR_15="#EA9A97"           # Light Cyan
export COLOR_16="#E0DEF4"           # White

export BACKGROUND_COLOR="#232136"   # Background Color
export FOREGROUND_COLOR="#E0DEF4"   # Foreground Color (text)
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor color
export PROFILE_NAME="Rosé Pine Moon"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Gogh-Co/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi
