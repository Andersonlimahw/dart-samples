import 'package:initial_project/person.dart';

void main() {
  // variáveis:
  // int, double, String, bool, dynamic (qualquer tipo) e var (inferência de tipo) }
  // As variáveis podem ser inicializadas com valor ou não, porém a boa prática é inicializar com valor
  numbers();
  booleans();
  strings();
  calculate();

  // Lists
  cast();
  lists();
  listsByIndex(2);
  listsWithCustomClass();
  filterList('Anderson Lima');
  finalSample('Lemon');
  constSample();
  varSample();

  // Condicionais
  isAdult(30);
  isAdult(13);

  // Loops
  forInSample();
  forSample();
  whileSample();
  doWhileSample();
}

int calculate() {
  return 6 * 7;
}

void numbers() {
  int age = 30;
  double salary = 15997.99;
  print('age: $age');
  print('salary: $salary');
}

void strings() {
  String name = 'John Doe';
  print('name $name');
}

void booleans() {
  // Boolean
  bool isValid = true;
  print('isValid: $isValid');
}

void cast() {
  // Cast
  int age = 30;
  String ageString = age.toString();
  print('ageString: $ageString');
}

void varSample() {
  var name = 'John Doe'; // tipage implicita
  print(name);
}

void finalSample(String value) {
  // Permite alterar apenas uma vez.
  final String initialValue;
  initialValue = value;
  print(initialValue);
}

void constSample() {
  // valor imutável
  const String initialValue = 'Lemon';
  print(initialValue);
}

// Lists
void lists() {
  List<String> names = ['John', 'Doe', 'Lemon', 'Anderson'];
  print(names);
}

void listsByIndex(int index) {
  List<String> names = ['John', 'Doe', 'Lemon', 'Anderson'];
  print(names[index]);
}

List<Person> listsWithCustomClass() {
  Person person = Person('Anderson Lima', 30, 25000.00, 'https://lemon.dev.br');
  Person secondPerson =
      Person('Tony Lima', 20, 35000.00, 'https://tony.dev.br');
  List<Person> people = [person, secondPerson];
  print(people);
  return people;
}

Person filterList(String name) {
  Person person = Person('Anderson Lima', 30, 25000.00, 'https://lemon.dev.br');
  Person secondPerson =
      Person('Tony Lima', 20, 35000.00, 'https://tony.dev.br');
  List<Person> people = [person, secondPerson];
  print(people);

  return people.firstWhere(
      (personItem) => personItem.name.toLowerCase() == name.toLowerCase());
}

// Condicionais

bool isAdult(int age) {
  bool validAge = false;
  int deadlineAge = 18;
  if (age >= deadlineAge) {
    validAge = true;
  }
  print('Maior de idade: $validAge, idade: $age');
  return validAge;
}

// Loops

void forSample() {
  for (int i = 0; i < 5; i++) {
    print('Concluído $i voltas');
  }
}

void forInSample() {
  var list = listsWithCustomClass();
  for (var item in list) {
    print(item);
  }
}

void whileSample() {
  // válido quando o for não atender a necessidade, pois não sabemos o tamanho do loop.
  // compara antes
  int energia = 10;
  while (energia > 0) {
    print('While concluído $energia voltas');
    energia = energia - 2;
  }
}

void doWhileSample() {
  // válido quando o for não atender a necessidade, pois não sabemos o tamanho do loop.
  // compara depois
  int energia = 10;
  do {
    {
      print('Do while concluído $energia voltas');
      energia = energia - 2;
    }
  } while (energia > 0);
}
