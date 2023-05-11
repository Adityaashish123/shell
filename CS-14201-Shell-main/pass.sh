read -p "Enter your password : " str
echo

if [ ${#str} -lt 8 ]; then
	echo "Weak Password"
	exit 1
fi

if ! [[ $str =~ [a-z] && $str =~ [A-Z] && $str =~ [0-9] ]]; then
	echo "Weak Password"
	exit 1
fi

echo "Strong Password"
