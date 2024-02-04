# [Mobile] : Dart

Documentação: https://cursos.alura.com.br/course/dart-variaveis-listas/task/102249
Status: DOING
Data de criação: December 25, 2023 7:38 AM
#cursos: Dart, Flutter, Mobile
Scholl: Alura
Repositório: https://github.com/Andersonlimahw/dart-samples
Author / Teacher: Alura
Data de edição: February 4, 2024 12:27 PM
Data de conclusão: February 2, 2024
Progresso: ⭐⭐⭐⭐⭐

# Anotações

January 20, 2024 

Dart é uma linguagem fortemente tipada  como o c#.

Com uma forte comunidade e suporte da Google. 

Implementações no repo: [https://github.com/Andersonlimahw/dart-samples?tab=readme-ov-file](https://github.com/Andersonlimahw/dart-samples?tab=readme-ov-file)

- [ ]  Exportar Conteúdo para HTML

# Módulo : 1

# Oque é dart

Linguagem de programação com interoperabilidade com javascript por exemplo

é orientada a objetos como C#, Java e Typescript.

# Pq Dart

Facilidade

Documentação 

Perfomance

Linguagem suportada pelo google e ascenssão no mercado 

Flutter é um framework que utiliza dart ( front-end ), para desenvolvimento multi-plataforma.

Flame ( jogos ) 

Jaguar ( back-end)

![Untitled](%5BMobile%5D%20Dart%200f08d9bbf00140b18700e4cca658f2fe/Untitled.png)

Grandes empresas já utilizam como: 

- Google
- Ifood
- XP Inc

Criada em 2012 para destronar o javascript 😁🤣

Fluuter foi lançado em 2017

# Setup

[https://dart.dev/tools](https://dart.dev/tools)

cli:

[https://dart.dev/tools/dart-tool](https://dart.dev/tools/dart-tool)

## Listas

ver métodos de listas

[https://codeburst.io/top-10-array-utility-methods-you-should-know-dart-feb2648ee3a2](https://codeburst.io/top-10-array-utility-methods-you-should-know-dart-feb2648ee3a2)

Exemplo de class + lista

```dart
class Person {
  String name;
  int age;
  double salary;
  String site;

  Person(this.name, this.age, this.salary, this.site);

  @override
  String toString() => 'Name: $name Age: $age, Salary: $salary, Site: $site';
}
```

```dart
import 'package:initial_project/person.dart';

void main() {
	listsWithCustomClass();
}

void listsWithCustomClass() {
  Person person = Person('Anderson Lima', 30, 25000.00, 'https://lemon.dev.br');
  Person secondPerson =
      Person('Tony Lima', 20, 35000.00, 'https://tony.dev.br');
  List<Person> people = [person, secondPerson];
  print(people);
}
```

# Módulo : 2

# Orientação a objetos

Paradigma é uma esoolha, cada linguagem resolve um problema o Dart e C# utilizam orientação a objetos por exemplo.

Já Javascript, typescript utilizam paradigma funcional.

É como arroz e feijão, cada pessoa escolhe como comer da sua forma preferida.

Obejtos, classes, parentesco

![Untitled](%5BMobile%5D%20Dart%200f08d9bbf00140b18700e4cca658f2fe/Untitled%201.png)

Os paradigmas na programação são como uma metodologia (um estilo) de estruturar e executar a linguagem que usa esse paradigma.

# Funções

Parametros 

void sample(String name) {

/// implementation

}

Parametros nomeados

void createPerson({

required String name,  // obrigatório

String? jobDescription // Opcional

String? city = “SP” // Opcional com Valor default

}) {

/// implementation

}

- **O que são Funções:**
    - Vimos que função é um trecho de código que, dadas algumas informações, faz uma ação e pode devolver algum valor! Essa estrutura pode ser chamada várias vezes no nosso código, assim, ganharmos tempo na hora de escrever e corrigir nossa aplicação. Falando de forma mais técnica: funções são a primeira forma de aplicar o conceito de modularização, o que quer dizer isolar tarefas que vão ser repetidas, isso é útil para criamos códigos mais legíveis, produtivos e eficientes.
- **Como criar Funções no Dart:**
    - Aprendemos que no Dart precisamos definir principalmente 4 aspectos da nossa função: O tipo do retorno dela, seu nome, seus parâmetros e seu código interno.
- **Como configurar os Parâmetros de uma Função no Dart:**
    - Conversamos que existem os parâmetros **Posicionais Obrigatórios** e os **Nomeados Opcionais**, e podemos dar um **Valor Padrão** para parâmetros que poderiam ser nulos e, caso necessário, podemos exigir que um parâmetro seja entregue com o modificador **required**.
- **Como funciona a ideia de Escopo:**
    - Por fim, vimos que desde que começamos a modularizar nosso código, temos que nos preocupar com a ideia de Escopo! **Escopo** é como se fosse o território, o terreno da função. Todo o código que está dentro das chaves `{...}` faz parte do escopo dela, portanto, esse código pertence e pode ser usado apenas por essa função. Para recebermos informações externas à função, podemos usar os parâmetros; para devolver uma informação para fora da função, podemos usar o `return`.

# Classes

Tem o objetivo de representar o mundo real, exemplo:

```kotlin
classFruta{
  String nome;
  String cor;

  Fruta(this.nome,this.cor);

  Fruta.nomeados({requiredthis.nome, requiredthis.cor});

  Fruta.minusculas(this.nome,this.cor){
    nome = nome.toLowerCase();
    cor = cor.toLowerCase();
  }
}
```

- **O que é uma Classe:**
    - Classes são os moldes que usamos para construir e representar coisas do mundo real. A partir desses moldes, podemos construir objetos específicos e com características semelhantes. Falando de forma mais técnica, criar uma classe é uma forma modularizada e produtiva de escrever código. Nelas, conseguimos representar as características de objetos através das Propriedades e suas ações através dos métodos.
- **O que são as Propriedades de uma Classe:**
    - Vimos que as propriedades de uma classe são as características (informações) que desejamos registrar sobre os objetos que serão gerados por essa classe. Aprendemos que algumas informações podem ser informadas já na criação da classe, mas outras precisarão vir externamente via Construtor.
- **O que é o Construtor:**
    - Aprendemos também que Construtores são como aquele “check-list” de passos a serem tomados antes de começar uma viagem: é o método que será executado assim que um objeto dessa classe for criado. A sua principal tarefa normalmente é inicializar as Propriedades, mas os Construtores também podem executar ações iniciais que a classe possa demandar.
- **O que são Métodos:**
    - Por fim, vimos que os Métodos são como funções dentro de uma classe e determinam os comportamentos que os objetos que serão gerados por essa classe terão.
    
    Herança é uma das principais características do Paradigma de Orientação a Objetos, mas por qual motivo? Reflita por um breve instante.
    
    Bem, o motivo é que a **herança permite que classes compartilhem propriedades e métodos, através de (literalmente) "heranças"**. Pense que, em uma família, filhas e filhos podem herdar características e bens das suas mães e pais. Já na programação, é parecido: objetos podem herdar propriedades e métodos.
    
    O principal objetivo de usar herança é reaproveitar código. Isso é feito usando o conceito de “generalização” e de “especificação”, onde a classe-mãe (também chamada de superclasse) possui, em geral, propriedades e métodos mais generalistas, enquanto as classes-filha (também chamadas de subclasses) tornam as propriedades e métodos, recebidos pela superclasse, específicos para seus objetivos.
    
    - **O que é Herança:**
        - Quanto mais complexo fica nosso código, mais classes precisamos criar, e fica muito evidente que muitos parâmetros e métodos se repetem entre classes. Para facilitar a criação de código e melhorar a performance da linguagem dart, temos a opção de adicionar herança às nossas classes! A herança nada mais é que a **possibilidade de herdar dados e ações de outras classes** já criadas, a fim de facilitar o entendimento e organização estrutural do nosso código.
    - **Como utilizar Herança no Dart:**
        - A herança no dart é feita de uma maneira simples: primeiro, devemos criar a classe que será herdada, em seguida, criamos a classe que vai receber a herança. Depois, usamos a palavra `extends` para associar as duas Classes. Por fim, utilizamos o `super`para pegar os dados herdados e utilizá-los na nossa Classe com herança.
    - **Métodos compartilhados:**
        - Uma vez que temos múltiplas classes com herança, começamos a notar que os métodos de cada classe se relacionam da mesma forma. Classes que possuem algum nível de parentesco vertical (Mãe -> Filha) podem utilizar os métodos herdados. Porém, o inverso não é recíproco (Filha ->Mãe), nem mesmo o relacionamento horizontal (Irmã - Irmã) permite a utilização de métodos entre si.
    
    E, assim, encerramos a Aula 4! Lembrando sempre que se tiver dúvidas, não deixe de aparecer lá no fórum!
    
    Só falta mais uma aula para finalizarmos, hein! Vamos lá?
    
    - **O que são Classes Abstratas:**
        - As Classes abstratas (conhecidas em outras linguagens como Interface) são como contratos pré-definidos. Elas são muito usadas para dar um caminho definido para todas as classes que a implementam. Ao criar uma classe abstrata, fazemos os seus métodos sem nenhuma ação, pois dessa forma, as ações são definidas apenas por aqueles que implementam a classe abstrata criada.
    - **Polimorfismo:**
        - Agora, já sabemos extender uma classe (Mãe/Filha) e já sabemos implementar uma classe abstrata (Contrato), e começamos a notar que nem sempre os métodos herdados podem ser úteis a todo momento. Em alguns casos, precisamos alterar esses métodos sem comprometer outras classes, e para isso usamos a `Sobrescrita` com o comando `@override`. O Polimorfismo nada mais é que a habilidade das nossas classes de alterar um método recebido por herança.

# Módulo : 3

# Sintaxe, semantica, enum e switch

- **O que é Sintaxe:**
    - Vimos que toda linguagem, seja ela natural ou de programação, possui uma sintaxe, afinal, sintaxe é um conjunto de regras que definem quais são os termos dessa linguagem, como eles se relacionam e em que ordem são esperados.
- **O que é Sintaxe no Dart:**
    - Notamos que todas as estruturas que usamos no Dart até agora seguem uma sintaxe, e que, quando essa sintaxe não é respeitada, vários erros serão gerados, já que o Dart não compreenderá o que estamos tentando construir.
- **O que são `Enums`:**
    - Aprendemos que `Enums` (Enumeradores) são tipos de dados cujo os valores são exatamente um conjunto finito de identificadores que escolhemos no momento em que estamos construindo o `Enum`. Vimos que eles podem ser usados para tornar nossas comparações mais legíveis e eficientes.
- **O que são Switchs:**
    - Por fim, conhecemos a Estrutura Condicional Switch-Case-Default, que, assim como a If-Else, serve para direcionarmos nosso código a depender do resultado de uma operação booleana - no caso do `Switch`, sempre uma comparação feita usando como base um elemento definido no começo da estrutura.

# Set, Iterables, Maps

Nessa aula, aprendemos conceitos importantes para você continuar nessa trilha de conhecimento. Os conceitos trabalhados aqui serão revistos de forma bem mais prática nas próximas aulas, por isso é importante dominá-los bem. Vamos fazer um resumo?

- **O que são `Sets`:**
    - Vimos que, em Dart, `Sets` são **coleções** que herdam de `Iterable`, assim como as `Lists` e, para fins práticos, podem ser considerados um caso especial de `List` onde todas as entradas são únicas, ou seja, não contêm entradas repetidas. Essa estrutura é útil quando queremos armazenar valores únicos em uma única variável sem considerar a ordem das entradas.
- **O que são *Iterables*:**
    - Vimos também que `Iterable` é uma coleção de valores ou elementos que podem ser acessados sequencialmente. Vimos que essa **classe é abstrata**, ou seja, não podemos instanciar objetos do tipo *Iterable*, mas essa classe é usada como base para as outras estruturas de coleção: `List` e `Sets`.
- **O que são `Maps`:**
    - Por fim, estudamos os `Maps`, um tipo de coleção extremamente útil em aplicações reais como quando acessamos bancos de dados e trocamos informações com APIs. Nessa estrutura, sempre teremos um par contendo uma chave e um valor, onde essa chave dá acesso à leitura e modificação desse valor. É por esse motivo que, em algumas linguagens, ela recebe o nome de “Dicionário”.

# Dynamics, var & static

- **Qual a diferença entre os termos Var e Dynamic:**
    - Aprendemos que `dynamic` é um termo que indica quando um objeto pode alterar de tipagem em tempo de execução, ou seja, quando a aplicação já estiver rodando. Isso é uma característica um tanto quanto interessante e até perigosa, logo, é necessário saber trabalhar com ela para não cometermos erros que podem quebrar nosso código.
- **Qual a diferença entre um dado Estático e um Dinâmico:**
    - `Static` é um termo que indica quando um objeto deve manter seu valor independente da instância que atua sobre ela. Uma propriedade estática faz parte de uma classe, ou seja, não pode ser criada/instanciada por si só.
- **O que são Linguagens Estática e Dinamicamente Tipadas:**
    - Vimos que algumas linguagens de programação são **dinâmicas**, o que significa que podemos alterar facilmente o tipo de um objeto sem problemas, mas isso faz com que o compilador/interpretador não note quando um possível erro pode ocorrer. Um exemplo de linguagem dinâmica é… **Linguagens estáticas**, ou seja, que geralmente não permitem a alteração de tipos de objetos, têm a vantagem de verificarem se o código apresenta algum erro antes de compilar/rodar o projeto. O Dart é um exemplo de linguagem estática!

# Private , Getter, Setter

Se você já estudou algumas outras linguagens de programação, deve se lembrar que muitas delas usam termos específicos para determinar se uma propriedade ou variável vai ser pública (`public`), ou privada (`private`, `protected`). Porém, como vimos no vídeo, o Dart usa apenas um *underline*. Por que essa decisão?

Essa curiosidade é muito bem-vinda, e muitas pessoas programadoras de Dart já tiveram ela, tanto que usaram ferramentas de comunidade (como as *Issues* no GitHub público do Dart Core) para solicitar a mudança. Você pode acompanhar a discussão [nesse link](https://github.com/dart-lang/sdk/issues/33383). A postagem começa com uma proposta do Dart aceitar tanto a sintaxe com underline quanto com as *keywords* (palavras-chave), e depois várias pessoas programadoras argumentam a favor ou contra a mudança proposta.

Então, uma pessoa que desenvolve o Dart vem para dar uma explicação: Ela diz que os termos não são usados, pois o **Dart não usa privacidade baseada em classe, e sim em arquivo/biblioteca**, e por uma série de razões técnicas, essas palavras-chave não seriam condizentes. Após dar a explicação, ele arquiva o tópico.

Mesmo com o tópico arquivado, a discussão continua e há pessoas a favor e contra a adição dos termos. Esse exemplo é muito interessante para mostrar que Dart, como uma linguagem de código aberto e com uma comunidade aquecida, dá a possibilidade de discussão e entendimento de certas nuances diretamente na fonte. Recomendamos bastante a leitura (em inglês) na discussão citada.

E você: qual sua opinião sobre o assunto? Já pensou em argumentos a favor ou contra o uso do underline? Se quiser, sinta-se à vontade para dar sua opinião no fórum ou discord!

- **O que é Encapsulamento:**
    - É notável que existirão situações, tanto no mundo real, quanto na programação, em que precisamos **gerenciar acessos**, isto é, precisamos organizar quais pessoas podem ver ou alterar cada arquivo, ou trecho de código. É para isso que serve o conceito de encapsulamento e os conceitos de “público” e “privado” na programação.
- **O que são Getters e Setters:**
    - Vimos que tornamos uma propriedade privada usando o *underline* antes do nome dela, por exemplo: `_nome`. E, uma vez que essa propriedade se torna privada, usuários da classe (e de instâncias da classe) não podem acessá-la e modificá-la diretamente. Para fazer isso, precisamos criar métodos especiais. Os *getters* (em português, “pegadores”) vão conter o termo `get` e são usados para **leitura** do valor, já os *setters* (em português, ”definidores”) vão conter o termo `set` e são usados para **alteração** do valor.

# Módulo : 4 Error handler

# Projeto base : Error handler

[https://dart.dev/language/error-handling](https://dart.dev/language/error-handling)

[https://api.dart.dev/stable/3.2.6/dart-core/Exception-class.html](https://api.dart.dev/stable/3.2.6/dart-core/Exception-class.html)

[https://api.dart.dev/stable/3.2.6/dart-core/Error-class.html](https://api.dart.dev/stable/3.2.6/dart-core/Error-class.html)

Excecoes: Situacoes que sabemos que acontecerao e nos planejamos

![Untitled](%5BMobile%5D%20Dart%200f08d9bbf00140b18700e4cca658f2fe/Untitled%202.png)

![Untitled](%5BMobile%5D%20Dart%200f08d9bbf00140b18700e4cca658f2fe/Untitled%203.png)

![Untitled](%5BMobile%5D%20Dart%200f08d9bbf00140b18700e4cca658f2fe/Untitled%204.png)

Samples

```dart
try {
  breedMoreLlamas();
} on OutOfLlamasException {
  // A specific exception
  buyMoreLlamas();
} on Exception catch (e) {
  // Anything else that is an exception
  print('Unknown exception: $e');
} catch (e) {
  // No specified type, handles all
  print('Something really unknown: $e');
}
```

StackTrace

```dart
try {
  // ···
} on Exception catch (e) {
  print('Exception details:\n $e');
} catch (e, s) {
  print('Exception details:\n $e');
  print('Stack trace:\n $s');
}
```

Pilha de exceções

Pilha se tira e adicione sempre de cima para baixo.

![Untitled](%5BMobile%5D%20Dart%200f08d9bbf00140b18700e4cca658f2fe/Untitled%205.png)

Dart devtools debugger
[https://dart.dev/tools/dart-devtools](https://dart.dev/tools/dart-devtools)

# Erros e exceções

- **Qual a diferença entre Erros e Exceções:**
    - Aprendemos que nem sempre nossas aplicações seguirão pelo caminho perfeito, e que erros e situações excepcionais podem acontecer. Agora conseguimos diferenciar esses dois conceitos:
        - “Erros” são os problemas que não temos total controle e não fazem parte do fluxo esperado no nosso *modelo de negócios*, quando estamos programando podemos até antecipar que erros vão acontecer, mas não é nossa função tratá-los em tempo de execução.
        - “Exceções” são as situações excepcionais que fogem do “caminho feliz” previsto no fluxo do nosso *modelo de negócios*. Essas situações sim, nós devemos antever, tratar e resolver da melhor forma possível para nossa pessoa usuária.
- **O que é a Pilha de Execução:**
    - Vimos também que um conceito importante para compreensão das exceções é o da Pilha de Execução, que é uma forma de representar como o Sistema Operacional prioriza a leitura do código que nós escrevemos na nossa aplicação.
- **O que é o Depurador e o Modo de Depuração:**
    - Aprendemos, por fim, que nos nossos Ambientes de Desenvolvimento (IDEs) não temos apenas a opção de “Rodar” o nosso código, temos também a opção de “Depurar” (Debug). A opção Debug roda nosso código em Modo de Depuração, abrindo para gente uma nova aba chamada “Depurador”. Nela temos a visão de várias novas ferramentas que permitem uma análise linha a linha do nosso código, coisa que não seria possível no modo de “Rodar” que estamos acostumados.

# Asserts

[https://dart.dev/tools/linter-rules/prefer_asserts_with_message](https://dart.dev/tools/linter-rules/prefer_asserts_with_message)

asserts executam apenas em ambiente de desenvolvimento.

Exemplo validação de classes

```dart
class Account {
  String id;
  String name;
  double balance;
  bool isAuthenticated;

  Account({
    required this.id,
    required this.name,
    required this.balance,
    required this.isAuthenticated,
  })  : assert(name.trim().isNotEmpty, 'Nome não pode ser uma string vazia'),
        assert(balance > 0, 'Balance deve ser maior do que zero'),
        assert(id.isNotEmpty, 'Id é obrigatório'),
        assert(isAuthenticated, 'Usuário deve estar autenticado');

  editBalance({required value}) {
    balance = balance + value;
  }

  @override
  String toString() {
    String message =
        'Account => Id: $id name: $name, balance: $balance, isAuthenticated: $isAuthenticated';
    print(message);
    return message;
  }
}
```

# Para saber mais

Finalizamos nosso conteúdo a respeito de Exceções, e seguindo com nosso ímpeto de incentivar a leitura da documentação, deixamos uma lista de recomendações para leitura (toda em inglês) a respeito do tema:

- [Language Tour | Dart - Exceptions](https://dart.dev/guides/language/language-tour#exceptions) - O “Language Tour” é um documento que reúne o mínimo que você precisa saber sobre os mais importantes assuntos da linguagem. E no link que disponibilizamos você encontra a sessão que fala a respeito de Exceções;
- [Language Tour | Dart - Assert](https://dart.dev/guides/language/language-tour#assert) - Texto do “Language Tour” sobre os Asserts;
- [Dart-Core | Exception Class](https://api.dart.dev/stable/2.17.3/dart-core/Exception-class.html) - Documentação da classe `Exception` presente na linguagem, onde você encontra uma documentação mais técnica que explica questões como Heranças, Interfaces, Propriedades, Contrutores e Métodos da classe, que no caso é a Exception;
- [Dart-Core | Erro Class](https://api.dart.dev/stable/2.17.3/dart-core/Error-class.html) - Documentação da classe `Error` presente na linguagem.

Lembre-se que a leitura da documentação também é um passo muito importante para você aprender e compreender o processo como um todo. Por isso, não deixe de fazê-la.

# Resumo error handler

**Como lançar uma Exceção:**

- Aprendemos que com a palavra-chave `throw` podemos lançar uma exceção, ou seja, parar a execução do código naquela sub-rotina (função) e enviar um objeto-exceção para quem estiver abaixo na Pilha de Execução. Se essa exceção lançada passar por todos os quadros da pilha sem ser tratado, ela terminará a execução do código com uma saída de insucesso. E abordamos que o Dart permite enviarmos qualquer objeto no `throw`, mas que códigos de qualidade, principalmente em ambiente de produção, lançam apenas objetos de tipos que implementam `Exception` ou `Error`.

**Como criar uma exceção personalizada:**

- Aprendemos que o processo de criar uma exceção personalizada consiste basicamente em criar uma classe que implementa a classe abstrata `Exception`, e que, uma vez criada, podemos lançar nossas exceções com o throw e capturá-las com a estrutura try-on-cath-finally.

**Como criar e usar propriedades e métodos para nossas Exceções Personalizadas:**

- Também aprendemos que, como uma classe, podemos criar membros (propriedades e métodos) para uma Exceção, que estarão disponíveis para acesso ao capturarmos nossa Exceção com o `catch`.

**O que é e como usar o Assert:**

- Por fim, aprendemos que podemos usar o comando `assert` para fazer verificações apenas em ambiente de desenvolvimento que tenha o comando de terminal `-enable-asserts` ativado. Essa ferramenta é útil para fazer testes com o AssertionError, que para a execução do nosso programa, mas só apenas em tempo de desenvolvimento, não afetando o código que chegará à pessoa usuária.

**Concluímos a nossa terceira aula!**

Parabéns! Você já avançou bastante e já estamos caminhando para o fim do nosso curso. Volte nessa aula sempre que achar necessário para reforçar e se tiver dúvidas, não deixe de aparecer lá no fórum para conversar com a gente e com outros cursistas.

# Null safety

Null no dart é uma classe que não pode ser instanciada

[https://dart.dev/null-safety](https://dart.dev/null-safety)

- **O que é um Nulo:**
    - Aprendemos que no Dart, o Nulo é um tipo não instanciável e representa a ausência de valor. Aprendemos também que no passado, o `null` era um subtipo de todos os tipos, mas desde a implementação do Null Safety na linguagem, o `Null` passou a ser um tipo a parte de todos, podendo agora uma variável ou propriedade receber **ou** apenas valores não nulos, **ou** tanto valores nulos quanto não nulos.
- **O problema que o Null Safety resolve:**
    - Aprendemos que o Null Safety resolve o problema das Referências Nulas, ou seja, de tentarmos acessar membros de variáveis que estão com valores nulos, evitando assim erros em tempo de execução.
- **Como lidar com nulos de uma forma segura:**
    - Por fim, aprendemos que existem algumas formas seguras de se lidar com nulos e a principal delas é testando se a variável contém ou não um valor nulo. Esse teste com `if-else` garante, em tempo de execução, que a variável não será nula. Também podemos usar a chamada segura, ou Safe Call, utilizando a `?` quando queremos tentar acessar um membro de uma classe, e não uma variável local.

# Asyncs

[https://dart.dev/codelabs/async-await](https://dart.dev/codelabs/async-await)

# SingleThread

Um thread de cada vez, de forma encadeada.

Isolates e LoopEvetns

No Dart utilizamos apenas um Isolate, porém é possível utilizar mais de um Isolate

um isolate é um espaço de mémoria

![Untitled](%5BMobile%5D%20Dart%200f08d9bbf00140b18700e4cca658f2fe/Untitled%206.png)

Multithread

![Untitled](%5BMobile%5D%20Dart%200f08d9bbf00140b18700e4cca658f2fe/Untitled%207.png)

Artigo para entender melhor Isolates:
[https://blog.codemagic.io/understanding-flutter-isolates/](https://blog.codemagic.io/understanding-flutter-isolates/)

# Async

Exemplos práticos

Acesso ao banco de dados

Acesso a API’s

## Future

```dart
Future<void> fetchUserOrder() {
// Imagine that this function is fetching user info from another service or database.
return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

void main() {
  fetchUserOrder();
  print('Fetching user order...');
}
```

```dart
main() {
  Future myFuture = Future(() {
    print('Backing to the future.');
    return 21;
  }).then((value) => print('Future value: $value'));

  Future.delayed(Duration(seconds: 2));

  Future<int> myFunctionFuture() async {
    Future.delayed(Duration(seconds: 5));
    return await myFuture;
  }

  myFunctionFuture();

  print('Done main!');
	}
```

## Resumo

- **Saber o que significa *Single Thread*:**
    - Vimos que o Dart é uma linguagem *Single Thread*, ou seja, que realiza uma tarefa por vez.
- **Identificar o que são *Isolates*:**
    - Espaços de memória com loops, dedicados para realizar tarefas no computador - por exemplo, abrir uma nova tela.
- **Saber como funcionam os Loop de Eventos:**
    - Funcionalidades que buscam por tarefas na pilha de execução do programa e individualmente fazem o processo de levar as tarefas até os espaços de memória onde serão processadas.
- **Compreender a importância do Assincronismo:**
    - Técnica que separa tarefas que precisam de um tempo de espera, a fim de tornar eficiente a execução de tarefas rápidas, enquanto esperamos por tarefas lentas (que esperam informação de fora, lugar de onde não temos controle).
- **Entender o funcionamento e alterar o KakoBot:**
    - Vimos o código padrão do nosso projeto, e como ele funciona além de olhar passo a passo os métodos que compõem a lógica por trás do nosso bot pessoal.

## Streams

[https://dart.dev/tutorials/language/streams](https://dart.dev/tutorials/language/streams)

[https://dart.dev/tutorials/language/streams#process-stream-methods](https://dart.dev/tutorials/language/streams#process-stream-methods)

Sample:

Creating

```dart
class BotClock {
  Future clock({required int timeInSeconds}) {
    return Future.delayed(Duration(seconds: timeInSeconds));
  }

  //Creating:
  Stream lemonStream(int intervalIsSeconds, int maxCount) async* {
    int index = 1;
    while (index < maxCount) {
      print(
          'Counting: $index, interval: $intervalIsSeconds, maxCount: $maxCount');
      await Future.delayed(Duration(seconds: intervalIsSeconds));
      yield index++; // Yield significa captura.
    }
    print('The stream is finished!');
  }
}
```

Listening:

```dart
var customStream = BotClock().lemonStream(1, 10);
var subscriber = customStream.listen((event) {
  print('Stream is running to $event');
}, onDone: () {
  print('Stream is done!');
  shouldRun = false;
});
print(subscriber);
```

Resumo:

- **Criar `Streams`:**
    - Vimos como criar uma `Stream` , um objeto que recebe informações por um longo período de tempo, onde essas informações vêm em intervalos! Normalmente as Streams já nos são dadas por entidades fora do nosso código, mas, por não estarmos conectados com um Banco de Dados/Servidor Externo/API, decidimos criar nossa própria `Stream`.
- **Criar um `Subscriber`:**
    - Para escutar as informações que vêm da nossa `Stream`, precisamos criar um objeto do tipo `StreamSubscriber` que tem a habilidade de ouvir a `Stream` por meio do método `listen()`, além de poder manipular as informações, tratar erros e muito mais.
- **Pausar, reiniciar e cancelar uma `Stream`:**
    - Descobrimos o poder de manipular nossa subscrição na `Stream` decidindo quando pausá-la para impedir novas informações de vir, em seguida descobrimos como reiniciá-la para retomar o fluxo de informações e até cancelá-la, para não mais gastar recursos!