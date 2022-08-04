wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm.tgz > /dev/null 2>&1
if [[ -e ngrok-v3-stable-linux-arm.tgz ]]; then
untar -xf ngrok-v3-stable-linux-arm.tgz  > /dev/null 2>&1
rm -rf $HOME/.ngrok2 > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-v3-stable-linux-arm.tgz
fi
