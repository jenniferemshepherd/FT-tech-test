FT Cloud Engineer Technical Exercise
==================

[![Build Status](https://travis-ci.org/jenniferemshepherd/FT-tech-test.svg?branch=master)](https://travis-ci.org/jenniferemshepherd/FT-tech-test)

[Jennifer Shepherd FT.com Rating App](https://ft-tech-test-jshepherd.herokuapp.com/)

Brief Summary of Approach
-------
I chose Ruby with a Sinatra framework to build this app, and used the pg gem to interact with a PostgreSQL database from the app itself.  I test drove the development from routing through to views and finally the database. I deployed to heroku as I was familiar with having used heroku previously.  This was my first time integrating a database into the deployment of a Heroku app.

I did further research on docker and aws as I wanted to try a new way of deploying the app.  This was interesting and I would be keen to discuss some of the thoughts I had during this research during an interview.  There was so much to learn and I imagine pairing to learn it would be more fun!

See more on my approach <a href='#process'>below</a>.

Instructions
-------

* Clone this repository
* Run '$ cd FT-tech-test/'
* Run '$ bundle' to ensure you have all the libraries
* You will need to create a local databases 'ft_ratings' and 'ft_ratings_test' in PostgreSQL and create the required tables using:
```
CREATE TABLE ratings(id SERIAL PRIMARY KEY, score int);
```
* Run '$ rackup' and navigate to localhost:9292 in your browser
* To test run 'rspec'

N.B. requires ruby version 2.4.1 and the bundler gem

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

As a User
So that I can have consistent experience when interacting with FT products
I would like to see FT styling
```

Technologies Used:
--------
* Sinatra
* PostgreSQL
* RSpec
* Capybara
* pg
* rake
* rubocop
* thin (for server and docker potential)

## Process

* Whilst the app itself was simple enough, I experienced a wave of imposter syndrome when I sat down to plan this project.  After writing out lists of steps/tasks and diagramming, I felt more confident that I knew where to begin and that I had, in fact, learned how to code in the last 11 weeks!  I am extremely pleased with what I achieved in the time I had to spend on this and am proud of what I built.

* Having diagrammed the simple app, I decided to use Ruby.  It was important to test-drive the app and I current feel most confident doing this in Ruby as I have experience with the Sinatra framework.

* I wrote out User Stories and compared them to the brief, to ensure I had fully grasped the expectations. I focussed on the first requirements to hit MVP, planning to extend later with the optional extras.

* I diagrammed the action that would take place in the app and where I expected information to be sent during user interaction.

* I chose PostgreSQL for my database as I felt reasonably familiar with SQL and wanted to keep things simple.  I used the pg gem to interact with the database from within my ruby code, but keep the interactions verbose.  I refactored the connection with the database into its own class so that I could keep the ratings and controller doing their own actions.  I also installed tableplus onto my macbook so that I could keep an eye on the database without having to constantly interact through psql in my command line.  I hadn't used it before but it did speed up my sanity checks.

* I created a rakefile to clean the database between tests and to speed up both connection and creation of the tables in my database.

* The styling uses HTML/CSS from Origami.  I followed the tutorial initially which guided me through adjusting the buttons.  I had planned to use icons for the buttons but I really liked the feel of the FT styling so kept the numbered buttons.

* I deployed the app using heroku.  At this stage I had an issue with my environment variables and had to refactor my code to enable heroku to make use of its addon PostgreSQL.  I spent a long time searching through the databases to work out which one my app was using and then to connect to it.  At this point I had to change the way my app interacted with the local database too as my connection method was no longer using a key-value pair.  Heroku has changed recently and now requires a Procfile.  I was getting a 404 error initially as I needed to run the app through rackup rather than executing ruby app.rb as stated in the Procfile.

* I (somewhat belatedly) used Travis for the build and then updated some of the code to ensure that the tests would pass 'remotely' and that Travis could create the database and tables it needed to pass the build.  Travis also highlighted that some gems were present that I'd planned to use briefly during deployment and then had decided against.

Further research:
- http://blog.honeybadger.io/how-to-deploy-a-sinatra-app-in-docker-to-amazon-s-ec2-container-service/
- Required Docker and Python download, successfully executed.
- Followed this tutorial to successful deployment of a simple sinatra app locally and in the cloud.  Deploying my app required a database so would be more complicated.
- Explored Docker and set up a Dockerfile.  During the build, my pg gem version was causing problems and the build would exit early.
- Looked into elastic beanstalk and other aws options.  Seemed like a blackhole...! I timeboxed my research here.  I was interested in following up various alternative deployment routes but also had another interview to prepare for!

Next steps:
- I didn't spend much time on the actual features, as these are simple to adjust.  Perhaps a numbering system that is consistent with the ratings page would be more helpful.  An average score was what I had in mind when I picked a scale from -2 to 2 so that it was clear what a positive or negative average showed.
- I'd like to try doing the app in a javascript stack, now that I have a reference point in ruby for my process.
