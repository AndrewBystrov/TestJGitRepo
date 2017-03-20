#define
file=$(sed "s/sh/txt/g" <<<$0)
dateVar=$(date +%s%N)

if [[ "$(pwd)" == *GIT_1* ]]
then
	countFirst=$2
	countSecond=$1
else
	countFirst=$1
	countSecond=$2
fi

echo "Start file $file" > $file
for i in 1 2 3
do
	echo "Some another lines $i" >> $file
done

for((i=0; i<"$countFirst"; i++))
do
	echo $(date +%s%N) >> $file
done

echo "And another conflicts line" >> $file

for i in 1 2 3 4 5
do
	echo "My new li $i" >> $file
done

for((i=0; i<"$countSecond"; i++))
do
	echo $(date +%s%N) >> $file
done

echo "End file $file" >> $file
