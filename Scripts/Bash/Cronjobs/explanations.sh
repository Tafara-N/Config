#!/usr/bin/bash

: '
Cronjobs are scheduled tasks that run at specific intervals. They are useful for automating repetitive tasks.

Cronjobs are scheduled using the crontab command. The crontab command is used to view, create, and edit cronjobs.

crontab -l
==========
This shows the jobs a user has

crontab -e
==========
This opens the user`s crontab file in the text editor of your choice if there are options to choose from

sudo crontab -u root -e
=======================
This opens the root user`s crontab file in the text editor of your choice if there are options to choose from

sudo crontab -u root -l
=======================
This shows the root user`s crontab file

crontab -r
==========
This removes the user`s crontab file

After opening the file, it opens in a /tmp/ directory the file that we will be editing is actually a temp file.

If all the changes and tasks we defined are valid then it is copied and run in the main file

We can multiple commands pby passing a file for cron to run

We can have the output of the commands ran redirected to anothor file as well


Structure
=========
For example, you can run a backup of all your user accounts at 5 a.m every week with:
0 5 * * 1 tar -zcf /var/backups/home.tgz /home/

For more information see the manual pages of crontab(5) and cron(8)

m h  dom mon dow   command

Description
===========
m - Minute
h - Hour
dom - Day of the month
mon - Month
dow - Day of the week
command - Command to run

--------------------------

m h  dom mon dow   command

* *  *  *    *     command to be executed
=========================================
This runs the command every minute

* 11  *  *    *     command to be executed
==========================================
This runs the command at 11:00 every day

* 11  *  *    4     command to be executed
==========================================
This runs the command at 11:00 every Thursday

5 *  *  *    *     command to be executed
=========================================
This runs the command everytime the minute field is 5 eg 1:05

5 10  *  *    *     command to be executed
==========================================
This runs the command everyday at at 10:05

5 10  15  *    *     command to be executed
===========================================
This runs the command on the 15th of every month at 10:05

5 10  15  1    *     command to be executed
===========================================
This runs the command on the 15th of January at 10:05

5 10  *  *  1-5    command to be executed
=========================================
This runs the command at 10:05 on weekdays

Other ways
==========
@reboot - Run once, at startup
@yearly/annually - Run once a year
@monthly - Run once a month
@weekly - Run once a week
@daily - Run once a day
@midnight - Run once a day, at midnight
@hourly - Run once an hour

Examples:
=========
@reboot /path/to/script.sh
@hourly command to be executed

Example:
========
# Print hello every minute and save it to a file
* * * * * echo "hello" >> /home/tafara/hello.txt
* * * * * date >> /home/tafara/hello.txt

Passing a file as commands
==========================
We can pass a file to cron to run the commands in the file

crontab /path/to/file

To disable email notifications, add the following line to the top of the crontab file:
MAILTO="

'
