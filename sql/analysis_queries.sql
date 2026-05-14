-- 1. Dropout rate percentage
SELECT 
    ROUND(
        SUM(CASE WHEN label = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS dropout_rate_percent
FROM student_activity;


-- Active vs Dropped Students
SELECT label_name, COUNT(*) AS total
FROM student_activity
GROUP BY label_name;

--



-- High Engagement Students
SELECT *
FROM student_activity
WHERE engagement_score > 10
ORDER BY engagement_score DESC;


-- Low Engagement (At Risk Students)
SELECT *
FROM student_activity
WHERE engagement_score < 3;

-- Average Engagement by Region
SELECT region, AVG(engagement_score) AS avg_engagement
FROM student_activity
GROUP BY region
ORDER BY avg_engagement DESC;

-- 2. Engagement vs Dropout analysis

SELECT 
    CASE 
        WHEN engagement_score < 3 THEN 'Low'
        WHEN engagement_score BETWEEN 3 AND 7 THEN 'Medium'
        ELSE 'High'
    END AS engagement_level,
    AVG(label) AS dropout_rate
FROM student_activity
GROUP BY engagement_level;


-- Courses vs Dropout
SELECT courses_enrolled,
       AVG(label) AS dropout_rate
FROM student_activity
GROUP BY courses_enrolled
ORDER BY courses_enrolled;



-- 3. Completion rate vs dropout
SELECT 
    CASE 
        WHEN completion_rate < 0.3 THEN 'Low'
        WHEN completion_rate BETWEEN 0.3 AND 0.7 THEN 'Medium'
        ELSE 'High'
    END AS completion_level,
    AVG(label) AS dropout_rate
FROM student_activity
GROUP BY completion_level;

-- 4. Exam season impact
SELECT 
    exam_season,
    AVG(label) AS dropout_rate
FROM student_activity
GROUP BY exam_season;


-- Monthly Enrollment Trend
SELECT 
    EXTRACT(MONTH FROM enroll_date) AS month,
    COUNT(*) AS total_students
FROM student_activity
GROUP BY month
ORDER BY month;



-- 5. Region-wise engagement
SELECT 
    region,
    AVG(engagement_score) AS avg_engagement
FROM student_activity
GROUP BY region
ORDER BY avg_engagement DESC;

-- High Risk Students
SELECT *
FROM student_activity
WHERE label_name = 'dropped'
   OR engagement_score < 3;


-- Risk Segmentation
SELECT 
    label_name,
    COUNT(*) AS total_students,
    ROUND(AVG(engagement_score), 2) AS avg_engagement
FROM student_activity
GROUP BY label_name;




-- 6. Courses vs dropout
SELECT 
    courses_enrolled,
    AVG(label) AS dropout_rate
FROM student_activity
GROUP BY courses_enrolled
ORDER BY courses_enrolled;

--

-- Top Students (Most Engaged)
SELECT student_id, engagement_score
FROM student_activity
ORDER BY engagement_score DESC
LIMIT 10;


-- Bottom Students (At Risk)
SELECT student_id, engagement_score
FROM student_activity
ORDER BY engagement_score ASC
LIMIT 10;





