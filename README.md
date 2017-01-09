# bhSlack
watch calendar events then send reminders

# how does the bot work?
* systemd provides the scheduling option for the service to execute once daily
* using gcalcli, looks at the daily calendar events and parses out the times for events that contain 'DUQs stand-up'
* iterates over the array of times and passes the command.sh to the linux utility 'at' ('at' executes a bash process at a specific time
* slacktee is the method to interface with the slack api to post the reminder to a specified channel

# Install
* instally [gcalcli](https://github.com/insanum/gcalcli) & authenticate with google
* download slacktee script and add webhook url to config file: [Slacktee](https://github.com/course-hero/slacktee)
* clone repostitory and cd into directory
* replace ExecStart path in standup.service to match repository location
```bash
cp standup.* /etc/systemd/system/standup.*
systemclt daemon-reload
systemctl enable standup.timer
systemctl start standup.timer```
