
sudo useradd ChiefCommander -m -s /bin/bash
sudo useradd ArmyGeneral -m -s /bin/bash
sudo useradd NavyMarshal -m -s /bin/bash
sudo useradd AirForceChief -m -s /bin/bash
 for((i=1;i<51;i++)); do
 sudo useradd Army${i} -m -s /bin/bash
done  
for((i=1;i<51;i++)); do
 
 sudo useradd Navy${i} -m -s /bin/bash
done        
for((i=1;i<51;i++)); do

 sudo useradd AirForce${i} -m -s /bin/bash
done        
      


