wget https://inductions.delta.nitt.edu/sysad-task1-position.log
sudo chmod 777 -R /home/ChiefCommander
cp -f /home/$USER/Desktop/DeltaTask1/position.log /home/ChiefCommander/position.log
cd /home/ChiefCommander
sudo chown ChiefCommander position.log
for ((i=1;i<2;i++)); do

sudo chmod 777 -R /home/Army${i}/post_allotted.txt
sudo touch /home/Army${i}/post_allotted.txt
sudo chown Army${i}:ArmyGeneral /home/Army${i}/post_alotted
done
for ((i=1;i<2;i++)); do

sudo chmod 777 -R /home/Navy${i}/post_allotted.txt
sudo touch /home/Navy${i}/post_allotted.txt
sudo chown Navy${i}:NavyMarshal /home/Navy${i}/post_alotted
done
for ((i=1;i<2;i++)); do

sudo chmod 777 -R /home/AirForce${i}/post_allotted.txt
sudo touch /home/AirForce${i}/post_allotted.txt
sudo chown AirForce${i}:AirForceChief /home/AirForce${i}/post_alotted
done
for ((i=1;i<50;i++)); do
sudo chmod 770 -R /home/Army${i} 
sudo chmod 770 -R /home/Navy${i} 
sudo chmod 770 -R /home/AirForce${i} 
done
echo " !/bin/bash
cd /home/ChiefCommander
ABC=$(date "+%Y-%m-%d")
for ((i=1;i<2;i++)); do
sudo cat sysad-task1-position.log | grep -w "Army${i}" | grep "${ABC}" > /home/Army${i}/post_allotted.txt
done


for ((i=1;i<2;i++)); do
sudo cat sysad-task1-position.log | grep -w "Navy${i}" | grep "${ABC}" > /home/Navy${i}/post_allotted.txt
done

for ((i=1;i<2;i++)); do
sudo cat sysad-task1-position.log | grep -w "AirForce${i}" | grep "${ABC}" > /home/AirForce${i}/post_allotted.txt
done " > auto.sh
sudo chown ChiefCommander auto.sh
sudo chmod 770 auto.sh
sudo crontab -u ChiefCommander -l > cronChange
echo "@daily /home/ChiefCommander/post.sh" >> cronChange
sort -u cronChange > cronChange1
sudo crontab -u ChiefCommander cronUpdaterF
sudo rm cronChange
sudo rm cronChange1
cd /home/$USER/Desktop/deltatasks/
sudo chmod 770 -R /home/ChiefCommander

