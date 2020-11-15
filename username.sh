#! /bin/bash
# username.sh
# "Sarah Fieck"
echo "Enter a username: "
echo "Use lower case characters, digits, and underscores."
echo "It must start with a lower case character"
echo "It must contain at least three but not more than twelve characters!"

read USERNAME
while echo "$USERNAME" | egrep -v "^[abcdefghijklmnopqrstuvwxyz, 0-9, _]{3,4,5,6,7,8,9,10,11,12}$" > /dev/null 2>&1
do
	echo "You must enter a valid username code - refer to the parameters!"
	echo "Enter username: "
	read USERNAME
done
echo "Thank you"
