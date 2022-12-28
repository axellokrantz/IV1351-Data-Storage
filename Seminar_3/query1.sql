DROP VIEW month_lessons;

-- Show the number of lessons given per month during a specified year, sort by type of lesson.
-- query #1

CREATE VIEW month_lessons AS
    SELECT DISTINCT EXTRACT(YEAR FROM start_time) AS year, EXTRACT(MONTH FROM start_time) AS month,
        SUM(CASE WHEN max_num_students = 1 AND min_num_students = 1 THEN 1 ELSE 0 END) AS individual_lesson,
        SUM(CASE WHEN min_num_students > 1 AND ensemble.lesson_id IS NULL THEN 1 ELSE 0 END) AS group_lesson,
        SUM(CASE WHEN lesson.id = ensemble.lesson_id THEN 1 ELSE 0 END) AS ensemble_lesson,
        COUNT (*) AS number_of_lessons_month
    FROM lesson
	FULL JOIN ensemble
	ON lesson.id = ensemble.lesson_id
    GROUP BY EXTRACT(YEAR FROM start_time), EXTRACT(MONTH FROM start_time);

-- example:
EXPLAIN ANALYZE(SELECT * FROM month_lessons WHERE year = 2022);