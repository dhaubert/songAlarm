### Song Alarm

Plays mp3 songs on Ubuntu from command line.
It raises the audio before playing the song and mute after.

Best indicated to use in crontabs.

## Usage
`chmod +x songAlarm.sh`
`./songAlarm.sh /home/myUser/media/mySong.mp3`

or install it on your crontab


* 7 * * 1-5 /opt/songAlarm.sh /home/media/wakeUp.mp3
