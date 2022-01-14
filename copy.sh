wget -r -nH -P /mnt/d/blog/gatsby/docs -E -T 2 -np -k http://localhost:2368/
find ./docs -type f -exec sed -i 's/http:\/\/localhost:2368/https:\/\/aba-blog.xyz/g' {} \;
git add .
