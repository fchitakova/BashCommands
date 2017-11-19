#command procedure which arguments are existing files
#the procedure reads from standart input string and prints how many times every file(from the argument list) contains it

read str
for i in $*
do
  echo $str occurs in $i `grep $str $i | wc -l` times
done
