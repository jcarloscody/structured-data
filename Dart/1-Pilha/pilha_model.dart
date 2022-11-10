import '../interface/generic.dart';

class Pilha<Tipo> extends Generic<Tipo> {
  late int _tamanho;
  var _vetor = <Tipo>[];
  int _maximoElementos;

  Pilha({required int maximoElementos})
      : this._maximoElementos = maximoElementos {
    _tamanho = -1;
  }

  // void inserir(Tipo item) {

  // }

  @override
  Tipo? remover() {
    if (estaVazio()) {
      print("Pilha vazia, sem elementos");
      return null;
    } else {
      Tipo r = _vetor[_tamanho];
      _vetor.removeAt(_tamanho);
      _tamanho--;
      return r;
    }
  }

  @override
  void imprimir() {
    if (!estaVazio()) {
      var i = 0;
      for (var element in _vetor) {
        print("${i++}- ${element}");
      }
    }
  }

  int qualTamanho() {
    return _tamanho;
  }

  @override
  bool estaCheio() {
    return _vetor.length == _maximoElementos;
  }

  @override
  bool estaVazio() {
    return _vetor.length == 0;
  }

  @override
  void inserir(t) {
    if (estaCheio()) {
      print("A pilha está cheia");
    } else {
      _vetor.add(t);
      _tamanho++;
    }
  }
}
