# 🎓 Student Performance Data Analysis

This project analyzes student performance data to uncover trends, identify educational disparities, and extract insights that can support data-driven decision-making in the education sector.

> **Goal:** Use SQL, Python, and data visualization to explore how factors like gender, parental education, test preparation, and lunch programs affect student performance.

---

## 📊 Dataset

- Source: [Kaggle – Students Performance in Exams](https://www.kaggle.com/datasets/spscientist/students-performance-in-exams)
- Rows: 1,000 students
- Features:
  - `gender`
  - `race/ethnicity`
  - `parental level of education`
  - `lunch`
  - `test preparation course`
  - `math`, `reading`, and `writing` scores

---

## 🔍 Key Questions Explored

- Do students who complete test preparation perform better?
- Is there a performance gap between genders or ethnic groups?
- How does parental education level impact student scores?
- Are there strong correlations between math, reading, and writing performance?

---

## 💻 Technologies Used

| Tool | Purpose |
|------|---------|
| **Python** | Data cleaning, analysis, and visualization |
| **Pandas** | Data wrangling |
| **Seaborn/Matplotlib** | Visualizations |
| **SQLite + SQL** | Query-based analysis |
| **Jupyter Notebook** | Interactive analysis and documentation |
| **GitHub** | Version control and portfolio hosting |

---

## 🧼 Data Cleaning

Performed the following steps in `notebooks/data_cleaning_analysis.ipynb`:
- Standardized column names
- Checked for missing/duplicate values
- Created a new `average_score` column as the mean of math, reading, and writing scores

---

## 🧠 Statistical Analysis

Used Python and SciPy to explore whether test preparation significantly impacted student scores.

```python
from scipy.stats import ttest_ind
prep = df[df['test_preparation_course'] == 'completed']['average_score']
no_prep = df[df['test_preparation_course'] == 'none']['average_score']
ttest_ind(prep, no_prep)
