# 📺 BrightTV Case Study – Viewership & User Analytics

## Overview

This project presents an end-to-end data analytics case study for **BrightTV**, focused on understanding user behavior, content consumption trends, and strategic recommendations to improve platform engagement and growth.

The analysis combines **SQL-based data transformation**, **user profiling**, and **viewership trend analysis** to uncover actionable business insights.

---

## Business Objective

The objective of this case study is to analyze BrightTV’s user and consumption data in order to answer key business questions:

* Which provinces consume the most TV programmes?
* What user demographics drive viewership?
* Which age groups and gender segments are most active?
* What factors influence content consumption?
* Which days and time periods show low engagement?
* What strategies can increase user growth and retention?

---

## Dataset Description

The project uses two core datasets:

### 1. User Profile Table

Contains user demographic and profile information.

**Fields include:**

* `UserID`
* `Gender`
* `Race`
* `Age`
* `Province`

### 2. Viewership / Consumption Table

Contains TV programme consumption records.

**Fields include:**

* `UserID`
* `Channel`
* `Programme`
* `RecordDate`
* `WatchDuration`
* `Province`

---

## Project Structure

```bash
brighttv-case-study/
│
├── data/
│   ├── user_profiles.csv
│   └── viewership_data.csv
│
├── sql/
│   ├── data_cleaning.sql
│   ├── joins_analysis.sql
│   ├── demographic_insights.sql
│   └── consumption_trends.sql
│
├── notebooks/
│   └── brighttv_analysis.ipynb
│
├── visuals/
│   ├── province_viewership.png
│   ├── age_group_analysis.png
│   └── gender_split.png
│
└── README.md
```

---

## Tools & Technologies

* **SQL** – data cleaning, joins, aggregations, KPI analysis
* **Python / Pandas** – exploratory analysis and transformation
* **Power BI / Tableau** – dashboards and visual storytelling
* **GitHub** – version control and project documentation

---

## Key Analysis Performed

### Data Cleaning

* Handled missing values using `IFNULL()`
* Standardized gender, race, and province values
* Rounded numerical fields for consistency
* Removed duplicate user records

### SQL Analysis

Examples of business questions solved:

```sql
SELECT Province, COUNT(*) AS Total_Viewers
FROM brighttv_viewership
GROUP BY Province
ORDER BY Total_Viewers DESC;
```

### User Segmentation

* Gender split analysis
* Age group distribution
* Race count
* Province-based consumption trends

### Consumption Insights

* Most watched channels
* Peak consumption days
* Low-engagement periods
* User activity by demographic segment

---

## Key Insights

Some example insights from the case study:

* **Gauteng** shows the highest content consumption
* Users aged **25–34** are the most active segment
* Weekend consumption is significantly higher than weekdays
* Certain provinces show consistently low engagement, indicating growth opportunities
* Specific channels outperform others across all demographics

---

## Business Recommendations

Based on the analysis:

### Increase Low-Day Engagement

* Introduce exclusive weekday content
* Push notifications during low-viewership hours
* Personalized recommendations

### Grow User Base

* Province-targeted marketing campaigns
* Youth-focused subscription packages
* Referral and loyalty programmes

### Improve Retention

* Demographic-based content curation
* Regional language programming
* Predictive churn monitoring

---

## How to Run

1. Clone the repository

```bash
git clone https://github.com/yourusername/brighttv-case-study.git
```

2. Open SQL scripts in your preferred SQL environment

3. Run notebook for deeper analysis

```bash
jupyter notebook notebooks/brighttv_analysis.ipynb
```

---

## Author

**tbo_touch**
Data Analytics | SQL | Business Intelligence | Data Storytelling
