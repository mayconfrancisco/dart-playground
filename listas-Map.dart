class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  @override
  String toString() {
    return '$nome, $idade anos';
  }
}

void main() {
  Map<String, Pessoa> pessoas = Map();
  pessoas["Corupa"] = Pessoa('Maycon', 33);
  pessoas["Blumenau"] = new Pessoa('Jadir', 52);

  print(pessoas);
  print(pessoas.keys);
  print(pessoas.values);
}