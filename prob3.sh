#command procedure which arguments are ser ids
#the procedure reads string from standart input and sends it to the users which are active at that moment

read string

echo $string > a

for i in $*
do
   if who | grep $i
     then write $i < a
   fi
done
