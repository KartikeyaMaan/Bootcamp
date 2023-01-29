if [ set | grep -q "usersecret=" -eq 0 ]
then
	printf "error!!! already set"
else
	env usersecret="dH34xJaa23"
	printf "usersecret set"
fi
