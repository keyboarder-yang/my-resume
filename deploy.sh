
#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build
git config --global --unset http.proxy
git config --global --unset https.proxy
# 删除远程分支
git push origin --delete gh-pages
git subtree push --prefix dist origin gh-pages


cd -
