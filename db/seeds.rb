# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Clear out previous data

Week.delete_all
Day.delete_all
Speaker.delete_all

# Create 12 Weeks

n = 1

12.times do 
  Week.create(:ordinal => n)
  n+= 1
end

# Create days for semester 003

#week1

w_id = Week.first.id

d1 = Day.create(
  :date => Date.new(2013,9,23),
  :ordinal => 1,
  :topics => 'Opening Remarks
    Meet and Greet
    students.flatironschool.com
    Create individual profile pages
    Class Logistics',
  :week_id => w_id)

d2 = Day.create(
  :date => Date.new(2013,9,24),
  :ordinal => 2,
  :topics => 'HTML Basics
    Git workflow overview
    Git Clone
    Git Init
    Git Remote
    Git Merge
    Git Add / Git Commit
    Git Pull
    Git Fetch
    Setting up development environment
    Homebrew
    Vote on student website layouts',
  :week_id => w_id)

d3 = Day.create(
  :date => Date.new(2013,9,25),
  :ordinal => 3,
  :topics => 'Octopress
    Octopress Demo
    Finish up ENV and Octopress
    Finish merging student team-repositories
    SQL Group Project & Review
    Students work on students.flatironschool.com
    add blog link
    index page',
  :week_id => w_id)

d4 = Day.create(
  :date => Date.new(2013,9,26),
  :ordinal => 4,
  :topics => 'Ruby Lecture #1
    Ruby Lecture #2
    Merge Student Layouts',
  :week_id => w_id)

d5 = Day.create(
  :date => Date.new(2013,9,27),
  :ordinal => 5,
  :topics => 'Review Fizzbuzz Homework
    Ruby Lecture #2
    Ruby Lecture #3
    List of songs program lab review',
  :week_id => w_id)

#week2

w_id += 1

d6 = Day.create(
  :date => Date.new(2013,9,30),
  :ordinal => 6,
  :topics => 'Ruby Lecture #4
    Blogging
    Special Project',
  :week_id => w_id)

d7 = Day.create(
  :date => Date.new(2013,10,1),
  :ordinal => 7,
  :topics => 'CSS Box Model
    Floats
    Clearfixes
    Basic CSS Selectors (Nokogiri Context)
    Scrapers/Nokogiri',
  :week_id => w_id)

d8 = Day.create(
  :date => Date.new(2013,10,2),
  :ordinal => 8,
  :topics => 'Why Scrape?
    Review of student coding practices
    Things that make other things difficult
    Variable naming
    Loops
    YAGNI
    Enumerate/Map
    Recursion
    OO Lecture',
  :week_id => w_id)

d9 = Day.create(
  :date => Date.new(2013,10,3),
  :ordinal => 9,
  :topics => 'Recursion
    TDD
    TODO: WHAT ELSE GOES HERE.',
  :week_id => w_id)

d10 = Day.create(
  :date => Date.new(2013,10,4),
  :ordinal => 10,
  :topics => 'Review Blog Posts
    Ruby Review/Lecture',
  :week_id => w_id)

#week3

w_id += 1

d11 = Day.create(
  :date => Date.new(2013,10,7),
  :ordinal => 11,
  :topics => 'Object Oriented Design (Jukebox Review, Song Library)
    Class Methods and Data Structures
    self
    method scope
    Collaborating Objects',
  :week_id => w_id)

d12 = Day.create(
  :date => Date.new(2013,10,8),
  :ordinal => 12,
  :topics => 'Request Cycle
    Request / Response
    Headers / Bodies
    How the Web Works
    Client / Server
    Rack
    Rack Lecture Keynote
    Rackup
    Config.ru',
  :week_id => w_id)

d13 = Day.create(
  :date => Date.new(2013,10,9),
  :ordinal => 13,
  :topics => 'Using Gems
    Modules
    Inheritance
    OO Design
    Meta Programming
    ERB',
  :week_id => w_id)

d14 = Day.create(
  :date => Date.new(2013,10,10),
  :ordinal => 14,
  :topics => 'Forms Keynote
    Sinatra
    Forms/params
    Input/name
    Actions
    Methods
    Controller Responsibility
    ORM',
  :week_id => w_id)

d15 = Day.create(
  :date => Date.new(2013,10,11),
  :ordinal => 15,
  :topics => 'Review Data Parser Project
    Basic HTTP Auth
    Sequel / ORM / Find / Destroy',
  :week_id => w_id)

#week4

w_id += 1

d16 = Day.create(
  :date => Date.new(2013,10,14),
  :ordinal => 16,
  :topics => 'JS/jQuery
    Variables
    Data Types
    Conditionals
    Arrays/Loops
    Hashes
    Functions/Variable Scope',
  :week_id => w_id)

d17 = Day.create(
  :date => Date.new(2013,10,15),
  :ordinal => 17,
  :topics => 'Quick re-intro to jQuery
    (document).ready
    Selectors
    CSS/HTML Manipulation Methods
    Events/Event Binding
    Forms/Front-end Validations
    .clone (multiple form-fields)',
  :week_id => w_id)

d18 = Day.create(
  :date => Date.new(2013,10,16),
  :ordinal => 18,
  :topics => 'Ajax Requests/JSON
    JSON
    What is it?
    .parseJSON()
    .post, .get
    params/serialize()
    callbacks
    .success, .error
    error handling
    Returning JSON from Sinatra',
  :week_id => w_id)

d19 = Day.create(
  :date => Date.new(2013,10,17),
  :ordinal => 19,
  :topics => 'Rails Lecture 1 
    Deployment Lecture',
  :week_id => w_id)

d20 = Day.create(
  :date => Date.new(2013,10,18),
  :ordinal => 20,
  :topics => 'Rails Lecture 2
    Rails Lecture 3
    Rails Associations',
  :week_id => w_id)

#week5

w_id += 1

d21 = Day.create(
  :date => Date.new(2013,10,21),
  :ordinal => 21,
  :topics => 'Rails Lecture 4
    Relational Database Theory
    What\'s a Foreign Key
    What is Normalized Data
    What is Denormalized Data
    Types of Associations
    One to Many (has_many)
    Many to One (belongs_to)
    Many to Many (has_many, :through)
    Adding ActiveRecord Associations
    Creating Associated Data for Instances
    Accessing Associated Data for Instances
    Simple Associated Data in a Form
    Rails Lecture 5',
  :week_id => w_id)

d22 = Day.create(
  :date => Date.new(2013,10,22),
  :ordinal => 22,
  :topics => 'Rails Lecture
    Forms Deconstructed
    HTML
    form_tag
    FormBuilders
    Validations
    Partial rendering and forms
    Listing out data on show views
    More on rendering / collections',
  :week_id => w_id)

d23 = Day.create(
  :date => Date.new(2013,10,23),
  :ordinal => 23,
  :topics => '...',
  :week_id => w_id)

d24 = Day.create(
  :date => Date.new(2013,10,24),
  :ordinal => 24,
  :topics => '...',
  :week_id => w_id)

d25 = Day.create(
  :date => Date.new(2013,10,25),
  :ordinal => 25,
  :topics => '...',
  :week_id => w_id)

#week6

w_id += 1

d26 = Day.create(
  :date => Date.new(2013,10,28),
  :ordinal => 26,
  :topics => '...',
  :week_id => w_id)

d27 = Day.create(
  :date => Date.new(2013,10,29),
  :ordinal => 27,
  :topics => '...',
  :week_id => w_id)

d28 = Day.create(
  :date => Date.new(2013,10,30),
  :ordinal => 28,
  :topics => '...',
  :week_id => w_id)

d29 = Day.create(
  :date => Date.new(2013,10,31),
  :ordinal => 29,
  :topics => '...',
  :week_id => w_id)

d30 = Day.create(
  :date => Date.new(2013,11,1),
  :ordinal => 30,
  :topics => 'Rails
    Authorization
    Meta-programming
    Standups
    Show and Tell',
  :week_id => w_id)

#week7

w_id += 1

d31 = Day.create(
  :date => Date.new(2013,11,4),
  :ordinal => 31,
  :topics => 'Rails Lecture
    Show and Tell',
  :week_id => w_id)

d32 = Day.create(
  :date => Date.new(2013,11,5),
  :ordinal => 32,
  :topics => '...',
  :week_id => w_id)

d33 = Day.create(
  :date => Date.new(2013,11,6),
  :ordinal => 33,
  :topics => '...',
  :week_id => w_id)

d34 = Day.create(
  :date => Date.new(2013,11,7),
  :ordinal => 34,
  :topics => '...',
  :week_id => w_id)

d35 = Day.create(
  :date => Date.new(2013,11,8),
  :ordinal => 35,
  :topics => '...',
  :week_id => w_id)

#week8

w_id += 1

d36 = Day.create(
  :date => Date.new(2013,11,11),
  :ordinal => 36,
  :topics => '...',
  :week_id => w_id)

d37 = Day.create(
  :date => Date.new(2013,11,12),
  :ordinal => 37,
  :topics => '...',
  :week_id => w_id)

d38 = Day.create(
  :date => Date.new(2013,11,13),
  :ordinal => 38,
  :topics => '...',
  :week_id => w_id)

d39 = Day.create(
  :date => Date.new(2013,11,14),
  :ordinal => 39,
  :topics => '...',
  :week_id => w_id)

d40 = Day.create(
  :date => Date.new(2013,11,15),
  :ordinal => 40,
  :topics => '...',
  :week_id => w_id)

#week9

w_id += 1

d41 = Day.create(
  :date => Date.new(2013,11,18),
  :ordinal => 41,
  :topics => '...',
  :week_id => w_id)

d42 = Day.create(
  :date => Date.new(2013,11,19),
  :ordinal => 42,
  :topics => '...',
  :week_id => w_id)

d43 = Day.create(
  :date => Date.new(2013,11,20),
  :ordinal => 43,
  :topics => '...',
  :week_id => w_id)

d44 = Day.create(
  :date => Date.new(2013,11,21),
  :ordinal => 44,
  :topics => '...',
  :week_id => w_id)

d45 = Day.create(
  :date => Date.new(2013,11,22),
  :ordinal => 45,
  :topics => '...',
  :week_id => w_id)

#week10

w_id += 1

d46 = Day.create(
  :date => Date.new(2013,11,25),
  :ordinal => 46,
  :topics => '...',
  :week_id => w_id)

d47 = Day.create(
  :date => Date.new(2013,11,26),
  :ordinal => 47,
  :topics => '...',
  :week_id => w_id)

d48 = Day.create(
  :date => Date.new(2013,11,27),
  :ordinal => 48,
  :topics => '...',
  :week_id => w_id)

# Off Thanksgiving 28th & 29th

#week11

w_id += 1

d49 = Day.create(
  :date => Date.new(2013,12,2),
  :ordinal => 49,
  :topics => '...',
  :week_id => w_id)

d50 = Day.create(
  :date => Date.new(2013,12,3),
  :ordinal => 50,
  :topics => '...',
  :week_id => w_id)

d51 = Day.create(
  :date => Date.new(2013,12,4),
  :ordinal => 51,
  :topics => '...',
  :week_id => w_id)

d52 = Day.create(
  :date => Date.new(2013,12,5),
  :ordinal => 52,
  :topics => '...',
  :week_id => w_id)

d53 = Day.create(
  :date => Date.new(2013,12,6),
  :ordinal => 53,
  :topics => '...',
  :week_id => w_id)

#week12

w_id += 1

d54 = Day.create(
  :date => Date.new(2013,12,9),
  :ordinal => 54,
  :topics => '...',
  :week_id => w_id)

d55 = Day.create(
  :date => Date.new(2013,12,10),
  :ordinal => 55,
  :topics => '...',
  :week_id => w_id)

d56 = Day.create(
  :date => Date.new(2013,12,11),
  :ordinal => 56,
  :topics => '...',
  :week_id => w_id)

d57 = Day.create(
  :date => Date.new(2013,12,12),
  :ordinal => 57,
  :topics => '...',
  :week_id => w_id)
