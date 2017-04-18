for FILE in `cat list.txt`;
do echo ${FILE};
`sh r10.sh ${FILE} $1 $2`
done
