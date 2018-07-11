ftp -n << END
open bob
user anonymous anonymous
cd wwwroot
put $1
del $1
exit
END

