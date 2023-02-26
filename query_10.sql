-- 10 Список курсів, які певному студенту читає певний викладач
SELECT s.fullname, d.name, t.fullname
FROM grades gr
JOIN disciplines d ON d.id = gr.discipline_id 
JOIN students s ON s.id = gr.student_id 
JOIN teachers t ON t.id = d.teacher_id 
WHERE s.id = 12 and t.id = 2
GROUP BY d.name, s.fullname, t.fullname;