for FILE in `cat list.txt`;
do echo ${FILE};
`sh 480run.sh ${FILE}`
done

