#define
file=$(sed "s/sh/txt/g" <<<$0)
dateVar=$(date +%s%N)
count=$1

space=""
if [[ "$(pwd)" == *GIT_1* ]]
then
	space="    "
else
	space="         "
fi


echo "Start file $file" > $file
echo "Start file $file" >> $file
for((i=0; i<"$count"; i++))
do
	echo "$space$(date +%s%N)" >> $file
done

for i in {1..10000}
do
	echo "$space super very very big line with some characters and i don't know what i can write here for long long line" >> $file
done
