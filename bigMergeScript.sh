#define variable
N=10
M=3
pwd="$(pwd)"

if [ -n "$1" ]
then
	N="$1"
fi

if [ -n "$2" ]
then
	M="$2"
fi

echo "N=$N , M=$M"

for i in $(ls merge)
do
	if [[ "$i" != *.txt ]]
	then
		./merge/$i "$N" "$M"
	fi
done

#collect all files
echo 'Start collect all files...'
for i in $(ls merge)
do
	if [[ "$i" != *.sh ]]
	then
		git add "merge/$i"
	fi
done

allFiles=""
for i in $(ls merge | grep txt)
do
	allFiles="$allFiles merge/$i"
done

git commit -m "Add merged files with N=$N and M=$M" $allFiles

echo "All files [\e[0;32m$allFiles]  are commited. You may push your changes"
