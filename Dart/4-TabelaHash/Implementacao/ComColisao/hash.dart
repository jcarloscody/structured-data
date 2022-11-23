import '../../../models/aluno.dart';

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
    //vamos tratar as colisoes pelo teste linear, ou seja, pegamos a funcao hash, vemos a posição, se tiver ocupado colocamos no proximo e sucessivamente
    //  inseri tanto no RA -1 vazio ou RA -2 que é deletado
    int local = funcaoHash(aluno);
    while (_estrutura[local].obterRa() > 0) {
      local = (local + 1) % _maxPosicoes;
    }
    _estrutura.insert(local, aluno);
    _quantidadeItens++;
  }

  void remover(Aluno aluno) {
    //vemos a posicao pela funcao hash e vemos o elemento se é = e se não for vamos para o próximo até achar o elemento para deletarmos ou ate achar o lugar vazio.
    //a flag para indicar que um elemento foi removido é -2 no RA
    int local = funcaoHash(aluno);
    bool nAchou = false;
    while (_estrutura[local].obterRa() != -1) {
      if (_estrutura[local].obterRa() == aluno.obterRa()) {
        _estrutura[local] = Aluno(ra: -2, name: "");
        print('Elemento encontrado e removido');
        _quantidadeItens--;
        nAchou = true;
        break;
      }
      local = (local + 1) % _maxPosicoes;
    }
    if (!nAchou) {
      print('NÃO ACHOU');
    }
  }

  bool buscar(Aluno aluno) {
    //A busca pecorre o todo e só para quando encontra o vazio RA -1 ou quando encontrar o elemento
    int local = funcaoHash(aluno);
    while (_estrutura[local].obterRa() != -1) {
      if (_estrutura[local].obterRa() == aluno.obterRa()) {
        print('Achou o elemento ');
        _estrutura[local] = aluno;
        return true;
      }
      local = (local + 1) % _maxPosicoes;
    }
    return false;
  }

  void imprimir() {
    print("TABELA HASG");
    for (var i = 0; i < _maxPosicoes; i++) {
      if (_estrutura[i].obterRa() > 0) {
        print(
            'RA ${_estrutura[i].obterRa()}  NOME ${_estrutura[i].obterName()}');
      }
    }
  }
}
