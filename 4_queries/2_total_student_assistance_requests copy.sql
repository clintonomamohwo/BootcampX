SELECT count(assistance_requests) as total_assistances, students.name as name
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id 
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;

-- SELECT count(assistance_requests) as total_assistances, teachers.name as name
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY teachers.name;