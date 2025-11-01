#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Playerctl

music_icon="$HOME/.config/swaync/icons/music.png"

# Play the next track
play_next() {
<<<<<<< HEAD
    playerctl next
    show_music_notification
=======
  playerctl next
  show_music_notification
>>>>>>> jakoolit-configs
}

# Play the previous track
play_previous() {
<<<<<<< HEAD
    playerctl previous
    show_music_notification
=======
  playerctl previous
  show_music_notification
>>>>>>> jakoolit-configs
}

# Toggle play/pause
toggle_play_pause() {
<<<<<<< HEAD
    playerctl play-pause
    show_music_notification
=======
  playerctl play-pause
  sleep 0.1
  show_music_notification
>>>>>>> jakoolit-configs
}

# Stop playback
stop_playback() {
<<<<<<< HEAD
    playerctl stop
    notify-send -e -u low -i $music_icon " Playback:" " Stopped"
=======
  playerctl stop
  notify-send -e -u low -i $music_icon " Playback:" " Stopped"
>>>>>>> jakoolit-configs
}

# Display notification with song information
show_music_notification() {
<<<<<<< HEAD
    status=$(playerctl status)
    if [[ "$status" == "Playing" ]]; then
        song_title=$(playerctl metadata title)
        song_artist=$(playerctl metadata artist)
        notify-send -e -u low -i $music_icon "Now Playing:" "$song_title by $song_artist"
    elif [[ "$status" == "Paused" ]]; then
        notify-send -e -u low -i $music_icon " Playback:" " Paused"
    fi
=======
  status=$(playerctl status)
  if [[ "$status" == "Playing" ]]; then
    song_title=$(playerctl metadata title)
    song_artist=$(playerctl metadata artist)
    notify-send -e -u low -i $music_icon "Now Playing:" "$song_title by $song_artist"
  elif [[ "$status" == "Paused" ]]; then
    notify-send -e -u low -i $music_icon " Playback:" " Paused"
  fi
>>>>>>> jakoolit-configs
}

# Get media control action from command line argument
case "$1" in
<<<<<<< HEAD
    "--nxt")
        play_next
        ;;
    "--prv")
        play_previous
        ;;
    "--pause")
        toggle_play_pause
        ;;
    "--stop")
        stop_playback
        ;;
    *)
        echo "Usage: $0 [--nxt|--prv|--pause|--stop]"
        exit 1
        ;;
=======
"--nxt")
  play_next
  ;;
"--prv")
  play_previous
  ;;
"--pause")
  toggle_play_pause
  ;;
"--stop")
  stop_playback
  ;;
*)
  echo "Usage: $0 [--nxt|--prv|--pause|--stop]"
  exit 1
  ;;
>>>>>>> jakoolit-configs
esac
