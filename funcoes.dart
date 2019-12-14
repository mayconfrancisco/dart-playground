void main() {
  
  criarBotao('Ola', (){ //passando funcao como parametro
    print('Funcao anonima passada como parametro');
  }, tamanho: 12.3); //passando o nometro do parametro opcional
  
}

//parametros opcionais ficam entre chaves - ao passá-los deve informar o nome do param
void criarBotao(String texto, Function handleClick, {String cor, double tamanho}) {
  print(texto);
  print(cor ?? 'branco'); //inicializando o parametro default com ??
  print(tamanho ?? 22.2);
  handleClick();
}

double soma(double a, double b) {
 return a + b;
}

double calcAreaCirculo(double raio) => 3.14 * raio * raio;