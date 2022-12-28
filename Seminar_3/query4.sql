DROP MATERIALIZED VIEW ensemble_lessons_next_week;

-- List all ensembles held during the next week, sorted by music genre and weekday.
-- For each ensemble tell whether it's full booked, has 1-2 seats left or has more seats left.
-- query #4

CREATE MATERIALIZED VIEW ensemble_lessons_next_week AS
	WITH number_of_students_per_lesson AS (
		SELECT booking.lesson_id, COUNT(*) AS number_of_students
		FROM booking, lesson, ensemble
		WHERE
			lesson.id = booking.lesson_id AND
			ensemble.lesson_id = lesson.id
		GROUP BY booking.lesson_id
	)
	
	SELECT to_char(start_time, 'Day') AS day, genre, start_time,
		CASE
			WHEN number_of_students = max_num_students THEN 'No seats left'
			WHEN number_of_students = max_num_students - 1 THEN 'One seat left'
			WHEN number_of_students = max_num_students - 2 THEN 'Two seats left'
			ELSE 'Many seats left'
		END AS availability
	FROM lesson, ensemble
	INNER JOIN number_of_students_per_lesson ON ensemble.lesson_id = number_of_students_per_lesson.lesson_id
	WHERE 
		lesson.id = ensemble.lesson_id AND
		EXTRACT(DOW FROM start_time) != '0' AND
		EXTRACT(DOW FROM start_time) != '6' AND
		date_trunc('week',now()) + interval '1 week' = date_trunc('week',start_time);
	
-- example
EXPLAIN ANALYZE(SELECT * FROM ensemble_lessons_next_week);