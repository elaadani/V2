cd django-ribbit
git push origin master
heroku login
docker login
heroku container:login
heroku container:push web --app dockeribbit
cd ..