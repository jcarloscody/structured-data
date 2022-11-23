// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../models/aluno.dart';
import '../../models/no_arvoce_binaria.dart';

class ArvoreBinariaBusca {
  NoArvoceBinaria? _noRaiz = null;

  ArvoreBinariaBusca();

  void deletarArvore(NoArvoceBinaria noAtual) {}

  NoArvoceBinaria? obterRaiz() {
    return _noRaiz;
  }

  bool estaVazio() {
    return _noRaiz == null;
  }

//  bool estaCheio() {}

  void inserir(Aluno aluno) {}
  void remover(Aluno aluno) {}
  bool buscar(Aluno aluno) {}
  void imprimirPreOrde(NoArvoceBinaria noAtual) {}
  void imprimirEmOrdem(NoArvoceBinaria noAtual) {}
  void imprimirPosOrdem(NoArvoceBinaria noAtual) {}
}
