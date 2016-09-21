# Climb Tracker

#### By Olivia Hinton & Julia Dickey | 9/21/16

## Description

The Climb Tracker app lets you keep track of your climbs!

## General Setup Instructions

* Clone this repository
* Install gems by running command `$ bundle` in the terminal
* Open another terminal tab and type `postgres` to start PostgreSQL database
* Return to first terminal tab and run `rails db:create` to create the databases
* Run `rails db:migrate db:test:prepare` to create tables
* Run `rails db:seed` to seed the database
* Launch the Rails server by running command `$ rails s` in the terminal
* Launch site by visiting localhost:3000 in browser

## User Stories
As a user I want to:
* Log a climb, including height and rating
* Log a session, which includes several climbs, notes, day/time, type (bouldering or top rope), location (indoor vs outdoor)
* See total distance I've climbed over time
* See my progress over time on a graph
* See total number of climbs
* Log in to see my dashboard
* Search users to find friends and add users to my list of friends
* See basic stats for my friends

### Wishes
* A Q&A forum for technical questions and suggestions
* Invite users to a challenge
* Graph: progress by month

## Tech Used

* Ruby on Rails (v. 5.0.0.1)
* Active Record
* PostgreSQL
* AJAX
* jQuery
* Bootstrap/SCSS

### License

*This software is licensed under the MIT license.*

Copyright (c) 2016 **Olivia Hinton & Julia Dickey**
