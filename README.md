# README

## Introduction ##

The KSHub is a one-stop platform for the Kappa Sigma Fraternity at Texas A&M University. The site consists of an announcements dashboard, a list of upcoming events, a roster of members, and a merchandise page. Users can create an account under an admin or general member, with admins having create, read, update, and delete permissions for all announcements, events, memebers, and merchandise links.

## Requirements ##

This code has been run and tested on:

* Ruby - 3.0.2p107
* Rails - 6.1.4.1
* Ruby Gems - Listed in `Gemfile`
* PostgreSQL - 13.3 
* Nodejs - v16.9.1
* Yarn - 1.22.11

## External Deps  ##

* Docker - Download latest version at https://www.docker.com/products/docker-desktop
* Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli
* Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

## Installation ##

Download this code repository by using git:

 `git clone https://github.com/mahirahsamah/kshub.git`


## Tests ##

An RSpec test suite is available and can be ran using:

  `rspec spec/`

## Execute Code ##

Run the following code in Powershell if using windows or the terminal using Linux/Mac

  `cd kshub`

  `docker run --rm -it --volume "$(pwd):/rails_app" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest`

  `cd rails_app`

Install the app

  `bundle install && rails webpacker:install && rails db:create && db:migrate`

Run the app
  `rails server --binding:0.0.0.0`

The application can be seen using a browser and navigating to http://localhost:3000/


## Deployment ##

1. Click the New button in the top right of your app list and select Create new pipeline.
  (Note: if there’s no app in a pipeline, the pipeline will disappear. Therefore we need to configure some apps as default.)

2. Enable Review Apps. Use the default options.

3. Click “New app” in Review Apps. Choose the test branch. After you click “Create”, Heroku will start deploying immediately. Every time you make changes to the test branch, it triggers automatic deployment.

4. Install heroku cli from here based based on your os. (https://devcenter.heroku.com/articles/heroku-cli)

  - After installing type heroku login on your terminal and follow instructions on command line to login.

  - We also need to create an app for staging using the following command:

    `heroku create --stack heroku-20 stage-test-app-1-<name>`

  This command will create an app and go to GUI pipeline and select add app under         staging and select this new app you just created with CLI.

5. Click on the stage-test-app-1. Click Deploy. Choose the main branch for Automatic Deploys.


## CI/CD ##

TBD

## Support ##

Admins looking for support should first look at the application help page.
Users looking for help seek out assistance from the customer.

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... TBD
