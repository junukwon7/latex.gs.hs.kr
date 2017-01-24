echo Started updating files...
date

echo Repo 1...
cd /var/www/source/files/An-Introduction-to-LaTeX
git pull
zip -FSr /var/www/source/files/An-Introduction-to-LaTeX.zip *

echo Repo 2...
cd /var/www/source/files/examples
git pull
zip -FSr /var/www/source/files/examples.zip *

echo Repo 3...
cd /var/www/source/files/gshslatexintro
git pull
zip -FSr /var/www/source/files/gshslatexintro.zip *

echo Repo 4...
cd /var/www/source/files/examples-mirror
git pull
zip -FSr /var/www/source/files/examples-mirror.zip *

echo Repo 5...
cd /var/www/source/files/gshslatexintro-mirror
git pull
zip -FSr /var/www/source/files/gshslatexintro-mirror.zip *

echo Time...
date > /var/www/source/updated.txt

echo Building website...
cd /var/www/source
jekyll build
