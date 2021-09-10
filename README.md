# Quora App

### Configuration
* Ruby version 2.7.0
* Rails version 6.0.0
* Database: Postgresql

### Installation (For Development)

Follow below steps to setup your development environment

STEP 1 : Clone repo and install Bundle
```
bundle install
```
STEP 2 : Add Database.yml and Create Database

```
rails db:create RAILS_ENV=development
```

STEP 3 : Migrate your database

```
rails db:migrate RAILS_ENV=development
```
STEP 4: For add seed data in database

```
rails db:seed RAILS_ENV=development
```
STEP 5: Run local server

```
rails s
```
After completed above steps, open http://localhost:3000 in your browser
