#! /bin/bash
# username.sh
# Romtin Rezvani
echo "Enter a password using only lowercase letters, digits, and the underscore symbol. Your first character must be a letter and it can be 3-12 characters wrong: "
read NAME
while echo "$NAME" | egrep -v "^[a-z]{1}[a-z0-9_]{3,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid password! Please try again."
	read NAME
done
echo "Thank you"
