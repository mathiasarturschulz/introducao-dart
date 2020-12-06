import 'dart:io';

void main() {
  print('Atividades - Estruturas de controle e funções');
  questao();
}

void questao() {
  print('\n2. Faça um algoritmo que leia a idade de várias pessoas e apresente o total de pessoas com menos de 21 anos e o total de pessoas com mais de 50 anos. Considerar idade válida entre 0 e 140 anos, inclusive.');

  int pessoaAtual = 0;
  int idade;
  int pessoasMenos21 = 0;
  int pessoasMais50 = 0;
  while (true) {
    idade = 0;
    pessoaAtual++;

    stdout.write('\n=>NOVA IDADE\nInforme a idade da pessoa ' + pessoaAtual.toString() + ' (OBS: Parar de informar pessoas digite: -1): ');
    idade = int.tryParse(stdin.readLineSync());

    // validações
    if (idade == null) {
      print('Valor inválido! ');
      continue;
    } 
    if (idade == -1) {
      break;
    }
    if (idade <= 0 || idade >= 140) {
      print('Idade fora da margem permitida! ');
      continue;
    }

    if (idade < 21) {
      pessoasMenos21++;
    }
    if (idade > 50) {
      pessoasMais50++;
    }
  }

  print('\n=> RESULTADO ');
  print('=> Total de pessoas com menos de 21 anos: ' + pessoasMenos21.toString());
  print('=> Total de pessoas com mais de 50 anos: ' + pessoasMais50.toString());
}
