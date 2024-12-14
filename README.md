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

* ...

## Docker
```
docker build -t rails-starter-kit .
docker run -it -p 3000:3000 rails-starter-kit
```

## Background

In our team, we’re always brainstorming fresh ideas and new apps to build. To support fast scaling, we need a streamlined way to implement business logic without handling repetitive setup tasks.

In this guide, we’ll establish a boilerplate for a basic Rails application, allowing new apps to be quickly checked out from the repository and ready for further development.

Ruby 3.3.6 (Or Latest Stable)
Rails 8.0 (Or Latest Stable)
https://edgeguides.rubyonrails.org/8_0_release_notes.html

## Gem Selection

Note: Before adding any gems to your project, verify their status to ensure they are not deprecated. Also, check if Rails provides a built-in alternative.
For instance, while the timecop gem is not deprecated, its GitHub page does not mention that Rails has built-in TimeHelpers which may serve similar purposes. Compare the built-in functionality with the gem to determine the best option.

## Pre requisite
1. Install Rbenv/Asdf and Setup Ruby/Rails
1. Docker
1. Setup Docker in your local env
1. Rails comes up with preconfigured docker compose and docker volume. Study and utilize this

## Acceptance Criteria

* New Rails app
* Postgres as a DB (Postgres is preferable but Sqlite has seamless integration now, give this a thought)
* Authentication
* Devise Token Auth with Refresh Tokens (JWT based)
* Omniauth (Google & Microsoft)
* Phone Login/Registration with OTP
  Explore Twilio-Ruby
* Authorization
  CanCanCan/Pundit
* Act as Tenant
* Setup Action Mailer and enable application to send Emails
* Environment Management
* Admin
RailsAdmin/ActiveAdmin

* Must Read: https://rubyonrails.org/2024/9/27/rails-8-beta1-no-paas-required Make sure we setup the app so that we get the optimised efficiency at the most.
Solid Cable replaces the need for Redis to act as the pubsub server to relay WebSocket messages from the application to clients connected to different processes.
Solid Cache replaces the need for either Redis or Memcached for storing HTML fragment caches in particular
Solid Queue replaces the need for not just Redis, but also a separate job-running framework, like Resque, Delayed Job, or Sidekiq, for most people

* Search
* PgSearch
* Serializer
* Security
* RackAttack
This is built-in now. Check https://www.shakacode.com/blog/rails-8-adds-rate-limiting-to-action-controller/

* Database Level Encryption (Gems like attr_encrypted was used but this is again built in)
* File Uploads & Management
* ActiveStorage and Integration with s3
* Better to have the shared codebase to retrieve the signed URL for the attachment with some validity
* Testing and Quality Assurance
RSpec
FactoryBot
Faker
Capybara
Shoulda Matchers
WebMock
Database Cleaner
SimpleCov
Timecop

* Documentation
RDoc
Swagger (or any other that's best integrated with Rails)

* Codequality
Rubocop
Setup Overcommit/Precommit hook for the app

* Error Handling
Setup Sentry and log error to your dev sentry (I think they give 14 days of trail when you sign up)

* Geolocation & Mapping
The best I can think of is Geocoder. Use either of Grasshopper or Google creds

* Payment
Rails Money

* Explore
Annotate
Bullet
Foreman
Mailcatcher
