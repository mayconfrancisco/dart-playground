class Animal {
  String nome;
  double peso;

  Animal(this.nome, this.peso);

  void correr() {
    print('${nome} esta correndo');
  }
}

class Cachorro extends Animal {
  int fofura;

  Cachorro(String nome, double peso, this.fofura) : super(nome, peso);

  void latir() {
    fofura += 10;
    print('Au au! $fofura');
  }
}

class Gato extends Animal {
  int dorminhoco;

  Gato(String nome, double peso, this.dorminhoco) : super(nome, peso);

  void dormir() {
    dorminhoco += 25;
    print('Miau grrrrhhrr $dorminhoco');
  }
}

void main() {
  Cachorro cachorro = Cachorro('Balu', 8.98, 52);
  cachorro.correr();
  cachorro.latir();

  Gato gato = new Gato('Tom', 3.98, 233);
  gato.correr();
  gato.dormir();
}