#!/bin/bash

for((i=1;i<51;i++));do
{
mkdir /var/www/Army${i} /var/www/Navy${i} /var/www/AirForce${i}
echo "<html>
<head><title>Army${i}</title></head>
<h1>Hello Army${i}</h1>
</html>" > /var/www/Army${i}/index.html

echo "<html>
<head><title>Navy${i}</title></head>
<h1>Hello Navy${i}</h1>
</html>" > /var/www/Navy${i}/index.html

echo "<html>
<head><title>AirForce${i}</title></head>
<h1>Hello AirForce${i}</h1>
</html>" > /var/www/AirForce${i}/index.html
}
 
done


mkdir /var/www/ChiefCommander /var/www/ArmyGeneral /var/www/NavyMarshal /var/www/AirForceChief

echo "<html>
<head><title>ChiefCommander</title></head>
<h1>Hello ChiefCommander</h1>
<h2>Attendance Report</h2>
<embed src="attendance_report" 
       width="100%" 
       height="100%">
</html>"> /var/www/ChiefCommander/index.html

echo "<html>
<head><title>ArmyGeneral</title></head>
<h1>Hello ArmyGeneral</h1>
</html>" > /var/www/ArmyGeneral/index.html

echo "<html>
<head><title>NavyMarshal</title></head>
<h1>Hello Navy Marshal</h1>
</html>" > /var/www/NavyMarshal/index.html

echo "<html>
<head><title>AirForceChief</title></head>
<h1>Hello AirForceChief</h1>
</html>" > /var/www/AirForceChief/index.html
