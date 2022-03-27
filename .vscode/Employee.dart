class Employee{
  static String empDept = 'hjjk';
  String empName = 'saad';
  int empSalary =7888;
  showEmpInfo(){
    print("Employee's Name is: ${empName}");
    print("Employee's Salary is : ${empSalary}");
    print("Employee's Dept is : ${empDept}");
  }
}

  void main(){
    Employee emp1 = new Employee(); 
    Employee emp2 = new Employee(); 
    Employee.empDept = "MIS"; 

    print("Dart static keyword example");
    emp1.empName = 'Johan';
    emp1.empSalary = 55000;
    emp1.showEmpInfo();

    emp2.empName = 'Keith';
    emp2.empSalary = 50000;
    emp2.showEmpInfo();
  }
