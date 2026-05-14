-- 1. Total Students
SELECT COUNT(*) AS total_students
FROM student_activity;

-- 2. Show all data sample
SELECT * FROM student_activity
LIMIT 10;

-- 3. Dropout distribution
SELECT label_name, COUNT(*) AS count
FROM student_activity
GROUP BY label_name;

-- 4. Region-wise student count
SELECT region, COUNT(*) AS total_students
FROM student_activity
GROUP BY region
ORDER BY total_students DESC;

-- 5. Average engagement score
SELECT AVG(engagement_score) AS avg_engagement
FROM student_activity;