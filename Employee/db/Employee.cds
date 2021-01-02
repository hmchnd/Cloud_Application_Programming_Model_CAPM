namespace mycompany.hr;

entity Employee {
    key emp_id:String(30);
    emp_name:String(30);
    designation:String(30);
    salary:String(30);
    date_of_joining:Date;
    work_location:String(30);
    department_name:String(30);
}

entity Department {
department_id:String(30);
department_name:String(30);

}

entity Salary {
designation:String(30);
salary:String(30);

}
