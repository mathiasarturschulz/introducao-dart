import 'dart:io';

void main() {
  print('Atividades - Introdução DART');
  questao();
}

void questao() {
  print('\n1) Escreva um algoritmo para ler um número (do teclado) e escrever (na tela) o seu antecessor. ');

  stdout.write('Informe um número inteiro: ');
  String entrada = stdin.readLineSync();
  int numero = int.tryParse(entrada);

  if (numero == null) {
    print('Número inteiro inválido! ');
    return;
  }

  int antecessor = numero - 1;
  print('Antecessor: ' + antecessor.toString());
}
