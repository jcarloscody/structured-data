import '../interface/generic.dart';

class FilaMolde<Tipo> extends Generic<Tipo> {
  late int _tamanho;
  int _primeiro = 0;
  int _ultimo = 0;
  List<Tipo?> _vetor = [];
  int _maximo;

  FilaMolde({required int maximo}) : _maximo = maximo;

  @override
  Tipo? remover() {
    if (estaVazio()) {
      print("Pilha vazia, sem elementos");
      return null;
    } else {
      Tipo? t = _vetor[_primeiro];
      _primeiro = _ultimo % _maximo;
      return t;
    }
  }

  @override
  void imprimir() {
    if (!estaVazio()) {
      var i = _primeiro;
      while (i < _ultimo) {
        print("Elemento ${_vetor[i]}");
        i++;
      }
    }
  }

  int qualTamanho() {
    return _tamanho;
  }

  @override
  bool estaCheio() {
    return (_ultimo - _primeiro) == _maximo;
  }

  @override
  bool estaVazio() {
    return _primeiro == _ultimo;
  }

  @override
  void inserir(t) {
    if (estaCheio()) {
      print("A pilha está cheia");
    } else {
      int resto = _primeiro % _maximo;
      _vetor.insert(resto, t);
      _ultimo++;
    }
  }
}
