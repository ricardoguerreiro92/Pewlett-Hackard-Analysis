# Pewlett-Hackard-Analysis

## Overview of Analysis
- The purpose of this project is to prepare Pewlett-Hackard company for the "silver tsunami" the company is about to face with many employees getting to the age of retirement. In this project we created a database with all company employees info and their title within the company to better understand how many people are eligible for retirement and how many of those hold a management position. We will also create a mentorship eligibility based on the employees date of birth to check for employees who are currently eligible to mentor new employees in the positions that will needed to be filled.

## Result of Analysis
- There are four major points we retrieved from the two analysis performed:

1. In the retirement_titles table we retrieved a total of 133,776 rows but this query is not reliable since it is showing several duplicate employees and it also shows employees that no longer work for the company which makes this query unusable for our research purposes.

![retirement_titles](/Images/retirement_titles.png)

2. In the unique_titles table we retrieve everyone who is eligible for retirement with no duplicates, we also narrowed to search to make sure the employee still works for Pewlett-Hackard. With this we got a total result of 72,458 employees eligible for retirement!

![unique_titles](/Images/unique_titles.png)

3. In this simple retiring_titles table we retrieve a count of how many employees are eligible to retire per holding title.

![retiring_titles](/Images/retiring_titles.png)

4. After querying through employees who are eligible for the mentorship program we retrieve a total of 1,549 employees who are eligible for the program.

![mentorship_eligibility](/Images/mentorship_eligibility.png)

## Summary

1. There are 7 roles which will be affected by the "silver tsunami" as Pewlett-Hackard gets ready for over 70,000 employees being eligible for retirement. As we can see in the third image above the roles that will be needed the most to be filled are Senior Engineers with 25,916 employees eligible for retirement, Senior Staff with 24,926 employees eligible for retirement, Engineers with 9,285 employees eligible for retirment, Staff with 7,636 employees eligible for retirement, Technique leader with 3,603 employees eligible and with Assistant Engineer close behind with 1,090 employees eligible, in management positions we only have 2 employees eligible for retirement.

2. With over 70,000 positions needing the be filled in the near future and only 1,549 employees are eligible for the mentorship program there is a clear a lack of mentors per role as we can see in the image below(Mentorship Eligibility). We can widen our search for more mentors if we look for employees who were born between 1963 and 1965 instead of narrowing it only for employees who were born in 1965 and with this we get a good ratio of about 1 mentor per 2 new employees as we can see in the image below(Mentorship Eligibility 1963-1965). 

- Mentorship Eligibility

![mentor](/Images/mentorees.png)

- Mentorship Eligibility 1963-1965

![updated](/Images/updated.png)
