rm -rf repo
mkdir repo
cd repo
git init

touch m1
git add .
git commit -m 'initial commit'
git checkout -b dev

git checkout -b login

git checkout -b login_api
touch m2
git add .
git commit -m 'calling /api/login method'
touch m3
git add .
git commit -m 'calling /api/logout method'

git checkout login
git merge --no-ff login_api -m 'merged branch login_api into login'

git checkout -b login_ui
touch m4
git add .
git commit -m 'implemented login screen'
touch m5
git add .
git commit -m 'implemented logout screen'

git checkout login
git merge --no-ff login_ui -m 'merged branch login_ui into login'

git checkout -b login_logic
touch m6
git add .
git commit -m 'storing auth token locally'
touch m7
git add .
git commit -m 'including auth token into web requests headers'
touch m8
git add .
git commit -m 'showing login screen for unlogined user'

git checkout login
git merge --no-ff login_logic -m 'merged branch login_logic into login'

git checkout dev
git merge --no-ff login -m 'merged branch login into dev'

git checkout master
git merge --no-ff dev -m 'implemented login'