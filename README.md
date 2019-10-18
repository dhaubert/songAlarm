### Song Alarm

Plays mp3 songs on Ubuntu from command line.
It raises the audio before playing the song and mute after.

Best indicated to use in crontabs.

## Usage

Allow script execution
`chmod +x songAlarm.sh`

Run it
`./songAlarm.sh /home/myUser/media/mySong.mp3`

or install it on your crontab (linux)

Open crontab for edition
`crontab -e`

Add the following line to the file, then save it.
`* 7 * * 1-5 /opt/songAlarm.sh /home/media/wakeUp.mp3`
