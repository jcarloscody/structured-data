import '../../interface/generic.dart';
import '../../interface/no.dart';

class Pilha<Tipo> extends Generic<Tipo> {
  Pilha();

  No<Tipo>? _topo;

  @override
  bool estaCheio() {
    No<String>? no;
    try {
      no = No(valor: 'valor');
      return false;
    } catch (e) {
      throw Exception('falta de memmoria');
    }
  }

  @override
  bool estaVazio() {
    return _topo == null;
  }

  @override
  void imprimir() {
    if (estaVazio()) {
      print('esta vazio');
      return;
    }

    No<Tipo>? noCursor = _topo;
    int indice = 0;
    do {
      indice++;
      print('${indice}º No -> ${noCursor!.valor}');
      noCursor = noCursor.proximo;
    } while (noCursor != null);
  }

  @override
  void inserir(Tipo valor) {
    if (estaCheio()) {
      print('a pilha está cheia');
      return;
    }

    No<Tipo> noNovo = No(valor: valor);
    if (_topo == null) {
      _topo = noNovo;
      return;
    }

    No<Tipo> noAnterior = _topo!;

    _topo = noNovo;
    noNovo.proximo = noAnterior;
    return;
  }

  @override
  Tipo? remover() {
    if (estaVazio()) {
      print('Esta vazio');
      return null;
    }

    Tipo noDeletado = _topo!.valor;
    No<Tipo>? noProximo = _topo!.proximo;

    if (_topo!.proximo == null) {
      _topo = null;
      return noDeletado;
    }

    _topo = noProximo;
    return noDeletado;
  }
}
