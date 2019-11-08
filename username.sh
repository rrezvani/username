#! /bin/bash
# username.sh
# Romtin Rezvani
echo "Enter a password using only lowercase letters, digits, and the underscore symbol. Your first character must be a letter and it can be 3-12 characters wrong: "
read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][a-z0-9_]{2-12}$" > /dev/null 2>&1
do
	echo "You must enter a valid password! Please try again."
	echo "Enter another password: "
	read USERNAME
done
echo "Thank you"
