-- Query 1: Materialized View
SELECT 
    "Month",
    "Total",
    "Individual",
    "Group",
    "Ensemble"
FROM lesson_counts_per_month
WHERE EXTRACT(YEAR FROM lesson_time) = 2024;

REFRESH MATERIALIZED VIEW lesson_counts_per_month;

-- Query 2: Materialized View
SELECT *
FROM student_sibling_counts;

REFRESH MATERIALIZED VIEW student_sibling_counts;

-- Query 3: View
SELECT *
FROM instructor_lesson_counts
WHERE "No of lessons" > 1;

-- Query 4: View
SELECT *
FROM ensemble_availability_next_week;
