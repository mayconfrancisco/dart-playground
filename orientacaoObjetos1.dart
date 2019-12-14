class Pessoa {
  String nome;
  int _idade; // _ underline na frente do atributo define-o como private
  double _altura; // underline private

  // Pessoa(String nome, int idade, double altura) {
  //   this.nome = nome;
  //   this.idade = idade;
  //   this.altura = altura;
  // }

  Pessoa(this.nome, this._idade, this._altura);

  //Named constructor
  Pessoa.nascer(this.nome, this._altura) {
    this._idade = 0;
    print('$nome nasceu');
  }

  int get idade {
    return _idade;
  }

  double get altura => _altura;

  void set altura(double altura) {
    if (altura > 0 && altura < 3.0) {
      _altura = altura;
    }
  }

  void dormir() {
    print('$nome esta dormindo');
  }

  void aniversario() {
    _idade++;
  }
}

void main() {
  Pessoa pessoa1 = Pessoa('Maycon Francisco', 33, 1.91); //NEW EH OPCIONAL

  print(pessoa1.idade);
  pessoa1.aniversario();
  print(pessoa1.idade);

  Pessoa pessoa2 = Pessoa.nascer('Heitor Francisco', 0.33);
  print(pessoa2.idade);
}