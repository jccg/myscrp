for FILE in `cat list.txt`;
do echo ${FILE};
`sh 720run.sh ${FILE}`
done

