class Person {
  String name;
  int age;
  double salary;
  String site;

  Person(this.name, this.age, this.salary, this.site);

  @override
  String toString() => 'Name: $name Age: $age, Salary: $salary, Site: $site';
}
