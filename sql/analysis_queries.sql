# Define the new and polished SQL content
sql_content = """-- analysis_queries.sql (Updated)

-- 1. Average Score by Gender
SELECT gender, 
       ROUND(AVG(average_score), 2) AS avg_score
FROM students_performance
GROUP BY gender;

-- 2. Average Score by Parental Education Level
SELECT parental_level_of_education, 
       ROUND(AVG(average_score), 2) AS avg_score
FROM students_performance
GROUP BY parental_level_of_education
ORDER BY avg_score DESC;

-- 3. Impact of Test Preparation Course
SELECT test_preparation_course, 
       COUNT(*) AS student_count, 
       ROUND(AVG(average_score), 2) AS avg_score
FROM students_performance
GROUP BY test_preparation_course
ORDER BY avg_score DESC;

-- 4. Lunch Program and Performance
SELECT lunch, 
       ROUND(AVG(average_score), 2) AS avg_score
FROM students_performance
GROUP BY lunch
ORDER BY avg_score DESC;

-- 5. High Performing Students (average_score > 85)
SELECT unique_id, 
       gender, 
       average_score
FROM students_performance
WHERE average_score > 85
ORDER BY average_score DESC;

-- 6. Subject Scores by Gender
SELECT gender, 
       ROUND(AVG(math_score), 1) AS avg_math,
       ROUND(AVG(reading_score), 1) AS avg_reading,
       ROUND(AVG(writing_score), 1) AS avg_writing
FROM students_performance
GROUP BY gender;

-- 7. Score Distribution by Parental Education
SELECT parental_level_of_education,
       COUNT(*) AS student_count,
       MIN(average_score) AS min_score,
       MAX(average_score) AS max_score,
       ROUND(AVG(average_score), 2) AS avg_score
FROM students_performance
GROUP BY parental_level_of_education
ORDER BY avg_score DESC;
"""

# Corrected file path based on actual extracted directory
sql_file_path = os.path.join(project_root, "sql", "analysis_queries.sql")

# Write the updated SQL content to the file
with open(sql_file_path, "w") as f:
    f.write(sql_content)

# Return the file path for confirmation
sql_file_path
