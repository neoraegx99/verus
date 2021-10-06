#!/bin/bash

termux-setup-storage

pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh

./start-ubuntu.sh

apt-get update && apt-get upgrade -y

apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y git -y

git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git

cd ccminer

chmod +x build.sh

chmod +x configure.sh

chmod +x autogen.sh

./build.sh

./ccminer -a verus -o stratum+tcp://ap.luckpool.net:3956 -u RRTFMWE2KgDijUPRc6YVDMjvkMfSf9F5NC.Redmi_note_8_pro -p hybrid -t 3