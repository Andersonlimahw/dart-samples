import 'dart:io';

import 'questions/good_manners.dart';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String lemonBot = 'lemonBot:\n';
  var shouldRun = true;
  String usuario = '';

  print('-- Iniciando o lemonBot, aguarde..--');
  await BotClock().clock(timeInSeconds: 3);

  var customStream = BotClock().lemonStream(1, 10);
  var subscriber = customStream.listen((event) {
    print('Stream está executando para o $event');
  }, onDone: () {
    print('Stream finalizado!');
    shouldRun = false;
  });
  print(subscriber);

  print('lemonBot:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(timeInSeconds: 2);
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      shouldRun = false;
      print(lemonBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      TimeQuestions(usuario).timeQuestion();
      await BotClock().clock(timeInSeconds: 2);
    } else if (GoodManners(question: usuario).handleIsThisGoodManners()) {
      GoodManners(question: usuario).goodManners();
    } else {
      await BotClock().clock(timeInSeconds: 2);
      print(lemonBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(lemonBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (shouldRun);

  print('--Encerrando lemonBot--');
}
