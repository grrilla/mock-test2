-- ================ --
-- CUSTOM SQL QUERY --
-- QUESTION 11      --
-- ================ --
--
-- Execute this file directly against the SQLite3 database from the command line.
-- From the test's root directory, type:
--
-- sqlite3 db/questions.sqlite3 < spec/11.sql
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
-- Write a query that returns list of ALL employee first names along with the name of the store they are working at. 
-- Note: some employees are not assigned to a store, but should still be included in the result set.
-- 
-- 
-- =============== --
-- EXPECTED OUTPUT --
-- =============== --
--
-- first_name            store_name
-- --------------------  ----------
-- Linda                 Muskoka   
-- Mark                  Muskoka   
-- Topi                  Muskoka   
-- Rebecca               Victoria  
-- Jane                  Victoria  
-- Robin                 Victoria  
-- Galinda               Victoria  
-- Tracey                Victoria  
-- Gordon                          
-- Bart 
--
-- ====================== --
-- EDIT THE FOLLOWING SQL --
-- ====================== --

SELECT first_name FROM employees;


