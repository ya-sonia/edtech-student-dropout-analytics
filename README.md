
# Student Dropout Analytics

An end-to-end data analytics project focused on analyzing student engagement and dropout behavior in online learning platforms using Python, SQL, and PostgreSQL.

---

##  Project Overview

This project analyzes online learning student data to identify:
- At-risk students
- Student engagement behavior
- Dropout trends
- Region-wise performance insights

The project uses Python for data preprocessing and PostgreSQL for structured data storage and SQL-based analysis.

Jupyter Notebook and Python were used for data cleaning, preprocessing, and feature engineering on student dropout data.

---
## Project Architecture

![Project Architecture](https://github.com/user-attachments/assets/8d1bf1bb-4e59-4c11-8bad-96b3348cae02)

---

##  Features

- Data cleaning and preprocessing using Pandas
- Feature engineering using engagement metrics
- PostgreSQL database integration
- SQL-based KPI and business analysis
- Student dropout trend analysis
- Region-wise engagement insights

---

##  Technologies Used

- Python
- Pandas
- NumPy
- SQL
- PostgreSQL
- SQLAlchemy

---

##  Project Structure

```bash

Student-Dropout-Analytics/
│
├── Datas/
│   ├── clean_student_dropout.csv
│   └── student_dropout_dataset.csv
│
├── scripts/
│   ├── db_connection.py
│   └── load_data.py
│
├── sql/
│   ├── schema.sql
│   ├── basic_queries.sql
│   ├── analysis_queries.sql
│   └── advanced_queries.sql
│
├── Online_Learning_Student_Dropout.ipynb
├── requirements.txt
├── .gitignore
└── README.md
```

---

##  Workflow

```text
Dataset → Python Preprocessing → PostgreSQL Database → SQL Analysis → Insights
```

---

##  Key Analysis Performed

- Dropout rate analysis
- Student engagement analysis
- Region-wise student performance
- At-risk student identification
- KPI generation using SQL queries

---

##  Sample SQL Query

```sql
SELECT 
    ROUND(
        SUM(CASE WHEN label = 1 THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*), 2
    ) AS dropout_rate
FROM student_activity;
```

---

##  How to Run the Project

### 1. Clone Repository

```bash
git clone https://github.com/ya-sonia/edtech-student-dropout-analytics.git
```

### 2. Install Dependencies

```bash
pip install -r requirements.txt
```

### 3. Configure PostgreSQL Database

Create database:

```sql
CREATE DATABASE edtech_db;
```

---

### 4. Run Data Loading Script

```bash
python scripts/load_data.py
```

---

##  Objective

To identify at-risk students, analyze engagement behavior, and generate actionable insights for improving student retention in online learning platforms.

---

##  Future Improvements

- Power BI Dashboard Integration
- Machine Learning-based Dropout Prediction
- Real-time Analytics Pipeline

---

