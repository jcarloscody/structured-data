import '../models/aluno.dart';

class Hash {
  int _maxItens;
  int _maxPosicoes;
  int _quantidadeItens = 0;
  late List<Aluno> _estrutura;
  Hash({
    required int maxItens,
    required int maxPosicoes,
  })  : this._maxItens = maxItens,
        this._maxPosicoes = maxPosicoes {
    _estrutura = List.generate(_maxPosicoes, (index) => Aluno());
  }

  int funcaoHash(Aluno aluno) {
    //nesta funcao vamos pegar o RA do aluno e fazer mod com o tamanho do vetor
    return aluno.obterRa() % _maxPosicoes;
  }

  bool estaCheio() {
    return _quantidadeItens == _maxItens;
  }

  int obterTamanhoAtual() {
    return _quantidadeItens;
  }

  void inserir(Aluno aluno) {
    if (estaCheio()) {
      print('ESTA CHEIO');
      return;
    }
    int local = funcaoHash(aluno);
    _estrutura.insert(local, aluno);
    _quantidadeItens++;
  }

  void remover(Aluno aluno) {
    int local = funcaoHash(aluno);
    if (_estrutura[local].obterRa() != -1) {
      _estrutura[local] = Aluno();
      _quantidadeItens--;
    }
  }

  bool buscar(Aluno aluno) {
    int local = funcaoHash(aluno);
    if (_estrutura[local].obterRa() != aluno.obterRa()) {
      return false;
    }
    _estrutura[local] = aluno;
    return true;
  }

  void imprimir() {
    print("TABELA HASG");
    for (var i = 0; i < _maxPosicoes; i++) {
      if (_estrutura[i].obterRa() != -1) {
        print(
            'RA ${_estrutura[i].obterRa()}  NOME ${_estrutura[i].obterName()}');
      }
    }
  }
}
