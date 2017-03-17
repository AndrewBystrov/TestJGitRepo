#define
file=$(sed "s/sh/txt/g" <<<$0)
dateVar=$(date +%s%N)
count=$1

echo "Start file $file" > $file
for i in {1.."$count"}
do
	echo $(date +%s%N) >> $file
done

echo "End file $file" >> $file
