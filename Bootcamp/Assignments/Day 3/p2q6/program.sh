printf "\n1) Print Employee Name and Total Pay who has Base Pay greater than 100000 : \n\n"
tail -11 data.csv | awk '{if ($4 > 100000) {print $2 " has a total salary of: " $7}}'

printf "\n2) What is the aggregate Total Pay of employees who's job title is CAPTAIN : "
cat data.csv | grep -i captain | awk '{sum+=$7}{count+=1}END{print sum/count}'

printf "\n3) Print Job Title and Overtime Pay who has Overtime Pay in between 7000 and 10000 : \n\n"
tail -11 data.csv | awk '{if ($5 > 7000 && $5 < 10000) {print $3 " has an Overtime Pay of: " $5}}'

printf "\n4) Print Average Base Pay : "
tail -11 data.csv | awk '{sum+=$4}{count+=1}END{print sum/count}'
