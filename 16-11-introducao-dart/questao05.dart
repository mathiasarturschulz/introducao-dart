import 'dart:io';

void main() {
  print('Atividades - Introdução DART');
  questao();
}

void questao() {
  print('\n5) Faça um algoritmo que leia o nome do aluno, quatro notas deste aluno, e também leia os quatro pesos para realizar o cálculo da média ponderada. Apresente a média final do aluno.');

  stdout.write('Informe o nome do aluno: ');
  String nomeAluno = stdin.readLineSync();

  stdout.write('Informe a nota 01: ');
  double nota01 = double.tryParse(stdin.readLineSync());
  if (nota01 == null || nota01 < 0) {
    print('Valor inválido! ');
    return;
  }

  stdout.write('Informe o peso para a nota 01: ');
  double peso01 = double.tryParse(stdin.readLineSync());
  if (peso01 == null || peso01 < 0) {
    print('Valor inválido! ');
    return;
  }

  stdout.write('Informe a nota 02: ');
  double nota02 = double.tryParse(stdin.readLineSync());
  if (nota02 == null || nota02 < 0) {
    print('Valor inválido! ');
    return;
  }

  stdout.write('Informe o peso para a nota 02: ');
  double peso02 = double.tryParse(stdin.readLineSync());
  if (peso02 == null || peso02 < 0) {
    print('Valor inválido! ');
    return;
  }

  stdout.write('Informe a nota 03: ');
  double nota03 = double.tryParse(stdin.readLineSync());
  if (nota03 == null || nota03 < 0) {
    print('Valor inválido! ');
    return;
  }

  stdout.write('Informe o peso para a nota 03: ');
  double peso03 = double.tryParse(stdin.readLineSync());
  if (peso03 == null || peso03 < 0) {
    print('Valor inválido! ');
    return;
  }

  stdout.write('Informe a nota 04: ');
  double nota04 = double.tryParse(stdin.readLineSync());
  if (nota04 == null || nota04 < 0) {
    print('Valor inválido! ');
    return;
  }

  stdout.write('Informe o peso para a nota 04: ');
  double peso04 = double.tryParse(stdin.readLineSync());
  if (peso04 == null || peso04 < 0) {
    print('Valor inválido! ');
    return;
  }

  double nota = ((nota01 * peso01) + (nota02 * peso02) + (nota03 * peso03) + (nota04 * peso04)) / 10;
  print('Média final do aluno ' + nomeAluno + ': ' + nota.toString());
}
