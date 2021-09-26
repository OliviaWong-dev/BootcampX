SELECT sum(duration) as total_duration
FROM assignment_submissions
JOIN students ON student_id = students.id 
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name='FEB12';



SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
HAVING count(assignment_id) < 100
GROUP BY students.name;