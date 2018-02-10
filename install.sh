#!/bin/bash
echo -e " \e[1;33mDo You Want To Install it ? (Y)Yes / (N)No\e[0m " 
read answer2
if echo "$answer2" | grep -iq "^y";then
		cp  -r updater /usr/bin/
	echo " Copying file into /usr/bin/..."
else exit 1
	fi 
if [ -f "/usr/bin/updater" ]
then 
echo   -e "         \e[1;31mInstallation Has Been Completed !\e[0m    "  
echo -e " \e[1;31mLater You Can Run From Terminal by Typing 'updater' \e[0m"
else 
	echo  "         Make Sure You Have  /usr/bin/ !        "   
	fi 

	echo -e " \e[1;33mDo You Want To Update Now ? (Y)Yes / (N)No\e[0m " 


read answer
if echo "$answer" | grep -iq "^y";then
    bash /usr/bin/updater
else
    exit 1
fi

 	







