echo "

Starting deploy build"
echo "___________________________"


echo "
___________________________"
echo "Downloading requirements"
echo "___________________________"
python -m pip install -r requirements.txt


echo "
___________________________"
echo "Migrating DB"
echo "___________________________"
#python manage.py makemigrations
#python manage.py migrate


echo "
___________________________"
echo "Collecting static files (css, img, js)"
echo "___________________________"
python manage.py collectstatic --noinput --clear


echo "
___________________________"
echo "Dealing with unused files (tests, .gitignore, ...)"
echo "___________________________"
find requirements.txt -delete
find .gitignore -delete
find LICENSE -delete
find tests/* tests/.*  -delete
rmdir tests
find requirements/* requirements/.*  -delete
rmdir requirements


echo "

Ending deploy build"
echo "___________________________"


