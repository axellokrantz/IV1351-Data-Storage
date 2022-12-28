DROP VIEW sibling_count;

-- Show how many students there are with no sibling, with one sibling, with two siblings, etc
-- query #2

CREATE VIEW sibling_count AS
	WITH num_siblings_foreach_student AS (
		SELECT student.person_id, COALESCE(COUNT(sibling.student_id), 0) AS siblings
		FROM student
		LEFT JOIN sibling
		ON student.person_id = sibling.student_id
		GROUP BY student.person_id)
		
		SELECT COUNT(*) AS number_of_students, siblings
		FROM num_siblings_foreach_student
		GROUP BY siblings
		ORDER BY siblings;
	
-- example:
SELECT * FROM sibling_count;