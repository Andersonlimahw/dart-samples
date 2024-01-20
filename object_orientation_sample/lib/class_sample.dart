buildDevelopers({required int amountOfDevelopers}) {
  for (var i = 0; i < amountOfDevelopers; i++) {
    Developer developer = Developer(
      name: "Lemon.dev $i",
      stack: "Full stack",
      salary: i * 1000,
    );
    developer.handleIsAvaliable(salaryTarget: 5000);
    print(developer.toString());
  }
}

class Developer {
  String name;
  String stack;
  int salary;
  bool? avaliable;

  Developer({
    required this.name,
    required this.stack,
    required this.salary,
    this.avaliable,
  });

  @override
  String toString() {
    return 'Developer(name: $name, stack: $stack, salary: $salary, avaliable: $avaliable)';
  }

  void handleIsAvaliable({required int salaryTarget}) {
    avaliable = salary < salaryTarget;
  }
}
