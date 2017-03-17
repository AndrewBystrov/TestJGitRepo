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
		#TODO think about it
		#if [[ $(pwd) == *GIT_1* ]]
		#then
			./merge/$i "$N" "$M"
		#else
		#	./merge/$i "$M"
		#fi
	fi
done

#collect all files
echo 'Start collect all files...'
for i in $(ls merge)
do
	if [[ "$i" != *.sh ]]
	then
		git add "merge/$i"
		git commit --amend "merge/$i" -m "Add merged files with N=$N and M=$M"
	fi
done
echo 'All files are commited. You may push your changes'
