import 'dart:io';

void main() {
  print('Atividades - Introdução DART');
  questao();
}

void questao() {
  print('\n8) Tendo como dados de entrada a altura e o sexo de uma pessoa, construa um algoritmo que calcule seu peso ideal');

  stdout.write('Informe a altura da pessoa: ');
  double altura = double.tryParse(stdin.readLineSync());
  if (altura == null || altura < 0) {
    print('Valor inválido! ');
    return;
  }

  stdout.write('Informe o sexo da pessoa (M/F): ');
  String sexo = stdin.readLineSync();
  if (sexo != 'M' && sexo != 'F' && sexo != 'm' && sexo != 'f') {
    print('Valor inválido! ');
    return;
  }

  print('\nPeso ideal: ');
  // homem
  if (sexo == 'M' || sexo == 'm') {
    print(((72.7 * altura) - 58).toString());
    return;
  }
  // mulher
  print(((62.1 * altura) - 44.7).toString());
  return;
}
