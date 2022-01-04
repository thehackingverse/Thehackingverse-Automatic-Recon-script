#!/bin/bash/ 
#Copyright© by 2021 thehackingverse
#####################################################
mkdir thehackingverse ; cd thehackingverse 
sudo apt-get install lolcat
 figlet -f slant "thehackingverse" | lolcat  -a
echo "[*]: This script is used for reconing & helps you in bug bounty. [*]
[*]: This is automatic script & you have to just enter your target only once time.[*]
[*]: Sit back & relax.[*]
[*]: Join our community on discord https://discord.gg/NQgHpCbAmM [*]
[*]: Copyright© by 2021 thehackingverse[*]"
#####################################################
figlet -f slant " starting nmap" | lolcat
echo "#####################################################"
echo " [*] Enter your target domain [*]"
read a
nmap $a -oN nmap.txt
echo "#####################################################"
echo "[*] nmap finsih his job now  output is saved in thehackingverse/nmap.txt [*]"
echo "#####################################################"
#####################################################
git clone  https://github.com/projectdiscovery/subfinder.git
figlet -f slant "starting" | lolcat
subfinder -d $a -o subfind.txt
echo "#####################################################"
echo "[*] subfinder finsih his job now  output in thehackingverse/subfind.txt[*]"
echo "#####################################################"
#####################################################
git clone https://github.com/tomnomnom/waybackurls.git 
figlet -f slant  " starting waybackurls "| lolcat
cat subfind.txt | waybackurls | tee -a waybackurls.txt 
echo "#####################################################"
echo "[*] waybackurls has finish his now job output is saved in thehackingverse/waybackurls.txt[*]"
echo "#####################################################"
#####################################################
figlet -f slant " starting dirb "| lolcat
echo "#####################################################"
echo " [*] Please enter the full url of  your domain [*]"
read b
dirb $b -o dirb.txt
echo "#####################################################"
echo "[*]dirb finish his job now output in thehackingverse/dirb.txt [*]"
echo "#####################################################"
#####################################################
echo " [*] Do you want to crawl with sqlmap ('y/n') [*]"
read c
if [[ $c -eq y ]]
then 
git clone https://github.com/sqlmapproject/sqlmap.git
cd sqlmap
figlet -f slant " starting sqlmap" | lolcat
python sqlmap.py $b --crawl 3 --batch --dump-all -o sqloutpt.txt
else
figlet -f slant " thank you " | lolcat
fi
figlet -f slant " thank you " | lolcat
################################################################
