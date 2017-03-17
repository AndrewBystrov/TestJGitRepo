#define
file=$(sed "s/sh/txt/g" <<<$0)
dateVar=$(date +%s%N)
count=$1

echo "Start file $file" > $file
#for i in {1.."$count"}
for((i=0;i<"$count";i++))
do
	echo $(date +%s%N) >> $file
done

echo "And another conflicts line" >> $file

for i in 1 2 3
do
	echo "Some another lines" >> $file
done

for((i=0;i<"$count";i++))
do
	echo $(date +%s%N) >> $file
done

for i in 1 2 3 4 5
do
	echo "My new li" >> $file
done
echo "End file $file" >> $file

