#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  #
<<<<<<< HEAD
# Wallpaper Effects using ImageMagick
# Inspiration from ML4W - Stephan Raabe https://gitlab.com/stephan-raabe/dotfiles

# Variables
current_wallpaper="$HOME/.config/hypr/wallpaper_effects/.wallpaper_current"
wallpaper_output="$HOME/.config/hypr/wallpaper_effects/.wallpaper_modified"
SCRIPTSDIR="$HOME/.config/hypr/scripts"
focused_monitor=$(hyprctl monitors | awk '/^Monitor/{name=$2} /focused: yes/{print name}')

# Directory for swaync
iDIR="$HOME/.config/swaync/images"
=======
# Wallpaper Effects using ImageMagick (SUPER SHIFT W)

# Variables
terminal=kitty
wallpaper_current="$HOME/.config/hypr/wallpaper_effects/.wallpaper_current"
wallpaper_output="$HOME/.config/hypr/wallpaper_effects/.wallpaper_modified"
SCRIPTSDIR="$HOME/.config/hypr/scripts"
focused_monitor=$(hyprctl monitors -j | jq -r '.[] | select(.focused) | .name')
rofi_theme="$HOME/.config/rofi/config-wallpaper-effect.rasi"

# Directory for swaync
iDIR="$HOME/.config/swaync/images"
iDIRi="$HOME/.config/swaync/icons"
>>>>>>> jakoolit-configs

# swww transition config
FPS=60
TYPE="wipe"
DURATION=2
BEZIER=".43,1.19,1,.4"
<<<<<<< HEAD
SWWW_PARAMS="--transition-fps $FPS --transition-type $TYPE --transition-duration $DURATION"
=======
SWWW_PARAMS="--transition-fps $FPS --transition-type $TYPE --transition-duration $DURATION --transition-bezier $BEZIER"
>>>>>>> jakoolit-configs

# Define ImageMagick effects
declare -A effects=(
    ["No Effects"]="no-effects"
<<<<<<< HEAD
    ["Black & White"]="magick $current_wallpaper -colorspace gray -sigmoidal-contrast 10,40% $wallpaper_output"
    ["Blurred"]="magick $current_wallpaper -blur 0x10 $wallpaper_output"
    ["Charcoal"]="magick $current_wallpaper -charcoal 0x5 $wallpaper_output"
    ["Edge Detect"]="magick $current_wallpaper -edge 1 $wallpaper_output"
    ["Emboss"]="magick $current_wallpaper -emboss 0x5 $wallpaper_output"
    ["Negate"]="magick $current_wallpaper -negate $wallpaper_output"
    ["Oil Paint"]="magick $current_wallpaper -paint 4 $wallpaper_output"
    ["Posterize"]="magick $current_wallpaper -posterize 4 $wallpaper_output"
    ["Polaroid"]="magick $current_wallpaper -polaroid 0 $wallpaper_output"
    ["Sepia Tone"]="magick $current_wallpaper -sepia-tone 65% $wallpaper_output"
    ["Solarize"]="magick $current_wallpaper -solarize 80% $wallpaper_output"
    ["Sharpen"]="magick $current_wallpaper -sharpen 0x5 $wallpaper_output"
    ["Vignette"]="magick $current_wallpaper -vignette 0x5 $wallpaper_output"
    ["Zoomed"]="magick $current_wallpaper -gravity Center -extent 1:1 $wallpaper_output"
=======
    ["Black & White"]="magick $wallpaper_current -colorspace gray -sigmoidal-contrast 10,40% $wallpaper_output"
    ["Blurred"]="magick $wallpaper_current -blur 0x10 $wallpaper_output"
    ["Charcoal"]="magick $wallpaper_current -charcoal 0x5 $wallpaper_output"
    ["Edge Detect"]="magick $wallpaper_current -edge 1 $wallpaper_output"
    ["Emboss"]="magick $wallpaper_current -emboss 0x5 $wallpaper_output"
    ["Frame Raised"]="magick $wallpaper_current +raise 150 $wallpaper_output"
    ["Frame Sunk"]="magick $wallpaper_current -raise 150 $wallpaper_output"
    ["Negate"]="magick $wallpaper_current -negate $wallpaper_output"
    ["Oil Paint"]="magick $wallpaper_current -paint 4 $wallpaper_output"
    ["Posterize"]="magick $wallpaper_current -posterize 4 $wallpaper_output"
    ["Polaroid"]="magick $wallpaper_current -polaroid 0 $wallpaper_output"
    ["Sepia Tone"]="magick $wallpaper_current -sepia-tone 65% $wallpaper_output"
    ["Solarize"]="magick $wallpaper_current -solarize 80% $wallpaper_output"
    ["Sharpen"]="magick $wallpaper_current -sharpen 0x5 $wallpaper_output"
    ["Vignette"]="magick $wallpaper_current -vignette 0x3 $wallpaper_output"
    ["Vignette-black"]="magick $wallpaper_current -background black -vignette 0x3 $wallpaper_output"
    ["Zoomed"]="magick $wallpaper_current -gravity Center -extent 1:1 $wallpaper_output"
>>>>>>> jakoolit-configs
)

# Function to apply no effects
no-effects() {
<<<<<<< HEAD
    swww img -o "$focused_monitor" "$current_wallpaper" $SWWW_PARAMS &
    # Wait for swww command to complete
    wait $!
    # Run other commands after swww
    wallust run "$current_wallpaper" -s &
    # Wait to complete
    wait $!
    # Refresh rofi, waybar, wallust palettes
    "${SCRIPTSDIR}/Refresh.sh"
    notify-send -u low -i "$iDIR/bell.png" "No wallpaper effects"
    # copying wallpaper for rofi menu
    cp "$current_wallpaper" "$wallpaper_output"
=======
    swww img -o "$focused_monitor" "$wallpaper_current" $SWWW_PARAMS &&
    wait $!
    wallust run "$wallpaper_current" -s &&
    wait $!
    # Refresh rofi, waybar, wallust palettes
	sleep 2
	"$SCRIPTSDIR/Refresh.sh"

    notify-send -u low -i "$iDIR/ja.png" "No wallpaper" "effects applied"
    # copying wallpaper for rofi menu
    cp "$wallpaper_current" "$wallpaper_output"
>>>>>>> jakoolit-configs
}

# Function to run rofi menu
main() {
    # Populate rofi menu options
    options=("No Effects")
    for effect in "${!effects[@]}"; do
        [[ "$effect" != "No Effects" ]] && options+=("$effect")
    done

<<<<<<< HEAD
    # Show rofi menu and handle user choice
    choice=$(printf "%s\n" "${options[@]}" | LC_COLLATE=C sort | rofi -dmenu -p "Choose effect" -i -config ~/.config/rofi/config-wallpaper-effect.rasi)
=======
    choice=$(printf "%s\n" "${options[@]}" | LC_COLLATE=C sort | rofi -dmenu -i -config $rofi_theme)
>>>>>>> jakoolit-configs

    # Process user choice
    if [[ -n "$choice" ]]; then
        if [[ "$choice" == "No Effects" ]]; then
            no-effects
        elif [[ "${effects[$choice]+exists}" ]]; then
            # Apply selected effect
<<<<<<< HEAD
            notify-send -u normal -i "$iDIR/bell.png" "Applying $choice effects"
            eval "${effects[$choice]}"
            # Wait for effects to be applied
            sleep 1
            # Execute swww command after image conversion
            swww img -o "$focused_monitor" "$wallpaper_output" $SWWW_PARAMS &
            # Wait for swww command to complete
            wait $!
            # Wait for other commands to finish
            wallust run "$wallpaper_output" -s &
            # Wait for other commands to finish
            wait $!
            # Refresh rofi, waybar, wallust palettes
            "${SCRIPTSDIR}/Refresh.sh"
            notify-send -u low -i "$iDIR/bell.png" "$choice effects applied"
=======
            notify-send -u normal -i "$iDIR/ja.png"  "Applying:" "$choice effects"
            eval "${effects[$choice]}"
            
            # intial kill process
            for pid in swaybg mpvpaper; do
            killall -SIGUSR1 "$pid"
            done

            sleep 1
            swww img -o "$focused_monitor" "$wallpaper_output" $SWWW_PARAMS &

            sleep 2
  
            wallust run "$wallpaper_output" -s &
            sleep 1
            # Refresh rofi, waybar, wallust palettes
            "${SCRIPTSDIR}/Refresh.sh"
            notify-send -u low -i "$iDIR/ja.png" "$choice" "effects applied"
>>>>>>> jakoolit-configs
        else
            echo "Effect '$choice' not recognized."
        fi
    fi
}

# Check if rofi is already running and kill it
if pidof rofi > /dev/null; then
    pkill rofi
<<<<<<< HEAD
    exit 0
fi

main
=======
fi

main

sleep 1

if [[ -n "$choice" ]]; then
  # Resolve SDDM themes directory (standard and NixOS path)
  sddm_themes_dir=""
  if [ -d "/usr/share/sddm/themes" ]; then
    sddm_themes_dir="/usr/share/sddm/themes"
  elif [ -d "/run/current-system/sw/share/sddm/themes" ]; then
    sddm_themes_dir="/run/current-system/sw/share/sddm/themes"
  fi

  if [ -n "$sddm_themes_dir" ]; then
    sddm_simple="$sddm_themes_dir/simple_sddm_2"

    # Only prompt if theme exists and its Backgrounds directory is writable
    if [ -d "$sddm_simple" ] && [ -w "$sddm_simple/Backgrounds" ]; then
      # Check if yad is running to avoid multiple yad notification
      if pidof yad > /dev/null; then
        killall yad
      fi

      if yad --info --text="Set current wallpaper as SDDM background?\n\nNOTE: This only applies to SIMPLE SDDM v2 Theme" \
        --text-align=left \
        --title="SDDM Background" \
        --timeout=5 \
        --timeout-indicator=right \
        --button="yad-yes:0" \
        --button="yad-no:1" \
        ; then

        # Check if terminal exists
        if ! command -v "$terminal" &>/dev/null; then
          notify-send -i "$iDIR/ja.png" "Missing $terminal" "Install $terminal to enable setting of wallpaper background"
          exit 1
        fi

        exec "$SCRIPTSDIR/sddm_wallpaper.sh" --effects
      fi
    fi
  fi
fi
>>>>>>> jakoolit-configs
