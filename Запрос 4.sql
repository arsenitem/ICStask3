use University;
select Faculties.Faculty,avg(Marks.Mark) as �������_������ from Students 
join Marks on Students.Student_id=Marks.Student
join Faculties on Students.Faculty=Faculties.Faculty_id
group by Faculties.Faculty
order by �������_������ desc

