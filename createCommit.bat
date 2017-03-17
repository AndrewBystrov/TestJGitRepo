SET q=%time%
echo %q% > 1.txt
git add 1.txt
git commit -m "%q%" 1.txt
exit
