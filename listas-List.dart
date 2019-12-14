class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  String toString() {
    return '$nome, $idade anos';
  }
}

void main() {
  List<String> nomes = ["Maycon", "Johnathan", "Francisco"];

  print(nomes);
  nomes.add("Heitor");
  print(nomes);
  print(nomes[0]);

  print(nomes.length);

  nomes.removeAt(2);
  print(nomes);

  nomes.insert(2, 'Francisco2');
  print(nomes);

  print(nomes.contains('Francisco2'));
  
  //Lista de pessoas
  List<Pessoa> pessoas = new List(); //New nao eh obrigatorio
  pessoas.add(Pessoa('Maycon J. Francisco', 33));
  pessoas.add(Pessoa('Heitor Francisco', 6));
  print(pessoas);

  //for each de pessoas - Verificar mais detalhes da linguagem Dart e de Listas
  for (Pessoa p in pessoas){
    print(p.nome);
  }
  
}