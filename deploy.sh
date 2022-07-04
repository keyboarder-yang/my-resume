
#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
#cd docs/.vitepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
# 删除远程分支
#git push origin --delete gh-pages
git init
git add -A
git commit -m '部署'
#git subtree push --prefix dist origin gh-pages
# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main
# just a example, please change the follow line with your github account!!!
git push -f  https://github.com/keyboarder-yang/vitepress-blog master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

#cd -
