void main() {
  //basico
  String nome = 'Lojinha do Maycon';
  int bananas;
  double preco = 10.50;
  bool aindaTem = true;

  //static nome1 = 'Maycon Francisco' //Atributo estatico da classe - acessar sem instanciar objeto com o no JAVA
  //const numero1 = 3 //constante - nao poderei alterar o valor - esse eh um atributo em tempo de compilacao - ao compilar substituira todos os numero1 por 3
  //final Pessoa xico = new Pessoa(); - nao poderei alterar o valor - esse eh um atributo de tempo de execucao - assim que passar por ai nao poderei mais alterar o ponteiro
  
  print(nome);
  print('O nome da Loja é: ' + nome);
  print('Qtde bananas: $bananas');
  bananas = 10;
  print('Qtde bananas: $bananas');
  
  var teste = 1;
  print(teste);
  //teste = 'String aqui' // isso da erro.- use dynamic
  
  dynamic teste2 = 1;
  print(teste2);
  teste2 = 'Isso eh String';
  print(teste2);
  
  //Aritmeticas
  double num1 = 30.5;
  double num2 = 33.64;
  
  print(num1 * num2);
  num1 += 5;
  num1++;
  print(num1);
  num2 *= 3;
  print(num2);
  
// Operadores logicos
//   Comparadores
//   > >=
//   < <=
//   ==
//   =!
  
//   OR
//   || 
  
//   AND
//   &&
  
//   NOT
//   !
  
//   IF / ELSE IF / IF TERNARIO

  String stringNull;
  String stringDefault = stringNull ?? 'Default';
  print(stringNull);
  print(stringDefault);

  //switch
  String linguagem = "Dart";
  switch(linguagem) {
    case 'Dart':
      print('Power Dart!');
      break;
    case 'Java':
      print('Java vc aqui?');
      break;
    default: print('Outra linguagem');
  }

  // Lacos
  for(int i=0; i <=5; i++) {
      print(i);
    }

  int j = 10;
  while(j > 0) {
    print(j -= 2);
  }

  int x = 5;
  do {
    print(x += 5);
  } while(x < 50);

}