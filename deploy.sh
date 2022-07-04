set -e
# build
npm run build

# 删除远程分支
git push origin --delete gh-pages

git subtree push --prefix dist origin gh-pages

cd -
