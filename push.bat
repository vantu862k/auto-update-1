echo "# auto-update-1" >> README.md
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/vantu862k/auto-update-1.git
git push -u origin main