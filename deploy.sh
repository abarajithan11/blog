wget -r -q -nH -P ./docs -E -T 2 -np -k http://localhost:2368/
echo "----- wget done. Replacing og:image & localhost... -------"

find ./docs -type f -name "*.html" -exec sed -i 's/content="http:\/\/localhost:2368\/content\/images/content="https:\/\/aba-blog.xyz\/content\/images\/size\/w2000/g' {} \; -exec sed -i 's/http:\/\/localhost:2368/https:\/\/aba-blog.xyz/g' {} \; 
sed -i 's/http:\/\/localhost:2368/https:\/\/aba-blog.xyz/g' docs/robots.txt

echo "----- Replaced og:image. Git Adding... -------"
git add .

if [ "$1" != "no-commit" ]; then
	echo "----- Git Add Done. Committing... -------"
	git commit -m "$1"
	git push
fi
