-- 1. High-risk students
SELECT *
FROM student_activity
WHERE label_name = 'dropped'
   OR engagement_score < 3;

-- 2. Top 10 most engaged students
SELECT student_id, engagement_score
FROM student_activity
ORDER BY engagement_score DESC
LIMIT 10;

-- 3. Bottom 10 students (at risk)
SELECT student_id, engagement_score
FROM student_activity
ORDER BY engagement_score ASC
LIMIT 10;

-- 4. Monthly enrollment trend
SELECT 
    EXTRACT(MONTH FROM enroll_date) AS month,
    COUNT(*) AS total_students
FROM student_activity
GROUP BY month
ORDER BY month;

-- 5. Forum activity impact
SELECT 
    forum_posts_count,
    AVG(label) AS dropout_rate
FROM student_activity
GROUP BY forum_posts_count
ORDER BY forum_posts_count;

-- 6. Risk segmentation summary
SELECT 
    label_name,
    COUNT(*) AS total_students,
    AVG(engagement_score) AS avg_engagement
FROM student_activity
GROUP BY label_name;

-- 7. Full business insight Table
SELECT 
    region,
    COUNT(*) AS total_students,
    AVG(engagement_score) AS avg_engagement,
    AVG(label) AS dropout_rate
FROM student_activity
GROUP BY region
ORDER BY dropout_rate DESC;






