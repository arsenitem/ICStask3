
	select main.�������,main.���,main.�������� from 
	(select s.�������,s.���,s.��������, max(s.Amount5) as stolb from
(SELECT Teachers.Last_Name as �������,Teachers.Name as ���,Teachers.Second_Name as ��������,Count(Marks.Mark) AS Amount5 FROM Teachers
JOIN Lessons ON Lessons.Teacher=Teachers.Teacher_id
JOIN Marks ON Marks.Lesson=Lessons.Lesson_id
WHERE Marks.Mark=5 
GROUP BY Teachers.Last_Name,Teachers.Name,Teachers.Second_Name,Marks.Mark) s
GROUP BY s.�������,s.���,s.��������) main
		  where main.stolb=(select max(s.Amount5) as stolb from
(SELECT Teachers.Last_Name as ln,Count(Marks.Mark) AS Amount5 FROM Teachers
JOIN Lessons ON Lessons.Teacher=Teachers.Teacher_id
JOIN Marks ON Marks.Lesson=Lessons.Lesson_id
WHERE Marks.Mark=5 
GROUP BY Teachers.Last_Name,Marks.Mark) s)

