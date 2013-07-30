###########################################
#                 COLORS                  #
# ======================================= #
# Black       0;30     Dark Gray     1;30 #
# Blue        0;34     Light Blue    1;34 #
# Gre[n       0;32     Light Gre[n   1;32 #
# Cyan        0;36     Light Cyan    1;36 #
# Red         0;31     Light Red     1;31 #
# Purple      0;35     Light Purple  1;35 #
# Brown       0;33     Yellow        1;33 #
# Light Gray  0;37     White         1;37 #
###########################################


Red="\e[0;31m"
Yellow="\e[1;33m"
Green="\e[0;32m"
Blue="\e[0;34m"
Purple="\e[0;35m"
Black="\e[0;30m"
Cyan="\e[0;36m"
Brown="\e[0;33m"
LightGray="\e[0;37m"
DarkGray="\e[1;30m"
LightBlue="\e[1;34m"
LightGreen="\e[1;32m"
LightCyan="\e[1;36m"
LightRed="\e[1;31m"
LightPurple="\e[1;35m"
White="\e[1;37m"

mkdir installation/graphics
node installation/generateInstaller.js
chmod +x installation/graphics/colors.sh

sleep 1
clear
sleep 1
installation/graphics/colors.sh

echo "    ╭━━━╮╱╱╱╱╭╮╱╱╭━━━╮╱╱╭╮             "
echo "    ┃╭━╮┃╱╱╱╱┃┃╱╱┃╭━╮┃╱╱┃┃             "
echo "    ┃┃╱╰╋━━┳━╯┣━━┫┃╱╰╋━━┫┃╭━━┳━┳━━╮    "
echo "    ┃┃╱╭┫╭╮┃╭╮┃┃━┫┃╱╭┫╭╮┃┃┃╭╮┃╭┫━━┫    "
echo "    ┃╰━╯┃╰╯┃╰╯┃┃━┫╰━╯┃╰╯┃╰┫╰╯┃┃┣━━┃    "
echo "    ╰━━━┻━━┻━━┻━━┻━━━┻━━┻━┻━━┻╯╰━━╯    "
echo " ===================================== "
echo "          Aᴜᴛʜᴏʀ: Iᴏɴɪᴄᴀ Bɪᴢᴀᴜ         "
echo "             (C) CᴏᴅᴇCᴏʟᴏʀs            "

installation/graphics/colors.sh
./postinstall.sh
