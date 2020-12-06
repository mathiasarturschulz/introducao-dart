import 'dart:io';

void main() {
  print('Atividades - Estruturas de controle e funções');
  questao();
}

void questao() {
  print('\n3. Crie uma função que realize cálculo de comissão de venda. Como parâmetros deve-se receber, o salário do funcionário, o valor total de vendas do mês passado e o percentual da comissão em cima do valor total de vendas. Apresentar ao retornar da função a frase: • O funcionário Fulano de Tal deverá receber este mês o valor X, sendo Y de salário e Z de comissão. • Ler o nome do funcionário para apresentar; • X = salário + comissão');

  double salario;
  String nome;
  double valorVendas;
  double percentualComissao;
  int funcionarioAtual = 0;
  List funcionarios = [];
  while (true) {
    salario = 0;
    nome = '';
    valorVendas = 0;
    percentualComissao = 0;
    funcionarioAtual++;

    stdout.write('\n=>NOVO FUNCIONÁRIO \nInforme o salário do funcionário ' + funcionarioAtual.toString() + ' (OBS: Parar de informar pessoas digite: -1): ');
    salario = double.tryParse(stdin.readLineSync());
    if (salario == null) {
      print('Valor inválido! ');
      continue;
    }
    if (salario == -1) {
      break;
    }

    stdout.write('Informe o nome do funcionário: ');
    nome = stdin.readLineSync();

    stdout.write('Informe o valor total de vendas do mês passado: ');
    valorVendas = double.tryParse(stdin.readLineSync());
    if (valorVendas == null) {
      print('Valor inválido! ');
      continue;
    }

    stdout.write('Informe o percentual da comissão em cima do valor total de vendas: ');
    percentualComissao = double.tryParse(stdin.readLineSync());
    if (percentualComissao == null) {
      print('Valor inválido! ');
      continue;
    }

    funcionarios.add({
      'salario': salario,
      'nome': nome,
      'valorVendas': valorVendas,
      'percentualComissao': percentualComissao,
    });
  }

  double comissao = 0;
  print('\n=> RESULTADO ');
  for (var funcionario in funcionarios) {
    comissao = funcionario['valorVendas'] * (funcionario['percentualComissao'] / 100);
    print(
      '\nO funcionário ' + funcionario['nome'] + ' deverá receber este mês o valor R\$ ' + (funcionario['salario'] + comissao).toString() 
      + ', sendo R\$ ' + funcionario['salario'].toString() + ' de salário e R\$ ' + comissao.toString() + ' de comissão'
    );
  }
}
