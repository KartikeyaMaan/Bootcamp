for files in *.log.1
do
	printf "\n"
	echo $files
	Name=`echo $files | awk -F. '{print $1}'`
	Date=23012023
        Ext=`echo $files | awk -F. '{print $2}'`
	Ans="$Name$Date.$Ext"
	mv $files $Ans
	echo $Ans
done

