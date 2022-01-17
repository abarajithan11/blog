wget -r -nH -P /mnt/d/blog/gatsby/docs -E -T 2 -np -k http://localhost:2368/
echo "----- wget done. Replacing localhost -------"
find ./docs -type f -exec sed -i 's/http:\/\/localhost:2368/https:\/\/aba-blog.xyz/g' {} \;
echo "----- Replaced localhost. Replacing og:image -------"
find ./docs -type f -exec sed -i 's/content="https:\/\/aba-blog.xyz\/content\/images/content="https:\/\/aba-blog.xyz\/content\/images\/size\/w2000/g' {} \;
echo "----- Replaced og:image. Git Add starting -------"
git add .
echo "----- Git Add Done -------"
