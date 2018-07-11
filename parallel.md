parallel -j16 --eta -a todown -n1 ./src/xvideos-dl \"{}\"
parallel -j16 -a todown -n1 sleep 1\; echo \"{}\"

