SELECT 'PostgreSQL is working!' AS status;
-- =============================================
-- NEWSELA PROJECT: K-12 Reading Intervention
-- =============================================

-- DROP e
DROP TABLE IF EXISTS standards, interventions, assessments, students;

-- =============================================
-- TABLE 1: STUDENTS
-- =============================================
CREATE TABLE students (
  student_id       INT PRIMARY KEY,
  name             VARCHAR(100),
  grade_level      INT,
  school_id        INT,
  enrollment_date  DATE
);

INSERT INTO students VALUES
(1,  'Amara Osei',        3, 1, '2023-09-01'),
(2,  'Liam Chen',         4, 1, '2023-09-01'),
(3,  'Sofia Reyes',       5, 1, '2023-09-01'),
(4,  'James Okafor',      3, 1, '2023-09-01'),
(5,  'Priya Nair',        6, 2, '2023-09-01'),
(6,  'Ethan Brooks',      4, 2, '2023-09-01'),
(7,  'Yemi Adeyemi',      5, 2, '2023-09-01'),
(8,  'Chloe Martin',      6, 2, '2023-09-01'),
(9,  'Daniel Kwon',       3, 3, '2023-09-01'),
(10, 'Fatima Al-Rashid',  4, 3, '2023-09-01'),
(11, 'Lucas Ferreira',    5, 3, '2023-09-01'),
(12, 'Aisha Kamara',      6, 3, '2023-09-01'),
(13, 'Noah Williams',     3, 1, '2023-09-01'),
(14, 'Zara Ahmed',        4, 1, '2023-09-01'),
(15, 'Marcus Johnson',    5, 2, '2023-09-01'),
(16, 'Elena Petrov',      6, 2, '2023-09-01'),
(17, 'Kofi Mensah',       3, 3, '2023-09-01'),
(18, 'Isabella Cruz',     4, 3, '2023-09-01'),
(19, 'Aaron Patel',       5, 1, '2023-09-01'),
(20, 'Mei Lin',           6, 1, '2023-09-01'),
(21, 'Tobias Müller',     3, 2, '2023-09-01'),
(22, 'Nadia Okonkwo',     4, 2, '2023-09-01'),
(23, 'Ryan Castillo',     5, 3, '2023-09-01'),
(24, 'Hannah Nguyen',     6, 3, '2023-09-01'),
(25, 'Samuel Abebe',      3, 1, '2023-09-01'),
(26, 'Leila Hossain',     4, 1, '2023-09-01'),
(27, 'Oscar Lindqvist',   5, 2, '2023-09-01'),
(28, 'Temi Badmus',       6, 2, '2023-09-01'),
(29, 'Grace Osei',        3, 3, '2023-09-01'),
(30, 'Victor Romero',     4, 3, '2023-09-01'),
(31, 'Ava Thompson',      5, 1, '2023-09-01'),
(32, 'Kwame Asante',      6, 1, '2023-09-01'),
(33, 'Ingrid Holm',       3, 2, '2023-09-01'),
(34, 'Diego Morales',     4, 2, '2023-09-01'),
(35, 'Blessing Eze',      5, 3, '2023-09-01'),
(36, 'Sasha Ivanova',     6, 3, '2023-09-01'),
(37, 'Ben Oduya',         3, 1, '2023-09-01'),
(38, 'Chioma Eze',        4, 1, '2023-09-01'),
(39, 'Hamid Sultani',     5, 2, '2023-09-01'),
(40, 'Yuki Tanaka',       6, 2, '2023-09-01'),
(41, 'Amina Diallo',      3, 3, '2023-09-01'),
(42, 'Patrick Flynn',     4, 3, '2023-09-01'),
(43, 'Dara Obi',          5, 1, '2023-09-01'),
(44, 'Rosa Delgado',      6, 1, '2023-09-01'),
(45, 'Finn McCarthy',     3, 2, '2023-09-01'),
(46, 'Adaeze Nwosu',      4, 2, '2023-09-01'),
(47, 'Jerome Baptiste',   5, 3, '2023-09-01'),
(48, 'Lily Park',         6, 3, '2023-09-01'),
(49, 'Emmanuel Ofori',    3, 1, '2023-09-01'),
(50, 'Sara Magnusson',    4, 1, '2023-09-01');

-- =============================================
-- TABLE 2: ASSESSMENTS (Fall + Spring, 2 terms)
-- =============================================
CREATE TABLE assessments (
  assessment_id  INT PRIMARY KEY,
  student_id     INT,
  reading_level  VARCHAR(5),
  lexile_score   INT,
  assessed_date  DATE,
  term           VARCHAR(10)
);

INSERT INTO assessments VALUES
-- Fall term
(1,  1,  '3A', 520,  '2023-10-15', 'Fall'),
(2,  2,  '4B', 650,  '2023-10-15', 'Fall'),
(3,  3,  '5A', 780,  '2023-10-15', 'Fall'),
(4,  4,  '3B', 490,  '2023-10-15', 'Fall'),
(5,  5,  '6A', 880,  '2023-10-15', 'Fall'),
(6,  6,  '4A', 610,  '2023-10-15', 'Fall'),
(7,  7,  '5B', 760,  '2023-10-15', 'Fall'),
(8,  8,  '6B', 900,  '2023-10-15', 'Fall'),
(9,  9,  '3A', 480,  '2023-10-15', 'Fall'),
(10, 10, '4A', 600,  '2023-10-15', 'Fall'),
(11, 11, '5A', 720,  '2023-10-15', 'Fall'),
(12, 12, '6A', 850,  '2023-10-15', 'Fall'),
(13, 13, '3B', 390,  '2023-10-15', 'Fall'),  -- at-risk
(14, 14, '4B', 540,  '2023-10-15', 'Fall'),
(15, 15, '5B', 700,  '2023-10-15', 'Fall'),
(16, 16, '6A', 860,  '2023-10-15', 'Fall'),
(17, 17, '3A', 370,  '2023-10-15', 'Fall'),  -- at-risk
(18, 18, '4A', 580,  '2023-10-15', 'Fall'),
(19, 19, '5A', 740,  '2023-10-15', 'Fall'),
(20, 20, '6B', 920,  '2023-10-15', 'Fall'),
(21, 21, '3B', 410,  '2023-10-15', 'Fall'),
(22, 22, '4A', 620,  '2023-10-15', 'Fall'),
(23, 23, '5B', 710,  '2023-10-15', 'Fall'),
(24, 24, '6A', 840,  '2023-10-15', 'Fall'),
(25, 25, '3A', 430,  '2023-10-15', 'Fall'),
(26, 26, '4B', 560,  '2023-10-15', 'Fall'),
(27, 27, '5A', 750,  '2023-10-15', 'Fall'),
(28, 28, '6B', 890,  '2023-10-15', 'Fall'),
(29, 29, '3B', 350,  '2023-10-15', 'Fall'),  -- at-risk
(30, 30, '4A', 590,  '2023-10-15', 'Fall'),
(31, 31, '5B', 730,  '2023-10-15', 'Fall'),
(32, 32, '6A', 870,  '2023-10-15', 'Fall'),
(33, 33, '3A', 400,  '2023-10-15', 'Fall'),
(34, 34, '4B', 550,  '2023-10-15', 'Fall'),
(35, 35, '5A', 770,  '2023-10-15', 'Fall'),
(36, 36, '6B', 910,  '2023-10-15', 'Fall'),
(37, 37, '3B', 360,  '2023-10-15', 'Fall'),  -- at-risk
(38, 38, '4A', 600,  '2023-10-15', 'Fall'),
(39, 39, '5B', 690,  '2023-10-15', 'Fall'),
(40, 40, '6A', 830,  '2023-10-15', 'Fall'),
(41, 41, '3A', 440,  '2023-10-15', 'Fall'),
(42, 42, '4B', 570,  '2023-10-15', 'Fall'),
(43, 43, '5A', 760,  '2023-10-15', 'Fall'),
(44, 44, '6B', 905,  '2023-10-15', 'Fall'),
(45, 45, '3B', 380,  '2023-10-15', 'Fall'),  -- at-risk
(46, 46, '4A', 610,  '2023-10-15', 'Fall'),
(47, 47, '5B', 720,  '2023-10-15', 'Fall'),
(48, 48, '6A', 855,  '2023-10-15', 'Fall'),
(49, 49, '3A', 460,  '2023-10-15', 'Fall'),
(50, 50, '4B', 580,  '2023-10-15', 'Fall'),

-- Spring term
(51, 1,  '3B', 570,  '2024-03-15', 'Spring'),
(52, 2,  '4C', 700,  '2024-03-15', 'Spring'),
(53, 3,  '5B', 830,  '2024-03-15', 'Spring'),
(54, 4,  '3B', 460,  '2024-03-15', 'Spring'),  -- dropped
(55, 5,  '6B', 930,  '2024-03-15', 'Spring'),
(56, 6,  '4B', 590,  '2024-03-15', 'Spring'),  -- dropped
(57, 7,  '5C', 810,  '2024-03-15', 'Spring'),
(58, 8,  '6C', 960,  '2024-03-15', 'Spring'),
(59, 9,  '3B', 540,  '2024-03-15', 'Spring'),
(60, 10, '4B', 660,  '2024-03-15', 'Spring'),
(61, 11, '5B', 780,  '2024-03-15', 'Spring'),
(62, 12, '6B', 900,  '2024-03-15', 'Spring'),
(63, 13, '3A', 450,  '2024-03-15', 'Spring'),
(64, 14, '4C', 610,  '2024-03-15', 'Spring'),
(65, 15, '5C', 760,  '2024-03-15', 'Spring'),
(66, 16, '6B', 820,  '2024-03-15', 'Spring'),  -- dropped
(67, 17, '3A', 430,  '2024-03-15', 'Spring'),
(68, 18, '4B', 640,  '2024-03-15', 'Spring'),
(69, 19, '5B', 800,  '2024-03-15', 'Spring'),
(70, 20, '6C', 980,  '2024-03-15', 'Spring'),
(71, 21, '3C', 480,  '2024-03-15', 'Spring'),
(72, 22, '4B', 670,  '2024-03-15', 'Spring'),
(73, 23, '5C', 770,  '2024-03-15', 'Spring'),
(74, 24, '6B', 890,  '2024-03-15', 'Spring'),  -- dropped
(75, 25, '3B', 500,  '2024-03-15', 'Spring'),
(76, 26, '4C', 630,  '2024-03-15', 'Spring'),
(77, 27, '5B', 810,  '2024-03-15', 'Spring'),
(78, 28, '6C', 950,  '2024-03-15', 'Spring'),
(79, 29, '3A', 420,  '2024-03-15', 'Spring'),
(80, 30, '4B', 650,  '2024-03-15', 'Spring'),
(81, 31, '5C', 790,  '2024-03-15', 'Spring'),
(82, 32, '6B', 920,  '2024-03-15', 'Spring'),
(83, 33, '3B', 470,  '2024-03-15', 'Spring'),
(84, 34, '4C', 620,  '2024-03-15', 'Spring'),
(85, 35, '5B', 830,  '2024-03-15', 'Spring'),
(86, 36, '6C', 970,  '2024-03-15', 'Spring'),
(87, 37, '3A', 430,  '2024-03-15', 'Spring'),
(88, 38, '4B', 660,  '2024-03-15', 'Spring'),
(89, 39, '5C', 750,  '2024-03-15', 'Spring'),
(90, 40, '6B', 880,  '2024-03-15', 'Spring'),  -- dropped
(91, 41, '3B', 510,  '2024-03-15', 'Spring'),
(92, 42, '4C', 640,  '2024-03-15', 'Spring'),
(93, 43, '5B', 820,  '2024-03-15', 'Spring'),
(94, 44, '6C', 960,  '2024-03-15', 'Spring'),
(95, 45, '3A', 450,  '2024-03-15', 'Spring'),
(96, 46, '4B', 670,  '2024-03-15', 'Spring'),
(97, 47, '5C', 780,  '2024-03-15', 'Spring'),
(98, 48, '6B', 910,  '2024-03-15', 'Spring'),
(99, 49, '3B', 530,  '2024-03-15', 'Spring'),
(100,50, '4C', 650,  '2024-03-15', 'Spring');

-- =============================================
-- TABLE 3: INTERVENTIONS
-- =============================================
CREATE TABLE interventions (
  intervention_id    INT PRIMARY KEY,
  student_id         INT,
  intervention_type  VARCHAR(50),
  start_date         DATE,
  end_date           DATE
);

INSERT INTO interventions VALUES
(1,  4,  'Small Group',  '2023-11-01', '2024-02-28'),
(2,  13, 'One-on-One',   '2023-11-01', '2024-02-28'),
(3,  17, 'One-on-One',   '2023-11-01', '2024-02-28'),
(4,  29, 'Digital',      '2023-11-01', '2024-02-28'),
(5,  37, 'Small Group',  '2023-11-01', '2024-02-28'),
(6,  45, 'One-on-One',   '2023-11-01', '2024-02-28'),
(7,  6,  'Digital',      '2023-11-01', '2024-02-28'),
(8,  9,  'Small Group',  '2023-11-01', '2024-02-28'),
(9,  21, 'Digital',      '2023-11-01', '2024-02-28'),
(10, 25, 'Small Group',  '2023-11-01', '2024-02-28'),
(11, 33, 'One-on-One',   '2023-11-01', '2024-02-28'),
(12, 39, 'Digital',      '2023-11-01', '2024-02-28'),
(13, 41, 'Small Group',  '2023-11-01', '2024-02-28'),
(14, 49, 'One-on-One',   '2023-11-01', '2024-02-28'),
(15, 26, 'Digital',      '2023-11-01', '2024-02-28');

-- =============================================
-- TABLE 4: STANDARDS
-- =============================================
CREATE TABLE standards (
  student_id      INT,
  standard_code   VARCHAR(20),
  mastery_status  VARCHAR(20),
  assessed_date   DATE
);

INSERT INTO standards VALUES
(1,  'RI.3.1', 'Mastered',   '2024-03-15'),
(1,  'RL.3.2', 'Developing', '2024-03-15'),
(2,  'RI.4.1', 'Mastered',   '2024-03-15'),
(2,  'RL.4.3', 'Mastered',   '2024-03-15'),
(3,  'RI.5.2', 'Mastered',   '2024-03-15'),
(3,  'RL.5.1', 'Mastered',   '2024-03-15'),
(4,  'RI.3.1', 'Not Met',    '2024-03-15'),
(4,  'RL.3.2', 'Not Met',    '2024-03-15'),
(5,  'RI.6.1', 'Mastered',   '2024-03-15'),
(5,  'RL.6.2', 'Mastered',   '2024-03-15'),
(6,  'RI.4.1', 'Developing', '2024-03-15'),
(6,  'RL.4.3', 'Not Met',    '2024-03-15'),
(7,  'RI.5.2', 'Mastered',   '2024-03-15'),
(7,  'RL.5.1', 'Developing', '2024-03-15'),
(8,  'RI.6.1', 'Mastered',   '2024-03-15'),
(8,  'RL.6.2', 'Mastered',   '2024-03-15'),
(9,  'RI.3.1', 'Developing', '2024-03-15'),
(9,  'RL.3.2', 'Mastered',   '2024-03-15'),
(10, 'RI.4.1', 'Mastered',   '2024-03-15'),
(10, 'RL.4.3', 'Developing', '2024-03-15'),
(11, 'RI.5.2', 'Mastered',   '2024-03-15'),
(11, 'RL.5.1', 'Mastered',   '2024-03-15'),
(12, 'RI.6.1', 'Mastered',   '2024-03-15'),
(12, 'RL.6.2', 'Developing', '2024-03-15'),
(13, 'RI.3.1', 'Not Met',    '2024-03-15'),
(13, 'RL.3.2', 'Not Met',    '2024-03-15'),
(14, 'RI.4.1', 'Mastered',   '2024-03-15'),
(14, 'RL.4.3', 'Mastered',   '2024-03-15'),
(15, 'RI.5.2', 'Developing', '2024-03-15'),
(15, 'RL.5.1', 'Mastered',   '2024-03-15'),
(16, 'RI.6.1', 'Mastered',   '2024-03-15'),
(16, 'RL.6.2', 'Not Met',    '2024-03-15'),
(17, 'RI.3.1', 'Not Met',    '2024-03-15'),
(17, 'RL.3.2', 'Not Met',    '2024-03-15'),
(18, 'RI.4.1', 'Mastered',   '2024-03-15'),
(18, 'RL.4.3', 'Developing', '2024-03-15'),
(19, 'RI.5.2', 'Mastered',   '2024-03-15'),
(19, 'RL.5.1', 'Mastered',   '2024-03-15'),
(20, 'RI.6.1', 'Mastered',   '2024-03-15'),
(20, 'RL.6.2', 'Mastered',   '2024-03-15'),
(21, 'RI.3.1', 'Developing', '2024-03-15'),
(21, 'RL.3.2', 'Mastered',   '2024-03-15'),
(22, 'RI.4.1', 'Mastered',   '2024-03-15'),
(22, 'RL.4.3', 'Mastered',   '2024-03-15'),
(23, 'RI.5.2', 'Developing', '2024-03-15'),
(23, 'RL.5.1', 'Mastered',   '2024-03-15'),
(24, 'RI.6.1', 'Mastered',   '2024-03-15'),
(24, 'RL.6.2', 'Not Met',    '2024-03-15'),
(25, 'RI.3.1', 'Mastered',   '2024-03-15'),
(25, 'RL.3.2', 'Developing', '2024-03-15');

-- =============================================
-- QUERY 1: Average Lexile by Grade + Term
-- =============================================
SELECT 
    s.grade_level,
    a.term,
    ROUND(AVG(a.lexile_score)) AS avg_lexile,
    COUNT(s.student_id) AS total_students
FROM students s
JOIN assessments a ON s.student_id = a.student_id
GROUP BY s.grade_level, a.term
ORDER BY s.grade_level, a.term;


-- =============================================
-- QUERY 2: Students Whose Scores Dropped
-- =============================================
SELECT 
    s.name,
    s.grade_level,
    fall.lexile_score AS fall_score,
    spring.lexile_score AS spring_score,
    (spring.lexile_score - fall.lexile_score) AS score_change
FROM students s
JOIN assessments fall ON s.student_id = fall.student_id AND fall.term = 'Fall'
JOIN assessments spring ON s.student_id = spring.student_id AND spring.term = 'Spring'
WHERE spring.lexile_score < fall.lexile_score
ORDER BY score_change ASC;


-- =============================================
-- QUERY 3: % of Students At Grade Level
-- =============================================
SELECT
    s.grade_level,
    a.term,
    COUNT(*) AS total_students,
    SUM(CASE WHEN 
        (s.grade_level = 3 AND a.lexile_score >= 420) OR
        (s.grade_level = 4 AND a.lexile_score >= 545) OR
        (s.grade_level = 5 AND a.lexile_score >= 645) OR
        (s.grade_level = 6 AND a.lexile_score >= 745)
    THEN 1 ELSE 0 END) AS on_track,
    ROUND(100.0 * SUM(CASE WHEN 
        (s.grade_level = 3 AND a.lexile_score >= 420) OR
        (s.grade_level = 4 AND a.lexile_score >= 545) OR
        (s.grade_level = 5 AND a.lexile_score >= 645) OR
        (s.grade_level = 6 AND a.lexile_score >= 745)
    THEN 1 ELSE 0 END) / COUNT(*), 1) AS pct_on_track
FROM students s
JOIN assessments a ON s.student_id = a.student_id
GROUP BY s.grade_level, a.term
ORDER BY s.grade_level, a.term;


-- =============================================
-- QUERY 4: Intervention Effectiveness
-- =============================================
SELECT
    CASE WHEN i.student_id IS NOT NULL 
         THEN 'Received Intervention' 
         ELSE 'No Intervention' END AS group_name,
    ROUND(AVG(fall.lexile_score)) AS avg_fall_score,
    ROUND(AVG(spring.lexile_score)) AS avg_spring_score,
    ROUND(AVG(spring.lexile_score - fall.lexile_score)) AS avg_score_change,
    COUNT(s.student_id) AS total_students
FROM students s
JOIN assessments fall ON s.student_id = fall.student_id AND fall.term = 'Fall'
JOIN assessments spring ON s.student_id = spring.student_id AND spring.term = 'Spring'
LEFT JOIN interventions i ON s.student_id = i.student_id
GROUP BY CASE WHEN i.student_id IS NOT NULL 
              THEN 'Received Intervention' 
              ELSE 'No Intervention' END
ORDER BY group_name;


-- =============================================
-- QUERY 5: Standards Mastery by Grade
-- =============================================
SELECT
    s.grade_level,
    st.standard_code,
    COUNT(*) AS total_assessed,
    SUM(CASE WHEN st.mastery_status = 'Mastered' THEN 1 ELSE 0 END) AS mastered,
    ROUND(100.0 * SUM(CASE WHEN st.mastery_status = 'Mastered' THEN 1 ELSE 0 END) / COUNT(*), 1) AS pct_mastered
FROM students s
JOIN standards st ON s.student_id = st.student_id
GROUP BY s.grade_level, st.standard_code
ORDER BY s.grade_level, st.standard_code;


-- =============================================
-- QUERY 6: Bottom 10 Students by Growth + Intervention Status
-- =============================================
SELECT
    s.name,
    s.grade_level,
    fall.lexile_score AS fall_score,
    spring.lexile_score AS spring_score,
    (spring.lexile_score - fall.lexile_score) AS score_change,
    CASE WHEN i.student_id IS NOT NULL 
         THEN i.intervention_type 
         ELSE 'None' END AS intervention_received
FROM students s
JOIN assessments fall ON s.student_id = fall.student_id AND fall.term = 'Fall'
JOIN assessments spring ON s.student_id = spring.student_id AND spring.term = 'Spring'
LEFT JOIN interventions i ON s.student_id = i.student_id
ORDER BY score_change ASC
LIMIT 10;


-- =============================================
-- QUERY 7: School Comparison Ranked
-- =============================================
SELECT
    s.school_id,
    a.term,
    ROUND(AVG(a.lexile_score)) AS avg_lexile,
    MAX(a.lexile_score) AS highest_score,
    MIN(a.lexile_score) AS lowest_score,
    COUNT(s.student_id) AS total_students
FROM students s
JOIN assessments a ON s.student_id = a.student_id
GROUP BY s.school_id, a.term
ORDER BY a.term, avg_lexile DESC;


-- =============================================
-- QUERY 8: Zero Mastery Early Warning
-- =============================================
SELECT
    s.name,
    s.grade_level,
    s.school_id,
    COUNT(st.standard_code) AS standards_assessed,
    SUM(CASE WHEN st.mastery_status = 'Mastered' THEN 1 ELSE 0 END) AS standards_mastered,
    CASE WHEN i.student_id IS NOT NULL 
         THEN i.intervention_type 
         ELSE 'NO INTERVENTION' END AS intervention_status
FROM students s
JOIN standards st ON s.student_id = st.student_id
LEFT JOIN interventions i ON s.student_id = i.student_id
GROUP BY s.student_id, s.name, s.grade_level, s.school_id, i.student_id, i.intervention_type
HAVING SUM(CASE WHEN st.mastery_status = 'Mastered' THEN 1 ELSE 0 END) = 0
ORDER BY s.grade_level;