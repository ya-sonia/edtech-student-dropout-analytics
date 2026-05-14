import pandas as pd
from db_connection import engine

# Load cleaned dataset
# df = pd.read_csv(
#     r"C:\Users\hp\Documents\Projects_BTech\Business Analyst Project\Datas\clean_student_dropout.csv"
# )

df = pd.read_csv("Datas/clean_student_dropout.csv")
df.head()

# Upload to PostgreSQL
df.to_sql(
    "student_activity",
    engine,
    if_exists="replace",
    index=False
)

print("Data uploaded successfully")