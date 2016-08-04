Assessment Test 2 - ActiveRecord & SQL
==============

## Models

There are two models, `Employee` and `Store` (these may sound familiar from a previous exercise) in the models folder. Use the `db/schema.rb` for reference about their columns.

## FactoryGirl

[FactoryGirl](https://github.com/thoughtbot/factory_girl) is a simple gem that is used specifically for creating test data for our RSpec tests.

Essentially it saves us from having to always specify column (attribute) values when creating records. The `factories` folder contains two files, one for each model.

Take a browse through these 2 factories now. While doing so, please also note that for employee `first_name` and `last_name` fields another gem called "Faker" is used to randomly generate these so that when we create employees using our factory, they always have random names.

## ActiveRecord Queries

**Important Note:**
Your queries (filtering a subset of data, sorting, etc) should leverage the database (by using ActiveRecord calls) instead of performing the filters using Ruby's methods (such as`sort`, `select` or `detect`).

## Questions

There are 12 questions (mark allocation is mentioned below).
Run each test using the `bundle exec rspec` command (eg: `bundle exec rspec spec/01.rb`) and make it pass.

**Important Note**: Questions/tests that are imperative to make pass (are dependencies) for the rest of the questions are marked with a double star. Questions/tests that are needed for some of the next questions are marked with a single star. In other words, you can safely skip questions that are not marked with any stars, incase you want to come back to them later.

**Important Note**: Some questions are SQL only. For these questions, please follow the instructions within the .sql (text) file. Your answer should be placed within these files.

## Mark Allocation

01. 5% **
02. 5% **
03. 10%
04. 5%
05. 10% *
06. 10%
07. 5% *
08. 5%
09. 10%
10. 15% - SQL
11. 10% - SQL
12. 10% - SQL

## Rules

* A mark of 80% or higher is considered a PASS.
* You are allowed to google around
* Please do not create a public repo nor share your work in any other way with anyone during the test
* This test is intended to take ~2hr to complete
* No collaboration with your peers is allowed during the test
