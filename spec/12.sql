-- ================ --
-- CUSTOM SQL QUERY --
-- QUESTION 12      --
-- ================ --
--
-- Execute this file directly against the SQLite3 database from the command line.
-- From the test's root directory, type:
--
-- sqlite3 db/questions.sqlite3 < spec/12.sql
--
-- There are no automated tests for this question. You have to compare your result
-- to the expected output.

-- =============== --
-- IMPORTANT TIP
-- =============== --
-- 
-- The database schema is the same as before (see schema.rb). 
-- It has some seeded data in all the tables that you should quickly explore first
-- 
-- To get familiar with the data in a quick and easy way, you can connect to the database via the SQLite3 REPL:
-- From the test's root directory, type:
-- 
-- sqlite3 db/questions.sqlite3 

-- It is suggested that you run the three dot commands below after connecting, to make the output formatting more readable.
-- Use the .quit command to exit the REPL

-- ================= --
-- OUTPUT FORMATTING
-- ================= --
--
-- Leave the following lines in so that the output is formatted in a readable way.
.headers on
.mode column
.width 15
-- ======== --
-- QUESTION --
-- ======== --
--
-- Write a query that returns all stores along with its average employee hourly rate
-- To make things simpler, you can assume that store names are always unique
-- 
-- PART B: Round the average value to two decimal places
-- 
-- PART C: Exclude stores that have no employees and thus no value for avg hourly rate
-- 
-- =============== --
-- EXPECTED OUTPUT --
-- =============== --
--
-- name             average_hourly_rate
-- ---------------  -------------------
-- Muskoka          14.67              
-- Victoria         16.0               
--
-- ====================== --
-- EDIT THE FOLLOWING SQL --
-- ====================== --

SELECT name FROM  stores;


