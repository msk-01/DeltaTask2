sudo usermod -a -G ArmyGeneral,NavyMarshal,AirForceChief ChiefCommander
sudo chmod 770 -R /home/ChiefCommander
sudo chmod 770 -R /home/ArmyGeneral
sudo chmod 770 -R /home/NavyMarshal
sudo chmod 770 -R /home/AirForceChief
sudo chown ArmyGeneral:ArmyGeneral /home/ArmyGeneral
sudo chown NavyMarshal:NavyMarshal /home/NavyMarshal
sudo chown AirForceChief:AirForceChief /home/AirForceChief
for ((i=1;i<51;i++)); do
sudo chown Army${i}:ArmyGeneral -R /home/Army${i}
sudo chmod 770 -R /home/Army${i}
done
for ((i=1;i<51;i++)); do
sudo chown Navy${i}:NavyMarshal -R /home/Navy${i}
sudo chmod 770 -R /home/Navy${i}
done
for ((i=1;i<51;i++)); do
sudo chown AirForce${i}:AirForceChief -R /home/AirForce${i}
sudo chmod 770 -R /home/AirForce${i}
done






