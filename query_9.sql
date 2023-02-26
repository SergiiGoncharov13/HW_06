-- 9 Знайти список курсів, які відвідує студент
SELECT d.name, s.fullname
FROM grades gr
JOIN disciplines d ON d.id = gr.discipline_id 
JOIN students s ON s.id = gr.student_id 
WHERE gr.student_id = 6
GROUP BY d.name, s.fullname;