import 'dart:io';

void main() {
  print('Atividades - Introdução DART');
  questao();
}

void questao() {
  print('\n6) Faça um Programa que peça a temperatura em graus Farenheit, transforme e mostre a temperatura em graus Celsius');

  stdout.write('Informe a temperatura em graus Farenheit: ');
  double tempFarenheit = double.tryParse(stdin.readLineSync());
  if (tempFarenheit == null) {
    print('Valor inválido! ');
    return;
  }

  double tempCelsius = (5 * (tempFarenheit-32) / 9);
  print('Temperatura em graus Celsius: ' + tempCelsius.toString());
}
