insert into Student
values(6,'nadeen','3/5/2006','female','elzamalk','second',1,1,3)
select * from Student
update Parent set par_name='hazem' where par_id=1
select* from Parent
insert into parent 
values(6,'ramy','01025984631')
delete from Parent where par_id=6
select*from Parent
select*from Teacher
select teacher_name,salary  from Teacher order by salary
select teacher_name,salary  from Teacher order by salary desc
select * from Teacher where teacher_name='lobna'and address='cairo'
select * from Teacher where teacher_name='kamal'or address='cairo'
select teacher_name, salary from Teacher where salary in (1250,5400)
select teacher_name, salary from Teacher where salary between 1250 and 5400
select school_name,stu_name from School,Student where Student.school_id =School.school_id
select * from Student 
where stu_name LIKE '%a' 
select * from Student 
where stu_name LIKE 'a%' 
select max(salary) from Teacher
select min(salary) from Teacher
select sum(salary) from Teacher
select count(teacher_id) from Teacher
alter table Teacher add street varchar(50) ,
work_hour int
alter table Teacher alter column teacher_name nvarchar(60)
alter table Teacher drop column work_hour
alter table Teacher add constraint teacher_name_unique unique (teacher_name)
alter table teacher drop constraint teacher_name_unique
select*from Parent
insert into Parent (par_name,par_id)
values ('ali',6), ('ali',7),('ali',8)
update Parent set par_name='marwan' where par_id=8
update Parent set par_name='zain' where par_id=7
select teacher_name +' ' +address as infrom from Teacher
select distinct address from Teacher
select *from School
select teacher_name,email ,school_name from Teacher join School on Teacher.school_id=School.school_id
select COUNT(*) as number,min(salary)as lowsal,max(salary)as heighsal,sum(salary)as summ 
from Teacher join School on School.school_id=Teacher.school_id
select *from Teacher
select school_name,COUNT(*) as number,min(salary)as lowsal,max(salary)as heighsal,sum(salary)as summ from Teacher join School on School.school_id=Teacher.school_id
group by school_name
select top 5 teacher_name,salary from Teacher order by salary desc
select top 5 with ties teacher_name,salary from Teacher order by salary desc
select teacher_name,salary from Teacher where salary=(select max(salary)from Teacher)
create view information_student
as
select stu_name,par_name,gender,school_name,grade_level from Student join
School on School.school_id=Student.school_id join Parent on Parent.par_id=Student.par_id
select *from information_student
select *from School
select * from School 
where school_name LIKE '%d%' 