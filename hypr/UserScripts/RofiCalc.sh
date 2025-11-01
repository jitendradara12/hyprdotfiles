#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */
# /* Calculator (using qalculate) and rofi */
# /* Submitted by: https://github.com/JosephArmas */

<<<<<<< HEAD
rofi_config="$HOME/.config/rofi/config-calc.rasi"
=======
rofi_theme="$HOME/.config/rofi/config-calc.rasi"
>>>>>>> jakoolit-configs

# Kill Rofi if already running before execution
if pgrep -x "rofi" >/dev/null; then
    pkill rofi
<<<<<<< HEAD
    exit 0
=======
>>>>>>> jakoolit-configs
fi

# main function

while true; do
    result=$(
        rofi -i -dmenu \
<<<<<<< HEAD
            -config "$rofi_config" \
=======
            -config $rofi_theme \
>>>>>>> jakoolit-configs
            -mesg "$result      =    $calc_result"
    )

    if [ $? -ne 0 ]; then
        exit
    fi

    if [ -n "$result" ]; then
        calc_result=$(qalc -t "$result")
        echo "$calc_result" | wl-copy
    fi
done
