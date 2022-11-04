class Pilha<Tipo> {
  late int _tamanho;
  var _vetor = <Tipo>[];
  int _maximoElementos;

  Pilha({required int maximoElementos})
      : this._maximoElementos = maximoElementos {
    _tamanho = -1;
  }

  bool estaCheia() {
    return _vetor.length == _maximoElementos;
  }

  bool estaVazia() {
    return _vetor.length == 0;
  }

  void inserir(Tipo item) {
    if (estaCheia()) {
      print("A pilha está cheia");
    } else {
      _vetor.add(item);
      _tamanho++;
    }
  }

  Tipo? remover() {
    if (estaVazia()) {
      print("Pilha vazia, sem elementos");
      return null;
    } else {
      Tipo r = _vetor[_tamanho];
      _vetor.removeAt(_tamanho);
      _tamanho--;
      return r;
    }
  }

  void imprimir() {
    if (!estaVazia()) {
      var i = 0;
      for (var element in _vetor) {
        print("${i++}- ${element}");
      }
    }
  }

  int qualTamanho() {
    return _tamanho;
  }
}
