select top 3 studs.Имя,studs.Фамилия,studs.Отчество from 
 (select Students.Name as Имя ,Students.Last_name as Фамилия ,Students.Second_name as Отчество,avg(Marks.Mark) as average from Students join Marks on Students.Student_id= Marks.Student
 group by Students.Name,Students.Last_name,Students.Second_name) studs