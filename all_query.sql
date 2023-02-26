-- 1 Знайти 5 студентів із найбільшим середнім балом з усіх предметів
SELECT s.fullname, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g 
JOIN students s ON s.id = g.student_id 
GROUP BY s.fullname 
ORDER BY average_grade DESC 
LIMIT 5;

-- 2 Знайти студента із найвищим середнім балом з певного предмета
SELECT d.name, s.fullname, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g 
JOIN students s ON s.id = g.student_id 
JOIN disciplines d ON d.id = g.discipline_id 
WHERE d.id = 5
GROUP BY s.fullname 
ORDER BY average_grade DESC 
LIMIT 1;

-- 3 Знайти середній бал у групах з певного предмета
SELECT d.name, gr.name, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g 
JOIN students s ON s.id = g.student_id 
JOIN disciplines d ON d.id = g.discipline_id 
JOIN [groups] gr ON gr.id = s.group_id 
WHERE d.id = 6
GROUP BY gr.name , d.name 
ORDER BY average_grade DESC;

-- 4 Знайти середній бал на потоці (по всій таблиці оцінок)
SELECT ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g;

-- 5 Знайти які курси читає певний викладач
SELECT t.fullname, d.name
FROM disciplines d 
JOIN teachers t ON t.id = d.teacher_id 
ORDER BY teacher_id;

-- 6 Знайти список студентів у певній групі
SELECT s.fullname, g.name
FROM students s 
JOIN 'groups' g ON s.group_id  = g.id
WHERE g.id = 4;

-- 7 Знайти оцінки студентів у окремій групі з певного предмета
SELECT  s.fullname, g.name, d.name
FROM grades gr 
JOIN students s ON gr.student_id = s.id 
JOIN 'groups' g ON s.group_id  = g.id
JOIN disciplines d ON  d.id = gr.discipline_id 
WHERE g.id = 4 AND d.id = 2
ORDER BY s.fullname;

-- 8 Знайти середній бал, який ставить певний викладач зі своїх предметів
SELECT d.name, ROUND(AVG(gr.grade), 2)
FROM grades gr 
JOIN disciplines d  ON d.id = gr.discipline_id 
JOIN teachers t   ON t.id = gr.discipline_id 
WHERE d.teacher_id  = 2
GROUP BY d.id;


-- 9 Знайти список курсів, які відвідує студент
SELECT d.name, s.fullname
FROM grades gr
JOIN disciplines d ON d.id = gr.discipline_id 
JOIN students s ON s.id = gr.student_id 
WHERE gr.student_id = 6
GROUP BY d.name, s.fullname;

-- 10 Список курсів, які певному студенту читає певний викладач
SELECT s.fullname, d.name, t.fullname
FROM grades gr
JOIN disciplines d ON d.id = gr.discipline_id 
JOIN students s ON s.id = gr.student_id 
JOIN teachers t ON t.id = d.teacher_id 
WHERE s.id = 12 and t.id = 2
GROUP BY d.name, s.fullname, t.fullname;



