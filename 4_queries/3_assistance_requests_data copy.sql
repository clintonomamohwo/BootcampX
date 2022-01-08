-- SELECT count(assistance_requests) as total_assistances, students.name as name
-- FROM assistance_requests
-- JOIN students ON assistance_requests.student_id = students.id 
-- WHERE students.name = 'Elliot Dickinson'
-- GROUP BY students.name;

-- SELECT count(assistance_requests) as total_assistances, teachers.name as name
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY teachers.name;

SELECT teachers.name AS teacher,
students.name AS student,
assignments.name AS assignment,
(assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN assignments ON assignments.id = assistance_requests.assignment_id
GROUP BY students.name, teachers.name, assignments.name, (assistance_requests.completed_at - assistance_requests.started_at) 
ORDER BY (assistance_requests.completed_at - assistance_requests.started_at);