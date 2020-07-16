#! /usr/bin /env bash
# Author: duarmemek
# Usage: bash memek.sh


script_name=$(basename "${0}")
script_version="1.0.0"
script_name=$(basename "${0}")
script_version="1.0.0"

if hash whois &> /dev/null; then
    echo "whois is installed"
elif hash jwhois &> /dev/null; then
    echo "jwhois is installed"
else
    echo "jwhois and whois belum di install cok install dulu caranya liat di google yaa.. :V"
    echo "sc keluar dulu belajar dulu sono bego"
    exit 100
fi

echo -e ""
echo -e "\e[32m##############################################\e[0m"
echo -e "\e[32m# \e[31m          IP SCRAPER BY DUARMEMEK          #\e[0m"
echo -e "\e[32m# \e[31m              MABOK HELA ATUH              #\e[0m"
echo -e "\e[32m##############################################\e[0m"

while read asu; do
	whois -h whois.radb.net -- "-i origin ${1:-$asu}" | grep -Eo "([0-9.]+){4}/[0-9]+" >> memek.lst
	echo -e "$asu <-- masuk ke list"
done < asu.txt
echo -e ""
echo -e "\e[34mAll ip memek di simppan ke memek.lst ya bye kontol \e[0m"