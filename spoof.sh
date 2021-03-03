#/bin/bash

#Variables

default="\e[39m"
yellow="\e[33m"
red="\e[31m"
green='\033[0;32m'
lightyellow="\e[93m"
cyan="\e[36m"

#Dependency check

curl=/usr/bin/curl
toilet=/usr/bin/toilet
a=y

#Curl
echo ""
echo -e "${yellow}[+] Checking your installation , Please wait . . ."
echo ""
echo -e "[+] Checking curl . . ."
if test -f "$curl"; then
	echo ""
    echo "[+] Curl is already installed (✓)"
    echo ""
  else
  	echo ""
  echo -e "${red}[-]error! Curl is not installed.(x)"
  echo -e "${lightyellow}"
read -p "[?] Do you want to install curl ? (y/n) "option
if [[ $option == $a ]]
 then
 	echo ""
echo -e "${green}[+] Installing curl, Please wait . . . "
sudo apt-get install curl -y
echo ""
echo -e "${yellow}[+] Successfully Installed curl"
echo ""
else
	 echo ""
	 echo -e "${red}[-] error, curl is required , exiting . . ."
 exit
fi
fi
#toilet

echo -e "${green}[+] Checking toilet . . ."
if test -f "$toilet"; then
     echo ""
     echo "[+] toilet is already installed (✓)"
     clear
   else
   	   echo ""
       echo -e "${red}[-]error! toilet is not installed (x) "
   echo -e "${lightyellow}"
   read -p "[?] Do you want to install toilet (y/n) " option
if [[ $option == $a ]]
 then
echo -e "${green}[+] Installing toilet, Please wait . . . "
sudo apt-get install toilet -y
echo ""
echo -e "${yellow}[+] Successfully Installed toilet"
clear
fi
fi

echo -e "${cyan}                           Let's begin the fun \e[5m^.^"

#Banner 

toilet -f mono12 -F metal Smspoof
echo -e "${yellow}                                                          -> coded by Mr. Odball"

#Main Function
echo ""
echo -e "${green}[+] Note :- You can send only one sms to a specific no. in every 24 hrs."
echo ""
echo -e "${green}[+] Please, enter the Phone no. of your recipent with country code (+)"
echo ""
read -p "-> " phone 
echo ""
echo -e "${yellow}[+] Now enter your message e.g. -> [hello elliot]"
echo ""
read -p "-> " message
echo ""
echo -e "${green}[+] Let me do the rest . . ."
echo ""

#Output
curl -X POST https://textbelt.com/text \
       --data-urlencode phone=$phone \
       --data-urlencode message="$message" \
       -d key=textbelt
echo"${default}"
#Don't copy my code withouth giving credits , Thanks :D
