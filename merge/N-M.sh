#define
file=$(sed "s/sh/txt/g" <<<$0)
dateVar=$(date +%s%N)
if [ "$pwd" == *GIT_1* ]
then
	count=$2
else
	count=$1
fi

echo "Start file $file" > $file

for((i=0; i<"$count"; i++))
do
	echo $(date +%s%N) >> $file
done

echo "End file $file" >> $file
