import 'dart:io';

void main() {
  print('Atividades - Introdução DART');
  questao();
}

void questao() {
  print('\n2) Escreva um algoritmo para ler o número total de eleitores de um município, o número de votos brancos, nulos e válidos. Calcular e escrever o percentual que cada um representa em relação ao total de eleitores. ');

  stdout.write('Informe o número total de eleitores do município: ');
  int numEleitores = int.tryParse(stdin.readLineSync());
  if (numEleitores == null) {
    print('Número inválido! ');
    return;
  }

  stdout.write('Informe o número total de votos em branco: ');
  int numBrancos = int.tryParse(stdin.readLineSync());
  if (numBrancos == null) {
    print('Número inválido! ');
    return;
  }

  stdout.write('Informe o número total de votos nulos: ');
  int numNulos = int.tryParse(stdin.readLineSync());
  if (numNulos == null) {
    print('Número inválido! ');
    return;
  }

  stdout.write('Informe o número total de votos válidos: ');
  int numValidos = int.tryParse(stdin.readLineSync());
  if (numValidos == null) {
    print('Número inválido! ');
    return;
  }

  print('Percentual de votos brancos em relação ao total de eleitores: ' + ((numBrancos / numEleitores) * 100).toString() + '% ');
  print('Percentual de votos nulos em relação ao total de eleitores: ' + ((numNulos / numEleitores) * 100).toString() + '% ');
  print('Percentual de votos válidos em relação ao total de eleitores: ' + ((numValidos / numEleitores) * 100).toString() + '% ');
}
