# Purpose

These templates help to quickly setup a Rails app or build new app using containers instead of setting up Rails environment on your desktop.

# Getting started
Build starter containers.

```
cd myapp
wget https://raw.githubusercontent.com/yorkulibraries/docker-rails/main/Dockerfile
wget https://raw.githubusercontent.com/yorkulibraries/docker-rails/main/docker-compose.yml
wget https://raw.githubusercontent.com/yorkulibraries/docker-rails/main/rt.sh
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

## Finishing touch
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

