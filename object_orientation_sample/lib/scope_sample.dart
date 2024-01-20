// escopo global pode ser utilizado em qualquer momento
int scope({required name, required age}) {
  int salary = salaryByAge(age);

// escopo local pode ser apenas dentro de scope
  void toString() {
    print('Scope: name $name, age $age, salary: $salary');
  }

  return salary;
}

// escopo global pode ser utilizado em qualquer momento
int salaryByAge(int age) {
  dynamic salarys = {
    0: 0,
    10: 200,
    18: 5000,
    25: 9000,
    30: 11000,
    40: 15000,
  };
  return salarys[age] ?? 0;
}
