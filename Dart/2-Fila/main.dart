import 'dart:convert';
import 'dart:io';

import 'fila_model.dart';

void main(List<String> args) {
  FilaMolde p = FilaMolde<int>(maximo: 1);

  stdout.write("Digite 1 número \n");
  var n1 = int.parse(stdin.readLineSync(encoding: utf8)!);
  p.inserir(n1);

  stdout.write("Digite 2 número \n");
  n1 = int.parse(stdin.readLineSync(encoding: utf8)!);
  p.inserir(n1);

  stdout.write("Digite 3 número \n");
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
