for FILE in `cat list.txt`;
do echo ${FILE};
`sh ha720run.sh ${FILE}`
done

