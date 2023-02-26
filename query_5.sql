-- 5 Знайти які курси читає певний викладач
SELECT t.fullname, d.name
FROM disciplines d 
JOIN teachers t ON t.id = d.teacher_id 
ORDER BY teacher_id;