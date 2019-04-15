use University;
select Faculties.Faculty,avg(Marks.Mark) as Средняя_оценка from Students 
join Marks on Students.Student_id=Marks.Student
join Faculties on Students.Faculty=Faculties.Faculty_id
group by Faculties.Faculty
order by Средняя_оценка desc

