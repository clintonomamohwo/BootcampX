SELECT cohorts.name as name, avg(completed_at - started_at) as average_assistance_time 
FROM assistance_requests
JOIN students On students.id=student_id
JOIN cohorts ON cohorts.id=cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time