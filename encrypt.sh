DIR="./entries/"

ls $DIR | while read -r file;
do openssl des3 -in $DIR$file -pass pass:$PASSWORD > $DIR$file.encrypted;
done
