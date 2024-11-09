# Purpose

These templates help to quickly setup a Rails app or build new app using containers instead of setting up Rails environment on your desktop.

# Getting started

```
cd myapp
wget https://raw.githubusercontent.com/yorkulibraries/docker-rails/main/Dockerfile
wget https://raw.githubusercontent.com/yorkulibraries/docker-rails/main/docker-compose.yml
docker compose up --build
```

App is at accessible at http://localhost:4004/

## Continue development

While the app is running, you can attach to the running **web** container to make changes, run tests, see that it is reflected on the browser as nornal.

```
docker compose exec web bash
```

Generate a new controller.

```
rails generate controller Articles index --skip-routes
```

To run all tests, use the "rt" script, it set RAILS_ENV=test and DATABASE_URL=db/test.sqlite3 so you don't have to type it in everytime. Sqlite is simplier and faster for running tests than Mysql.

```
rt
```

And so on...

# Access mailcatcher web app

http://localhost:4084/

