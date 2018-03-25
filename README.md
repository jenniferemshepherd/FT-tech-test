FT Cloud Engineer Technical Exercise
==================

[![Build Status](https://travis-ci.org/jenniferemshepherd/FT-tech-test.svg?branch=master)](https://travis-ci.org/jenniferemshepherd/FT-tech-test)

Brief Summary of Approach
-------

Instructions
-------

* Clone this repository
* Run '$ cd FT-tech-test/'
* Run '$ bundle' to ensure you have all the libraries
* You will need to create a local databases 'ft_ratings' and 'ft_ratings_test' in postgres and create the required tables using:
```
CREATE TABLE ratings(id SERIAL PRIMARY KEY, score int);
```
* Run '$ rackup' and navigate to localhost:9292 in your browser
* To test run 'rspec'

User stories
--------
```
As a User
So that I can share my experience of the ft website with their developers
I would like to leave a rating

As an ft employee
So that I can make use of the ratings data
I would like to store it

As an external User
So that I can leave my rating even though I don't work at the ft
I would like to leave my rating on a website hosted in the cloud
```

```
As a User
So that I can compare my experience with others' after I have left a rating
I would like to view all of the ratings left
```

Technologies Used:
--------
* Sinatra
* RSpec
* Capybara
* pg
* rake
* rubocop
* thin (for server and docker potential)

## Overall Process

## Process

* Having diagrammed the simple app and thought about all the things at play, I decided to use Ruby.  It was important to test-drive the app and I feel most confident and experienced doing this in Ruby.

* First I wrote out User Stories and compared them to the brief, to ensure I had fully grasped the expectations. I focussed on the first requirements to hit MVP, planning to extend later with the optional extras.

* I diagrammed the action that would take place in the app and where I expected information to be sent during user interaction.

* I test drove the homepage and refactored it into views.

* Rubocop was installed to ensure I didn't overlook any untidy code.

* The diagram of app architecture directed me in TDDing the actual rating buttons, and what pressing them would do (submit a form).

* DB development

* styling using HTML/CSS from Origami.  tutorial showed buttons.  moved onto header, background, fonts, margins, lists etc.

* aws: used a tutorial to learn how to deploy an app using docker.  had to install python to get the aws cli tool
