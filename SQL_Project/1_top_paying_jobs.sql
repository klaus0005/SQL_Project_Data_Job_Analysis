/* What are the top-paying data analyst jobs?*/

Select
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name as company_name
FROM
    job_postings_fact
LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
where 
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' and 
    salary_year_avg is NOT NULL
order BY
    salary_year_avg desc
LIMIT 10
