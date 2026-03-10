# K-12 Reading Intervention Dashboard

## Project Overview
A SQL-powered analysis of student reading performance across 3 schools 
and 4 grade levels, built to mirror real EdTech data workflows.

Built as part of a portfolio project targeting the Educational Data Analyst 
role at Newsela.

## Tools Used
- PostgreSQL 18 (local database)
- pgAdmin 4 (query tool)
- Google Looker Studio (dashboard)
- Google Sheets (data bridge)

## Database Structure
4 relational tables:
- **students** — 50 students across 3 schools, grades 3–6
- **assessments** — 100 Lexile score records across Fall and Spring terms
- **interventions** — 15 intervention records (Small Group, One-on-One, Digital)
- **standards** — 50 Common Core standards mastery records (RI and RL codes)

## The 8 SQL Queries
| # | Query | Business Question |
|---|-------|------------------|
| 1 | Avg Lexile by grade + term | Are grades improving term over term? |
| 2 | Students whose scores dropped | Who is going backwards? |
| 3 | % at grade-level Lexile | What % of students are on track? |
| 4 | Intervention effectiveness | Did interventions actually work? |
| 5 | Standards mastery by grade | Which standards need re-teaching? |
| 6 | Bottom 10 by growth + intervention | Who needs immediate support? |
| 7 | School comparison ranked | Which school needs more resources? |
| 8 | Zero mastery early warning | Who has mastered nothing? |

## Key Findings
- Grade 3 improved from 46% to 100% on-track from Fall to Spring
- Intervention students grew +55 Lexile points — equal to non-intervention peers
- Elena Petrov (Grade 6) dropped -40 points with NO intervention assigned
- School 3 had the most at-risk students despite similar average scores

## Live Dashboard
View the Looker Studio Dashboard https://lookerstudio.google.com/reporting/17560c4b-e7e6-4e1b-b8d2-92763ccab16b 
