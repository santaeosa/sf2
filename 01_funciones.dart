void main(List<String> args) {
  //Funciones
  // sin y con retorno
  int n1 = 10;
  int n2 = 15;
  print("Funciones!!");
  String name = "Men Lee";
  mostrarMensaje(name);
  print(suma(n1, n2));
}

void mostrarMensaje(String x) {
  print("----------------");
  print("Mensaje desde una funcion: $x");
  print("----------------");
}

int suma(int a, int b) {
  return a + b;
}
