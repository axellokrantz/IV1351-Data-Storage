DROP VIEW instructor_lessons_per_month;

-- List all instructors who has given more than a specific number of lessons during the current month.
-- query #3

CREATE VIEW instructor_lessons_per_month AS
	SELECT instructor_id, COUNT(*) AS lessons
	FROM lesson
	WHERE 	now() > start_time AND
			EXTRACT(MONTH FROM now()) = EXTRACT(MONTH FROM start_time) AND
			EXTRACT(YEAR FROM now()) = EXTRACT(YEAR FROM start_time) AND
			min_num_students <= (SELECT COUNT(*) FROM booking WHERE lesson_id = lesson.id)
	GROUP BY instructor_id
	ORDER BY COUNT(*) DESC;
	
SELECT instructor_id, lessons
FROM instructor_lessons_per_month
WHERE lessons > 1;