
	select main.Фамилия,main.Имя,main.Отчество from 
	(select s.Фамилия,s.Имя,s.Отчество, max(s.Amount5) as stolb from
(SELECT Teachers.Last_Name as Фамилия,Teachers.Name as Имя,Teachers.Second_Name as Отчество,Count(Marks.Mark) AS Amount5 FROM Teachers
JOIN Lessons ON Lessons.Teacher=Teachers.Teacher_id
JOIN Marks ON Marks.Lesson=Lessons.Lesson_id
WHERE Marks.Mark=5 
GROUP BY Teachers.Last_Name,Teachers.Name,Teachers.Second_Name,Marks.Mark) s
GROUP BY s.Фамилия,s.Имя,s.Отчество) main
		  where main.stolb=(select max(s.Amount5) as stolb from
(SELECT Teachers.Last_Name as ln,Count(Marks.Mark) AS Amount5 FROM Teachers
JOIN Lessons ON Lessons.Teacher=Teachers.Teacher_id
JOIN Marks ON Marks.Lesson=Lessons.Lesson_id
WHERE Marks.Mark=5 
GROUP BY Teachers.Last_Name,Marks.Mark) s)

