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
for i in 1 2 3
do
	echo "Some another lines with num $i" >> $file
done

for((i=0; i<"$countFirst"; i++))
do
	echo $(date +%s%N) >> $file
done

echo "And another conflicts line" >> $file

for i in 1 2 3 4 5
do
	echo "My new line $i" >> $file
done

for((i=0; i<"$countSecond" ;i++))
do
	echo $(date +%s%N) >> $file
done

echo "End file $file" >> $file
