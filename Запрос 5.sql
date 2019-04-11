select Students.Last_name,Students.Name,students.Second_name,avg(Marks.Mark) as Средняя_оценка,Lessons.Year from Students 
join Marks on Students.Student_id=Marks.Student
join Lessons on Marks.Lesson=Lessons.Lesson_id
group by Students.Last_name,Students.Name,students.Second_name,Lessons.Year