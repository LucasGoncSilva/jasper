echo "

Starting deploy build"
echo "___________________________"


echo "
___________________________"
echo "Downloading requirements"
echo "___________________________"
python3.9 -m pip install -r requirements.txt


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
python3.9 manage.py collectstatic --noinput --clear


echo "

Ending deploy build"
echo "___________________________"
