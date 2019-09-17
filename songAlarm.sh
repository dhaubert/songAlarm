#!/bin/bash
if ! [ -x "$(command -v amixer)" ]; then
  echo 'Error: amixer is not installed. Installing it using apt-get install alsa-utils.' >&2
  exit 1
fi
if ! [ -x "$(command -v mplayer)" ]; then
  echo 'Error: mplayer is not installed. Installing it using apt-get install mplayer.' >&2
  exit 1
fi
echo 'Setting volume to 100%'
amixer -c 0 set Master playback 100% unmute
amixer -c 0 set Speaker playback 100% unmute
amixer -c 0 set Headphone playback 100% unmute
#amixer sset 'Master' 100%
echo 'Playing song at $1'
mplayer $1
echo 'Muting volume'
amixer -c 0 set Master playback 0% mute
amixer -c 0 set Headphone playback 0% mute
amixer -c 0 set Speaker playback 0% mute
