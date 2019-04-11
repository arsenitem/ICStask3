select debtors.l as Предмет,max(debtors.amount) as Количество_Должников from
(select Lessons.Lesson as l,count(Marks.Mark) as amount
from Lessons
join Marks on Marks.Lesson=Lessons.Lesson_id
where Lessons.Year='2018' and Marks.Mark=0
group by Lessons.Lesson) debtors
group by debtors.l