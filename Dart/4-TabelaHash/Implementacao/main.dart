import '../../models/aluno.dart';
import 'SemColisao/hash.dart';

void main(List<String> args) {
  //SEM COLISAO
  var hash = Hash(maxItens: 10, maxPosicoes: 15);
  Aluno aluno1 = Aluno(ra: 1, name: "sds");
  Aluno aluno2 = Aluno(ra: 1, name: "sds");
  hash.inserir(aluno1);
  hash.imprimir();
  aluno1.name = "josss";
  hash.buscar(aluno1);
  hash.imprimir();
}
