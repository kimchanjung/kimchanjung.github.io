git checkout source
git branch -D master
git checkout -b master
cp .gitignore _site
git filter-branch --subdirectory-filter _site/ -f
git push --all
git checkout source
