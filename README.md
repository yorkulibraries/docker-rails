# Purpose

These templates help to quickly setup a Rails app or build new app using containers instead of setting up Rails environment on your desktop.

# Getting started
Build starter containers.

```
cd myapp
wget https://raw.githubusercontent.com/yorkulibraries/docker-rails/main/Dockerfile
wget https://raw.githubusercontent.com/yorkulibraries/docker-rails/main/docker-compose.yml
wget https://raw.githubusercontent.com/yorkulibraries/docker-rails/main/rt.sh
touch Gemfile Gemfile.lock
docker compose build
```

Launch a BASH shell into the **web** container.

```
docker compose run --rm web bash
```

Inside the container, you can run any rails command as usual.

```
rails help
```

If developing new Rails app.

```
rails new . -f -d mysql
```

Prepare database 

```
rails db:create
rails db:migrate
``

Also add sqlite3 so that we can run tests easily. 

```
bundle add sqlite3 --group "test"
```

Whether you are developing a new app or continuing an existing app. Run a full test suite to make sure all is well.

```
rt
```

That's it. That is all you need to setup. Ctrl+D to exit the container.

## Finishing up
Finally, launch the app so it can be accessed at http://localhost:4004/

```
docker compose up --build
```

OR change the PORT environment if port 4004 is not available.

```
PORT=4005 docker compose up --build
```

OR run it in "production" mode
```
RAILS_ENV=production PORT=4005 docker compose up --build
```

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

