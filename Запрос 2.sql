select top 3 studs.���,studs.�������,studs.�������� from 
 (select Students.Name as ��� ,Students.Last_name as ������� ,Students.Second_name as ��������,avg(Marks.Mark) as average from Students join Marks on Students.Student_id= Marks.Student
 group by Students.Name,Students.Last_name,Students.Second_name) studs