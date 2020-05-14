wget https://inductions.delta.nitt.edu/sysad-task1-attendance.log
sudo touch /home/ArmyGeneral/attendance_record.txt
sudo chmod o+w /home/ArmyGeneral/attendance_record.txt
sudo touch /home/NavyMarshal/attendance_record.txt
sudo chmod o+w /home/NavyMarshal/attendance_record.txt
sudo touch /home/AirForceChief/attendance_record.txt
sudo chmod o+w /home/AirForceChief/attendance_record.txt
ABC=$(date "+%Y-%m-%d")
sudo cat sysad-task1-attendance.log | grep "Army"| grep "${ABC}" | grep "YES"  > /home/ArmyGeneral/attendance_record.txt
sudo cat sysad-task1-attendance.log | grep "Navy" | grep "${ABC}"| grep "YES"  > /home/NavyMarshal/attendance_record.txt
sudo cat sysad-task1-attendance.log | grep "AirForce$" | grep "${ABC}"| grep "YES"  > /home/AirForceChief/attendance_record.txt



