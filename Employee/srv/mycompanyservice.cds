using mycompany.hr from '../db/Employee';

service employeedata {

 entity Employees as projection on hr.Employee;
  entity Department as projection on hr.Department;
   entity Salary as projection on hr.Salary;
 

}
