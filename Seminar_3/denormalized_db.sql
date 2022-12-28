CREATE DATABASE soundgood_historical WITH TEMPLATE soundgood;

WITH info_for_extracting_lesson_price AS(
    SELECT DISTINCT lesson.id AS lesson_id, end_time, student_id, current_skill_level, CASE
        WHEN max_num_students = 1 THEN 'Individual'
        WHEN lesson.id != ensemble.lesson_id THEN 'Group'
        ELSE 'Ensemble'
    END AS lesson_type
    FROM lesson, booking, instrument, skill_level, ensemble
    WHERE lesson.id = booking.lesson_id AND
            booking.instrument_id = instrument.id AND
            skill_level.instrument_id = instrument.id AND
            end_time <= now()
    ORDER BY lesson_id
)

SELECT lesson_id, student_id, amount
INTO denormalized_lesson
FROM info_for_extracting_lesson_price AS info, pricing_and_salary_scheme AS scheme
WHERE     scheme.lesson_type = info.lesson_type AND 
        skill_level = current_skill_level AND
        scheme.id < 10;
        
DROP TABLE     classroom, person, person_info, phone_number, pricing_and_salary_scheme,
            sibling_discount, soundgood_music_staff, student, application, contact_person,
            instructor, instrument, instrument_for_rent, lesson, person_phone_number,
            rental_period, sibling, skill_level, available_time_slot, booking, ensemble;