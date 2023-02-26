-- 8 Знайти середній бал, який ставить певний викладач зі своїх предметів
SELECT d.name, ROUND(AVG(gr.grade), 2)
FROM grades gr 
JOIN disciplines d  ON d.id = gr.discipline_id 
JOIN teachers t   ON t.id = gr.discipline_id 
WHERE d.teacher_id  = 2
GROUP BY d.id;
