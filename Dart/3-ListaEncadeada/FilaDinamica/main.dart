import 'fila.dart';

void main() {
  Fila<int> fila = Fila();
  fila.inserir(1);
  fila.imprimir(); // 1
  fila.remover();
  fila.imprimir(); //Esta vazio

  fila.inserir(2);
  fila.inserir(3);
  fila.remover();
  fila.imprimir(); // 3
}
