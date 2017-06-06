# HotReads

This app works in conjunction with [URLockbox](https://obscure-basin-69091.herokuapp.com/links) [repo](https://github.com/janderson16/m4-final). It uses ajax calls from URLockbox to track the 10 most commonly read links. You will find the links ranked in order of reads.

[Production link](https://peaceful-anchorage-24168.herokuapp.com/)

#### The Nitty Gritty
* Ruby 2.3.0
* Rails 5.1.1
* RSpec test suite


## Setup

1. Clone down the repository
```$ git clone git@github.com:janderson16/hotreads.git```
1. Bundle
```$ bundle install```
1. Create database
```$ rake db:create```
1. Migrate
```$ rake db:migrate``` 

#### Run Locally
1. Start server (set port if using in parallel with URLockbox)
```$ rails s -p 1080```
1. visit localhost in broswer
```localhost:1080``` 

#### Run Test Suite
* To run test suite
```$ rspec```
