wget https://inductions.delta.nitt.edu/sysad-task1-attendance.log
ABC=$(date "+%Y-%m-%d")
for ((i=1;i<51;i++));do
DEF=$(cat sysad-task1-attendance.log | awk '{print $1}' | sed -n ${i}p sysad-task1-attendance.log)
if [[ "$ABC" > "$DEF" ]] ;
then
sudo cat sysad-task1-attendance.log | grep "Army"| grep "${ABC}" | grep "YES"  > /home/ArmyGeneral/attendance_record.txt
sudo cat sysad-task1-attendance.log | grep "Navy" | grep "${ABC}"| grep "YES"  > /home/NavyMarshal/attendance_record.txt
sudo cat sysad-task1-attendance.log | grep "AirForce$" | grep "${ABC}"| grep "YES"  > /home/AirForceChief/attendance_record.txt

fi
done
