class GoodManners {
  GoodManners({required this.question});

  String question;
  bool isThisGoodManners = false;
  String lemonBot = 'lemonBot \n';

  bool handleIsThisGoodManners() {
    bool _value = false;
    if (question.contains('ola') || question.contains('oi')) {
      _value = true;
    }
    isThisGoodManners = _value;
    return _value;
  }

  goodManners() {
    print('$lemonBot Olá!');
  }
}
