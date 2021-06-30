#!/usr/bin/bash

pkg install cmatrix -y
pkg install cowsay -y
pkg install figlet -y
pkg update -y
pkg upgrade -y
pkg install wget -y
pkg install ffmpeg libwebp -y
pkg install nodejs -y
pkg install tesseract -y
npm i node-tesseract-ocr
wget -O ~/../usr/share/tessdata/ind.traineddata "https://github.com/tesseract-ocr/tessdata/blob/master/ind.traineddata?raw=true"
npm install
npm audit fix

#!/usr/bin/bash

figlet crewbot system
echo -e "> enter to next"
read enter
clear
echo -e "\033[1;36m░░░░░░░░░░░███████░░░░░░░░░░░\033[0m"
echo -e "\033[1;36m░░░░░░░████░░░░░░░████░░░░░░░\033[0m"
echo -e "\033[1;36m░░░░░██░░░░░░░░░░░░░░░██░░░░░\033[0m"
echo -e "\033[1;36m░░░██░░░░░░░░░░░░░░░░░░░██░░░\033[0m"
echo -e "\033[1;36m░░█░░░░░░░░░░░░░░░░░░░░░░░█░░\033[0m"
echo -e "\033[1;36m░█░░████░░░░░░░░██████░░░░░█░\033[0m"
echo -e "\033[1;36m█░░█░░░██░░░░░░█░░░░███░░░░░█\033[0m"
echo -e "\033[1;36m█░█░░░░░░█░░░░░█░░░░░░░█░░░░█\033[0m"
echo -e "\033[1;36m█░█████████░░░░█████████░░░░█\033[0m"
echo -e "\033[1;36m█░░░░░░░░░░░░░░░░░░░░░░░░░░░█\033[0m"
echo -e "\033[1;36m█░░░░░░░░░░░░░░░░░░░░░░░░░░░█\033[0m"
echo -e "\033[1;36m█░░░████████████████████░░░░█\033[0m"
echo -e "\033[1;36m░█░░░█▓▓▓▓▓▓▓▓█████▓▓▓█░░░░█░\033[0m"
echo -e "\033[1;36m░█░░░░█▓▓▓▓▓██░░░░██▓██░░░░█░\033[0m"
echo -e "\033[1;36m░░█░░░░██▓▓█░░░░░░░▒██░░░░█░░\033[0m"
echo -e "\033[1;36m░░░██░░░░██░░░░░░▒██░░░░██░░░\033[0m"
echo -e "\033[1;36m░░░░░██░░░░███████░░░░██░░░░░\033[0m"
echo -e "\033[1;36m░░░░░░░███░░░░░░░░░███░░░░░░░\033[0m"
echo -e "\033[1;36m░░░░░░░░░░█████████░░░░░░░░░░\033[0m"
echo -e "\033[1;36mMau recode ya bang? Wkwkw\nSans ae bang w izinin asal kasih credit gw\033[0m"
echo -e "> enter to next"
read enter
clear
echo -e "\033[1;33mISI PERTANYAAN BERIKUT SEBELUM MENGGUNAKAN CREW BOT\033[0m\n"
echo -e "\033[1;36mSiapa Namamu?\033[0m"
echo -e "> enter to next"
read namauser
echo -e "\033[1;36mTinggal Dimana?\033[0m"
echo -e "> enter to next"
read tinggaluser
echo -e "\033[1;36mUmur Berapa?\033[0m"
echo -e "> enter to next"
read umuruser
clear
if [ $umuruser -ge 11 ]
then
echo -e "\033[1;32mAnda Mencukupi Umur Untuk Menggunakan Crew Bot\nWelcome Gunakan Crew Bot Dengan Bijak Dan Tidak Menjual Belikan Script Crew Bot\033[0m"
else
echo -e "\033[1;31mAnda Belum Mencukupi Umur Untuk Menggunakan Crew Bot\nBerjanjilah Untuk Menggunakan Crew Bot Dengan Bijak Dan Tidak Menjual Belikan Script Crew Bot\033[0m"
fi
echo -e "> enter to next"
read enter
clear
echo -e "\033[1;34m[ CREW BOT ]\033[0m"
echo -e "\033[1;35mReport Bug\033[0m"
echo "https://wa.me/6285866295942"
echo -e "\033[1;35mInstagram\033[0m"
echo "https://instagram.com/denssptraa"
echo -e "\033[1;35mYouTube Channel\033[0m"
echo "https://youtube.com/channel/UCdAlsvg9B6llWCWV8JMNhug\n"
echo -e "\033[1;34m[ INFO ]\033[0m"
echo -e "\033[1;35mNama : \033[0m""$namauser"
echo -e "\033[1;35mUmur : \033[0m""$umuruser"
echo -e "\033[1;35mAsal : \033[0m""$tinggaluser\n"
echo -e "\033[1;33mCREW BOT BERHASIL DI INSTALL KETIK NPM START UNTUK MENJALANKAN CREW BOT\033[0m"
echo -e "> enter to next"
read enter
clear
cowsay welcome $namauser gunain botnya yg bener ya ajg klo ada bug/error langsung lapor owner https://wa.me/6285866295942
echo -e "> enter to next"
read enter
clear
cmatrix