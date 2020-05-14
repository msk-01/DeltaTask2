wget https://inductions.delta.nitt.edu/sysad-task1-attendance.log
ABC=$(date "+%Y-%m-%d")
DEF="RECORD"
read REC
if [ ${REC}=${DEF}0 ]; then 
SUNDAY=$(date "+%Y-%m-%d" --date="last sunday")
echo $(cat /home/$USER/attendance_record | grep "${SUNDAY}") 
elif [ ${REC}=${DEF}1]; then 
MONDAY=$(date "+%Y-%m-%d" --date="last monday")
echo $(cat /home/$USER/attendance_record | grep "${MONDAY}") 
  
elif [ ${REC}=${DEF}2]; then 
TUESDAY=$(date "+%Y-%m-%d" --date="last tuesday")
echo $(cat /home/$USER/attendance_record | grep "${TUESDAY}") 
 
elif [ ${REC}=${DEF}3]; then 
WEDNESDAY=$(date "+%Y-%m-%d" --date="last wednesday")
echo $(cat /home/$USER/attendance_record | grep "${WEDNESDAY}") 

elif [ ${REC}=${DEF}4]; then 
THURSDAY=$(date "+%Y-%m-%d" --date="last thursday")
echo $(cat /home/$USER/attendance_record | grep "${THURSDAY}") 
  
elif [ ${REC}=${DEF}5]; then 
FRIDAY=$(date "+%Y-%m-%d" --date="last friday")
echo $(cat /home/$USER/attendance_record | grep "${FRIDAY}") 

elif [ ${REC}=${DEF}6]; then 
SATURDAY=$(date "+%Y-%m-%d" --date="last saturday")
echo $(cat /home/$USER/attendance_record | grep "${SATURDAY}") 
 
else
echo "Wrong input"
fi 
