#!/bin/sh

echo lualatex run 1/3
lualatex presentation.tex
echo biber run
biber presentation >/dev/null
echo lualatex run 2
lualatex presentation.tex >/dev/null
echo final lualatex run
lualatex presentation.tex >/dev/null
echo copying it and pushing it to the website
cp presentation.pdf /Users/nielsdoorn/PhD/nielsdoorn.github.io/INTED2024.pdf
git commit -a -m "update presentation INTED2024"
git push
cd /Users/nielsdoorn/PhD/nielsdoorn.github.io/
git commit -a -m "update presentation INTED2024"
git push
echo done.