$m = read-host -Prompt "Introduce mensaje"
git add .
git commit -m $m
git push --force origin main