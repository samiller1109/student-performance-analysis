# Define the SQL content as a string
sql_content = """-- analysis_queries.sql

-- 1. Average Score by Gender
SELECT gender, AVG(average_score) AS avg_score
FROM students_performance
GROUP BY gender;

-- 2. Average Score by Parental Education
SELECT parental_level_of_education, AVG(average_score) AS avg_score
FROM students_performance
GROUP BY parental_level_of_education
ORDER BY avg_score DESC;

-- 3. Impact of Test Preparation
SELECT test_preparation_course, COUNT(*) AS student_count, AVG(average_score) AS avg_score
FROM students_performance
GROUP BY test_preparation_course;

-- 4. Lunch Program and Performance
SELECT lunch, AVG(average_score) AS avg_score
FROM students_performance
GROUP BY lunch;
"""

# Define file path
sql_file_path = os.path.join(extract_path, "student-performance-analysis", "sql", "analysis_queries.sql")

# Write the SQL content to the file
with open(sql_file_path, "w") as f:
    f.write(sql_content)

# Confirm file creation
sql_file_path
