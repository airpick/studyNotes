#! /bin/bash
# Section 3, Exercise 2
# This script will create an executable script whose name is decided by the user. 

mkdir TempFolder-Script04
cd TempFolder-Script04
echo "What would you like the name of your new script to be? "
read newScript
touch ${newScript}.sh
echo "#! /bin/bash" >> ${newScript}.sh
createdDate=${date}
echo "# This script was created/appended on $createdDate by Script04-Sect3Ex2.sh" >> ${newScript}.sh
chmod 744 ${newScript}.sh
echo "Done!"