# Pewlett-Hackard-Analysis.
Module 7: Intro to SQL
The raw data was used to explore two questions related to retirment and mentorship. First, the data was used to see summarize how many employees would be retiring, by title. The second question explored in the analysis was to see which employees would be eligible for a mentorship program based on their birth date and current employment status. The analysis was performed using pgAdmin, Postgress and SQL to combine, filter and sort multiple CSV files into usable information.

## Results 
•There are a total of 90,398 employees who are considered in range for the retirement 'silver wave' 
    https://github.com/julianadvds/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv

•The title with the most number of employees experiencing the 'silver wave' (retiring) is the Senior Engineer title (29414 employees) followed closely by Senior Staff title (28254 employees) 
    https://github.com/julianadvds/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv

•There are 1549 employees who are eligible for mentorship based on their birth year 
    (https://github.com/julianadvds/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv)

•There is a significant gap between the number of employees eligibile for mentorship and the number of roles that will be vacant due to retirement

## Summary 
As the 'silver wave' hits, there is expected to be about 90,000 roles that will need to be filled.  This is about 30% of the total workforce at Pewlett-Hackard, which is a remarkable number that would require immediate attention.  From the mentorship eligibility analysis, we see that there are about 1500 employees that meet the criteria of a birth year of 1965.  From the analysis, this will only fill about 1.67% of the roles that are expected to be vacant.

To gain more insight into the "silver tsunami", a query to broaden the mentorship program to additional birth years (ex. 1964-1967) may show that the gap between retirees and potential employees to fill the roles is not as broad as initially expected.
A second query could be run, building on the retiring employees query to exlude employees who are no longer with the company - where the 'to_date' field is not '9999-01-01'.  Since these employees are no longer with the company, there would be no need to backfill those roles as the employee reaches retirement age. 
