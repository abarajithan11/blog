wget -r -q -nH -P ./docs -E -T 2 -np -k http://localhost:2368/
echo "----- wget done. Replacing localhost & og:image -------"
find ./docs -type f -not -name "*.jpg" -exec sed -i 's/http:\/\/localhost:2368/https:\/\/aba-blog.xyz/g' {} \; -exec sed -i 's/content="https:\/\/aba-blog.xyz\/content\/images/content="https:\/\/aba-blog.xyz\/content\/images\/size\/w2000/g' {} \;
echo "----- Replaced og:image. Git Add starting -------"
git add .
echo "----- Git Add Done -------"
