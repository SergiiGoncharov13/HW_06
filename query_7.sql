-- 7 Знайти оцінки студентів у окремій групі з певного предмета
SELECT  s.fullname, g.name, d.name
FROM grades gr 
JOIN students s ON gr.student_id = s.id 
JOIN 'groups' g ON s.group_id  = g.id
JOIN disciplines d ON  d.id = gr.discipline_id 
WHERE g.id = 4 AND d.id = 2
ORDER BY s.fullname;