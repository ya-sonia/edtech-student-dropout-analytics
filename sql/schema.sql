-- Create main student analytics table

CREATE TABLE student_activity (
    student_id VARCHAR(20) PRIMARY KEY,
    age INT,
    region VARCHAR(50),
    enroll_date DATE,
    exam_season INT,
    courses_enrolled INT,
    completed_assignments INT,
    completion_rate FLOAT,
    login_frequency FLOAT,
    last_activity_days_ago INT,
    forum_posts_count INT,
    dropout_score FLOAT,
    label INT,
    label_multiclass INT,
    label_name VARCHAR(20),
    engagement_score FLOAT
);