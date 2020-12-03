import 'dart:io';

void main() {
  print('Atividades - Introdução DART');
  questao();
}

void questao() {
  print('\n4) Faça um algoritmo que leia três notas de um aluno, calcule e escreva a média final deste aluno. Considerar que a média é ponderada e que o peso das notas é 2, 3 e 5. ');

  stdout.write('Informe a nota 01: ');
  double nota01 = double.tryParse(stdin.readLineSync());
  if (nota01 == null || nota01 < 0) {
    print('Valor inválido! ');
    return;
  }

  stdout.write('Informe a nota 02: ');
  double nota02 = double.tryParse(stdin.readLineSync());
  if (nota02 == null || nota02 < 0) {
    print('Valor inválido! ');
    return;
  }

  stdout.write('Informe a nota 03: ');
  double nota03 = double.tryParse(stdin.readLineSync());
  if (nota03 == null || nota03 < 0) {
    print('Valor inválido! ');
    return;
  }

  double nota = (nota01 * 0.2) + (nota02 * 0.3) + (nota03 * 0.5);
  print('Média final: ' + nota.toString());
}
