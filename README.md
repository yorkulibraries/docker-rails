# Purpose

These templates help to quickly setup a Rails app or build new app using containers instead of setting up Rais environment on your desktop.

# Getting started
Build starter containers.

```
cd myapp
wget https://raw.githubusercontent.com/yorkulibraries/docker-rails/Dockerfile
wget https://raw.githubusercontent.com/yorkulibraries/docker-rails/docker-compose.yml
wget https://raw.githubusercontent.com/yorkulibraries/docker-rails/rt.sh
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

To run tests, use the "rt" script, it set RAILS_ENV=test and DATABASE_URL=db/test.sqlite3 so you don't have to type it in everytime. Sqlite is simplier and faster for running tests than Mysql.

```
docker compose run --rm web rt
```
