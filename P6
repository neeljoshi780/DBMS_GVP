(6).

#1. Show Employee name, employee department name, Boss name, Boss department name.
select emp.emp_name as Employee_Name,dept.dept_name as Employee_Department,bossname.emp_name as Boss_Name,bossd.dept_name as Boss_Department from
emp,dept,emp as bossname,dept as bossd where
emp.emp_dept_id=dept.dept_id and emp.emp_boss_id=bossname.emp_id and bossname.emp_dept_id=bossd.dept_id;

#2. Show Employee name, employee department name, Boss name, Boss department name where employee salary greter then boss salary.

select emp.emp_name as Employee_Name,dept.dept_name as Employee_Department, emp.emp_salary as emp_Salary, bossname.emp_name as Boss_Name,bossd.dept_name as Boss_Department,bossname.emp_salary from
emp,dept,emp as bossname,dept as bossd where
emp.emp_dept_id=dept.dept_id and emp.emp_boss_id=bossname.emp_id and bossname.emp_dept_id=bossd.dept_id and emp.emp_salary>bossname.emp_salary;
