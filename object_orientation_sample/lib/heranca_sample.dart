buildDevelopersWithVariations({required int amountOfDevelopers}) {
  for (var i = 0; i < amountOfDevelopers; i++) {
    Developer developer = Developer(
      name: "Lemon.dev $i",
      business: "XP Inc",
      salary: i * 9000,
    );
    developer.handleIsAvaliable(salaryTarget: 5000);
    print(developer.toString());

    FullStackDeveloper fullStackDeveloper = FullStackDeveloper(
        name: "Tony.dev $i",
        business: "Google",
        salary: i * 4000,
        stack: ".net core, csharp, azure, react, typescript");
    print(fullStackDeveloper.toString());

    BackEndDeveloper backEndDeveloper = BackEndDeveloper(
        name: "Tony.dev $i",
        business: "Google",
        salary: i * 3000,
        database: "SQL, Mongodb",
        cloud: false,
        mainLanguage: "csharp");
    print(backEndDeveloper.toString());

    FrontEndDeveloper frontEndDeveloper = FrontEndDeveloper(
      name: "Alice.dev",
      business: "Facebook",
      salary: i * 5500,
      mainLanguage: "Javascript",
      mainFramework: "Reactjs",
      knowTests: true,
      multiplatform: false,
    );
    print(frontEndDeveloper.toString());
    MobileDeveloper mobileDeveloper = MobileDeveloper(
      name: "Lemon.dev $i",
      business: "XP Inc",
      salary: i * 12000,
      multiplatform: true,
      mainLanguage: "Dart",
    );
    mobileDeveloper.handleIsAvaliable(salaryTarget: 15000);
    print(mobileDeveloper.toString());
  }
}

class Developer {
  String name;
  String business;
  int salary;
  bool? avaliable;

  Developer({
    required this.name,
    required this.business,
    required this.salary,
    this.avaliable,
  });

  @override
  String toString() {
    return 'Developer(name: $name, business: $business, salary: $salary, avaliable: $avaliable)';
  }

  void handleIsAvaliable({required int salaryTarget}) {
    avaliable = salary < salaryTarget;
  }
}

class FullStackDeveloper extends Developer {
  String stack;

  FullStackDeveloper(
      {required super.name,
      required super.business,
      required super.salary,
      required this.stack});

  @override
  String toString() {
    return 'FullStackDeveloper(name: $name, business: $business, salary: $salary, avaliable: $avaliable, stack: $stack)';
  }
}

class BackEndDeveloper extends Developer {
  String database;
  String mainLanguage;
  bool cloud;

  BackEndDeveloper({
    required super.name,
    required super.business,
    required super.salary,
    required this.database,
    required this.mainLanguage,
    required this.cloud,
  });

  @override
  String toString() {
    return 'Developer(name: $name, business: $business, salary: $salary, avaliable: $avaliable, database: $database)';
  }
}

class FrontEndDeveloper extends Developer {
  String mainLanguage;
  String mainFramework;
  bool knowTests;
  bool multiplatform;

  FrontEndDeveloper({
    required super.name,
    required super.business,
    required super.salary,
    required this.mainLanguage,
    required this.mainFramework,
    required this.knowTests,
    required this.multiplatform,
  });
}

class MobileDeveloper extends Developer {
  bool multiplatform;
  String mainLanguage;

  MobileDeveloper({
    required String name,
    required String business,
    required int salary,
    required this.multiplatform,
    required this.mainLanguage,
  }) : super(name: name, business: business, salary: salary);
}
