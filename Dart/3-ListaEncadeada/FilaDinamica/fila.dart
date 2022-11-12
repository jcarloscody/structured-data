import '../../interface/generic.dart';
import '../../interface/no.dart';

class Fila<Tipo> extends Generic<Tipo> {
  No<Tipo>? _primeiro;
  No<Tipo>? _ultimo;

  Fila();

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
    return _primeiro == null;
  }

  @override
  void imprimir() {
    if (estaVazio()) {
      print('ESTA VAZIO');
      return null;
    }

    No<Tipo> noCursor = _primeiro!;
    int indice = 0;
    do {
      indice++;
      print('${indice}º No ${noCursor.valor}');
    } while (noCursor.proximo != null);
  }

  @override
  void inserir(Tipo t) {
    No<Tipo> no = No(valor: t);
    if (estaCheio()) {
      print('ESTA CHEIO');
      return;
    }
    if (estaVazio()) {
      _primeiro = no;
      _ultimo = no;
      return;
    }

    No<Tipo> penultimo = _ultimo!;
    _ultimo = no;
    penultimo.proximo = _ultimo;
  }

  @override
  Tipo? remover() {
    if (estaVazio()) {
      print('ESTA VAZIO');
      return null;
    }

    if (_primeiro!.proximo == null) {
      _primeiro = null;
      _ultimo = null;
      return null;
    }

    Tipo noDeletado = _primeiro!.valor;
    _primeiro = _primeiro!.proximo;

    return noDeletado;
  }
}
