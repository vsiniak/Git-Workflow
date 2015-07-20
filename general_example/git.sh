rm -rf repo
mkdir repo
cd repo
git init

touch m1
git add .
git commit -m 'initial commit'
git checkout -b dev

git checkout -b login
touch m2
git add .
git commit -m 'implemented login screen'
touch m3
git add .
git commit -m 'implemented login logic'

git checkout dev
git merge --no-ff login -m 'merged branch login into dev'

git checkout -b profile
touch m4
git add .
git commit -m 'implemented profile screen'
touch m5
git add .
git commit -m 'implemented profile logic'

git checkout dev
git merge --no-ff profile -m 'merged branch profile into dev'

git checkout master
git merge --no-ff dev -m 'added login & profile features'

git checkout dev
git checkout -b profile_editing
touch m6
git add .
git commit -m 'implemented profile photo editing'
touch m7
git add .
git commit -m 'implemented profile name editing'

git checkout dev
git checkout -b login_fix
touch m8
git add .
git commit -m 'fixed crash on incorrect password'

git checkout dev
git merge --no-ff login_fix -m 'merged branch login_fix into dev'
git merge --no-ff profile_editing -m 'merged branch profile_editing into dev'

git checkout master
git merge --no-ff dev -m 'added profile editing; fixed login crash'