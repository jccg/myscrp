for FILE in `cat list.txt`;
do echo ${FILE};
arr=$(echo $test|tr "," "\n")
echo 'sh runone.sh ${arr[0]} ${arr[1]}'
`sh runone.sh ${arr[0]} ${arr[1]}`
done

