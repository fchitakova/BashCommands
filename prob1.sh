#Prob1 Create a command procedure which checks if the parameter is an user who is active now. If it is not active 
#the procedure periodically checks if the user has logged in and if so prints that information 

if who | grep $1
then echo "$1 has started a session"
else
until who | grep $1
do
   sleep 10
done
echo "$1 just started a session!"
fi