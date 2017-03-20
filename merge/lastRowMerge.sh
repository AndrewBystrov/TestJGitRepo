#define
file=$(sed "s/sh/txt/g" <<<$0)
dateVar=$(date +%s%N)

if [[ "$(pwd)" == *GIT_1* ]]
then
	countSecond=$2
else
	countSecond=$1
fi
countFirst=$1;

echo "Start file $file" > $file

for((i=0; i<"$countFirst"; i++))
do
	echo $(date +%s%N) >> $file
done

