void main(List<String> args) {
  //Valores nulos
  String name = "Juan";
  String? lastName;

  print(name.toUpperCase());
  print(lastName!.toUpperCase());

  if (4 > 5) {
    print(lastName.toUpperCase());
  }
}
