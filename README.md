# google-charts-bootstrap

## What's inside:

* Rails 3.2.8
* Ruby 1.9.3
* View
  * Twitter Bootstrap v2.1.0
  * Sass
  * HAML 3.1
* Users/Authorization
  * devise 2.1
  * cancan 1.6
  * rolify 3.2
* Javascript
  * jQuery (not complex enough for backbone)
  * UJS
* Deploy
  * Capistrano (AWS/Bitnami Rails Stack)
* MySql (5.1)

## Demo

The app gives a pretty reasonable sample of how to use Google Charts,
Bootstrap, HAML and Sass.  Drop in a new database.yml and you should
be off and running.

## Google Charts

I used google_visualr and was very happy with it after trying some
other ones first. Configuration was easy, documentation clear,
flexibility more than enough for my needs.

## Bootstrap 2.1

I really liked working with Bootstrap. Very clear, flexible, logical.
If you look at bootstrap_and_overrides you will see that internal
bootrap variables are overridden as much as possible rather than
overriding with a cascaded app specific CSS(scss) style.  Very
clean. Bootstrap/HAML/Sass have become my default app framework.

## Honorable Mention

Shell app was generated with the rails_apps_composer gem:
https://github.com/RailsApps/rails_apps_composer
