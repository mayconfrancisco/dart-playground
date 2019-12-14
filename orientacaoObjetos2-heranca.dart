class Animal {
  static int campoEstaticoExemplo = 10;
  String nome;
  double peso;

  Animal(this.nome, this.peso);

  void fazerSom() {
    print('$nome esta fazendo som default');
  }

  void correr() {
    print('${nome} esta correndo');
  }
}

//Heranca como no JAVA - extendemos apenas uma classe
//Temos o metodo toString para imprimir o objeto e fazemos a sobrecarga do metodo
class Cachorro extends Animal {
  int fofura;

  Cachorro(String nome, double peso, this.fofura) : super(nome, peso);

  @override
  void fazerSom() {
    fofura += 10;
    print('Au au au auau! $fofura');
  }

  @override
  String toString() {
    return 'Cachorro $nome Peso: $peso';
  }
}

class Gato extends Animal {
  int dorminhoco;

  Gato(String nome, double peso, this.dorminhoco) : super(nome, peso);

  void dormir() {
    dorminhoco += 25;
    print('Miau grrrrhhrr $dorminhoco');
  }

  @override
  void fazerSom() {
    print('Miiaaaauuuu');
  }

  @override
  String toString() {
    return 'Cachorro $nome Peso: $peso';
  }
}

void main() {
  Cachorro cachorro = Cachorro('Balu', 8.98, 52);
  cachorro.correr();
  cachorro.fazerSom();
  print(cachorro);

  Gato gato = new Gato('Tom', 3.98, 233);
  gato.correr();
  gato.fazerSom();
  print(gato);

  // MODIFICADORES DE ACESSO - TESTES
  //STATIC
  print(Animal.campoEstaticoExemplo);
  //CONST
  const num1 = 3;
  // num1 = 4; //error
  //FINAL
  final Animal animal = Animal('Tomba', 2.99);
  print(animal.nome);
  animal.nome = 'Tomba2';
  print(animal.nome);
  // animal = new Animal('Tomba3', 3.33); //Error
}