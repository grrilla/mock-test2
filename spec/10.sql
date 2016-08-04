-- ================ --
-- CUSTOM SQL QUERY --
-- QUESTION 10      --
-- ================ --
--
-- Execute this file directly against the SQLite3 database from the command line.
-- From the test's root directory, type:
--
-- sqlite3 db/questions.sqlite3 < spec/10.sql
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
.width 20
-- ======== --
-- QUESTION --
-- ======== --
--
-- Write a query that returns list of ALL store names and the TOTAL number of employees working there
-- 
-- PART B: Order the list by this TOTAL number of employees working there (highest first)
-- 
-- =============== --
-- EXPECTED OUTPUT --
-- =============== --
--
-- name                  total_employees
-- --------------------  ---------------
-- Victoria              5   
-- Muskoka               3              
-- Port Renfrew          0 
--
-- ====================== --
-- EDIT THE FOLLOWING SQL --
-- ====================== --

SELECT name, female_employees, male_employees FROM stores;


