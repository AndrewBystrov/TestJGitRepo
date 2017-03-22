dateVar=$(date +%s%N)
file="File$dateVar"

touch "$file"

git add "$file"
git commit -m "Add file $file" "$file"
git push origin master

rm "$file"
