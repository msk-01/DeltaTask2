#!/bin/bash
sudo chmod 777 -R /home/ChiefCommander
cp -f /home/$USER/Desktop/DeltaTask1/attendance.log /home/ChiefCommander/attendance.log
cp -f /home/$USER/Desktop/DeltaTask1/attendance.sh /home/ChiefCommander/attendance.sh
cd /home/ChiefCommander
sudo chown ChiefCommander attendance.log
sudo chown ChiefCommander attendance.sh
sudo chmod 777 finalattend.sh
./attendance.sh
sudo chown ChiefCommander attendance_report

sudo crontab -u ChiefCommander -l > cronChange
echo "@daily /home/ChiefCommander/post.sh" >> cronChange
sort -u cronChange > cronChange1
sudo crontab -u ChiefCommander cronUpdaterF
sudo rm cronChange
sudo rm cronChange1
cd /home/$USER/Desktop/DeltaTask1/
sudo chmod 770 -R /home/ChiefCommander

