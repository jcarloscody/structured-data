import 'pilha.dart';

void main() {
  var pilha = Pilha<int>();
  pilha.inserir(1);
  pilha.inserir(2);
  pilha.inserir(3);
  pilha.inserir(4);
  pilha.imprimir();
  pilha.remover();
  pilha.remover();
  pilha.imprimir();
}
