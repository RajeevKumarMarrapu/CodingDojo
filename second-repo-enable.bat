attrib -h .git
ren .git .git_
attrib +h .git_
ren .gitignore .gitignore_

cd repo
attrib -h .git_
ren .git_ .git
attrib +h .git
ren .gitignore_ .gitignore
cd ../..

cd games
attrib -h .git_
ren .git_ .git
attrib +h .git
ren .gitignore_ .gitignore