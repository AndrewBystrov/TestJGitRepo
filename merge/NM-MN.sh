#define
file=$(sed "s/sh/txt/g" <<<$0)
dateVar=$(date +%s%N)

if [ "$pwd" == *GIT_1* ]
then
	countFirst=$2
	countSecond=$1
else
	countFirst=$1
	countSecond=$2
fi

echo "Start file $file" > $file
for i in {1.."$countFirst"}
do
	echo $(date +%s%N) >> $file
done

echo "And another conflicts line" >> $file
for i in {1.."$countSecond"}
do
	echo $(date +%s%N) >> $file
done

echo "End file $file" >> $file