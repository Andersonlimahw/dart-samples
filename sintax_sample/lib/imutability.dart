void imutabilitySample() {
  const int cantChange = 0; // Can not change initial value;
  final String canChangeOneTime; // Atribuição unica de valor.
  print("const sample $cantChange");
  canChangeOneTime = "Final changed";
  print("Final sample $canChangeOneTime");
}
