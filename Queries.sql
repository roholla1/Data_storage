

-- Query 1: 

SELECT 
	to_char(date_trunc('month', lesson_time), 'Mon') AS "Month",
	COUNT(*) AS "Total",
    SUM(CASE WHEN lesson_type = 'individual_lesson' THEN 1 ELSE 0 END) AS "Individual",
    SUM(CASE WHEN lesson_type = 'group_lesson' THEN 1 ELSE 0 END) AS "Group",
    SUM(CASE WHEN lesson_type = 'ensemble' THEN 1 ELSE 0 END) AS "Ensemble"
FROM (
    SELECT 
        appointment_time AS lesson_time,
        'individual_lesson' AS lesson_type
    FROM individual_lesson
    UNION ALL
    SELECT 
        schedule_time_slot AS lesson_time,
        'group_lesson' AS lesson_type
    FROM group_lesson
    UNION ALL
    SELECT 
        schedule_time_slot AS lesson_time,
        'ensemble' AS lesson_type
    FROM ensemble
) AS combined_lessons
WHERE EXTRACT(YEAR FROM lesson_time) = 2024
GROUP BY date_trunc('month', lesson_time);



-- Query 2: Siblings
SELECT 
    sibling_count AS "No of siblings", 
    COUNT(*) AS "No of students"
FROM (
    SELECT 
        student.id AS student_id,
        COUNT(sibling.student_id) AS sibling_count
    FROM student
    LEFT JOIN student_sibling sibling ON student.id = sibling.student_id
    GROUP BY student.id
) AS sibling_data
GROUP BY sibling_count
ORDER BY sibling_count; 


-- Query 3: 

SELECT
    instructor.id AS "Instructor id",
    instructor.first_name AS "First name",
    instructor.last_name AS "Last name",
    COUNT(*) AS "No of lessons"
FROM
    instructor
JOIN (
    SELECT instructor_id, appointment_time AS lesson_time
    FROM individual_lesson
    UNION ALL
    SELECT instructor_id, schedule_time_slot AS lesson_time
    FROM group_lesson
    UNION ALL
    SELECT instructor_id, schedule_time_slot AS lesson_time
    FROM ensemble
) lessons ON instructor.id = lessons.instructor_id
WHERE
    lessons.lesson_time >= DATE_TRUNC('month', CURRENT_DATE) 
    AND lessons.lesson_time <= CURRENT_DATE 
	--AND lessons.lesson_time <= '2024-12-10' -- testing interval
GROUP BY
    instructor.id
HAVING
    COUNT(*) > 1 
ORDER BY
    "No of lessons" DESC;

-- Query 4:

SELECT
    to_char(ensemble.schedule_time_slot, 'FMDay') AS "Day",
    ensemble.target_genre AS "Genre",
    CASE
        WHEN (ensemble.max_capacity - COUNT(se.student_id)) = 0 THEN 'No seats'
        WHEN (ensemble.max_capacity - COUNT(se.student_id)) BETWEEN 1 AND 2 THEN '1 or 2 Seats'
    ELSE 'Many Seats'
    END AS "No of Free Seats"
FROM
    ensemble
LEFT JOIN student_ensemble se ON ensemble.id = se.ensemble_id
WHERE
    ensemble.schedule_time_slot::date BETWEEN
        (date_trunc('week', CURRENT_DATE) + INTERVAL '1 week')::date AND
        (date_trunc('week', CURRENT_DATE) + INTERVAL '2 week' - INTERVAL '1 day')::date
GROUP BY
	ensemble.id
ORDER BY
    EXTRACT(ISODOW FROM ensemble.schedule_time_slot),
    "Genre";





-- reset sequence

ALTER SEQUENCE public.address_id_seq RESTART WITH 1;
ALTER SEQUENCE public.ensemble_id_seq RESTART WITH 1;
ALTER SEQUENCE public.group_lesson_id_seq RESTART WITH 1;
ALTER SEQUENCE public.historical_database_id_seq RESTART WITH 1;
ALTER SEQUENCE public.individual_lesson_id_seq RESTART WITH 1;
ALTER SEQUENCE public.instructor_id_seq RESTART WITH 1;
ALTER SEQUENCE public.instrument_id_seq RESTART WITH 1;
ALTER SEQUENCE public.instrument_taught_id_seq RESTART WITH 1;
ALTER SEQUENCE public.place_id_seq RESTART WITH 1;
ALTER SEQUENCE public.pricing_scheme_id_seq RESTART WITH 1;
ALTER SEQUENCE public.student_id_seq RESTART WITH 1;