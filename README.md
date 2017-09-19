# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Writing Test Cases 

Update Gem File 
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem "factory_girl_rails", ">= 4.2.0", require: false
  gem "launchy", ">= 2.1.2"
  gem "email_spec", ">= 1.4.0"
  gem "capybara", ">= 2.0.2"
  gem 'zip-zip'
  gem 'shoulda-matchers'
  gem 'selenium-webdriver', '2.35.0'
  gem 'chromedriver-helper'
  gem 'headless'
  gem "capybara-webkit"
  gem 'byebug'
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  
  bundle install

RSpec Rails – installs RSpec gems with support for Rails
Capybara – tests web pages
Database Cleaner – a clean slate for databases
FactoryGirl Rails – creates test data
Launchy – view errors in your web browser
Selenium Webdriver – for tests that require JavaScript

Install Cucumber 
rails generate cucumber:install
Running Cucumber

With Rake:

rake cucumber
Without Rake:

[bundle exec] cucumber

Upgrading from a previous version

When upgrading from a previous version it is recommended that you rerun:

rails generate cucumber:install

https://github.com/cucumber/cucumber-rails

Install Rspec 

rails generate rspec:install

Use the rspec command to run your specs:

bundle exec rspec

https://github.com/rspec/rspec-rails



Setup a test db 

Run Following commands :
bundle exec rake db:create RAILS_ENV=test
bundle exec rake db:schema:load RAILS_ENV=test
Or 
rake db:test:prepare


Create testing environment

Run Following commands : 
bundle exec rake db:drop RAILS_ENV=test


Run Test Server

ruby script/server -e test

Use Cucumber and Capybara to Interating with forms 
See    
/features/step_definitions 
/features/posts/new_posts.feature

Use Rspec and Capybara for testing of Controllers , Models etc

https://github.com/rspec/rspec-rails




