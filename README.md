# 🎓 Student Performance Data Analysis

This project explores student performance data to uncover trends, identify educational disparities, and support data-driven decision-making in the education sector.

> 📌 **Goal:** Use SQL, Python, and data visualization to examine how factors like gender, parental education, test preparation, and lunch programs impact student performance.

---

## 📊 Dataset

- **Source:** [Kaggle – Students Performance in Exams](https://www.kaggle.com/datasets/spscientist/students-performance-in-exams)  
- **Size:** 1,000 students  
- **Features Include:**
  - `gender`
  - `race/ethnicity`
  - `parental level of education`
  - `lunch`
  - `test preparation course`
  - `math score`, `reading score`, `writing score`

---

## 🔍 Key Questions Explored

- Do students who complete test preparation perform better?
- Is there a performance gap between genders or ethnic groups?
- How does parental education level influence student scores?
- Are math, reading, and writing scores strongly correlated?

---

## 💻 Technologies Used

| Tool                | Purpose                             |
|---------------------|-------------------------------------|
| **Python**          | Data analysis and visualization     |
| **Pandas**          | Data wrangling                      |
| **Seaborn/Matplotlib** | Graphs and visualizations       |
| **SQLite + SQL**    | Query-based insights                |
| **Jupyter Notebook**| Interactive code and documentation  |
| **GitHub**          | Version control and project hosting |

---

## 🧼 Data Cleaning

Performed in `notebooks/data_cleaning_analysis.ipynb`:

- Renamed and standardized column headers
- Checked for and handled missing or duplicate values
- Added a new `average_score` column as the mean of math, reading, and writing scores

---

## 📈 Exploratory Visualizations

- Distribution of average scores
- Score comparisons by gender
- Average performance by parental education level
- Impact of lunch program and test preparation

📁 *Visuals available in the `visualizations/` directory.*

---

## 🧠 Statistical Testing

Used a **t-test** to determine if test preparation significantly affects student performance:

```python
from scipy.stats import ttest_ind

prep = df[df['test_preparation_course'] == 'completed']['average_score']
no_prep = df[df['test_preparation_course'] == 'none']['average_score']

ttest_ind(prep, no_prep)
