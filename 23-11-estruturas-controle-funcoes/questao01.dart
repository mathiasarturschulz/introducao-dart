import 'dart:io';

void main() {
  print('Atividades - Estruturas de controle e funções');
  questao();
}

void questao() {
  print('\n1. Uma agência de uma cidade do interior, tem, no máximo, 10.000 clientes. Crie um algoritmo que possa entrar com número da conta, nome e saldo de cada cliente. O programa deverá imprimir todas as contas, os respectivos saldos e uma das mensagens: POSITIVO / NEGATIVO. A digitação acaba quando se digita -999 para o número da conta OU quando chegar ao 10.000. Ao final, deverá ser impresso o total de clientes com saldo negativo, o total de clientes da agência e o saldo da agência. ');

  int numConta;
  String nome;
  double saldoEmConta;
  int clienteAtual = 0;
  List contas = [];
  while (clienteAtual <= 10000) {
    clienteAtual++;
    numConta = 0;
    nome = '';
    saldoEmConta = 0;

    stdout.write('\n=>NOVO CLIENTE\nInforme o número da conta do cliente ' + clienteAtual.toString() + ': ');
    numConta = int.tryParse(stdin.readLineSync());
    if (numConta == null) {
      print('Valor inválido! ');
      return;
    }
    if (numConta == -999) {
      clienteAtual--;
      break;
    }

    stdout.write('Informe o nome do cliente ' + clienteAtual.toString() + ': ');
    nome = stdin.readLineSync();

    stdout.write('Informe o saldo em conta do cliente ' + clienteAtual.toString() + ': ');
    saldoEmConta = double.tryParse(stdin.readLineSync());
    if (saldoEmConta == null) {
      print('Valor inválido! ');
      return;
    }

    contas.add({
      'nome': nome,
      'numConta': numConta,
      'saldoEmConta': saldoEmConta,
    });
  }

  double saldoAgencia = 0;
  int qtdClienteNegativos = 0;
  print('\n=> LISTA DE CLIENTES');
  for (var conta in contas) {
    String tipoSaldo = 'POSITIVO';
    saldoAgencia += conta['saldoEmConta'];
    if (conta['saldoEmConta'] < 0) {
      qtdClienteNegativos++;
      tipoSaldo = 'NEGATIVO';
    }
    print('\nCliente: ' + conta['nome'].toString()
      + '\nNúmero da Conta: ' + conta['numConta'].toString()
      + '\nSaldo: ' + tipoSaldo + ' => R\$ ' + conta['saldoEmConta'].toString()
    );
  }
  print('\n=> Número total de cliente: ' + clienteAtual.toString());
  print('=> Número total de clientes com saldo negativo: ' + qtdClienteNegativos.toString());
  print('=> Saldo da agência: R\$ ' + saldoAgencia.toString());
}
