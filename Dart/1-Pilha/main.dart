import 'dart:convert';
import 'dart:io';

import 'pilha.dart';

void main(List<String> args) {
  int a;
  Pilha p = Pilha<int>(maximoElementos: 100);

  stdout.write("Digite um número \n");
  var n1 = int.parse(stdin.readLineSync(encoding: utf8)!);
  p.inserir(n1);

  stdout.write("Digite um número \n");
  n1 = int.parse(stdin.readLineSync(encoding: utf8)!);
  p.inserir(n1);

  stdout.write("Digite um número \n");
  n1 = int.parse(stdin.readLineSync(encoding: utf8)!);
  p.inserir(n1);

  p.imprimir();

  print("REMOCAO ${p.remover()}");
  print("REMOCAO ${p.remover()}");

  stdout.write("Digite um número \n");
  n1 = int.parse(stdin.readLineSync(encoding: utf8)!);
  p.inserir(n1);
  p.imprimir();
}
