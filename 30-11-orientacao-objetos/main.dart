import 'dart:io';
import 'class/Cliente.dart';
import 'class/Produto.dart';
import 'class/Venda.dart';
import 'class/VendaItem.dart';

void main() {

  // // valores fixos
  // Venda venda = buscaInfoValoresFixos();

  // valores dinamicos
  Venda venda = buscaInfoValoresDinamicos();

  if (venda.itens.length == 0) {
    print('Nenhum item cadastrado para a venda! ');
  } else {
    // apresenta os resultados
    apresentaCupomFiscal(venda);
  }
}

/**
 * Método responsável por montar a venda com 3 produtos e valores fixos
 */
Venda buscaInfoValoresFixos() {
  // exemplo com valores fixos
  Cliente cliente = Cliente(nome: 'Mathias', cpf: '123456789');

  VendaItem vendaItem = VendaItem(
    produto: Produto(codigo: 1, nome: 'Mouse Razer', preco: 299.99), 
    quantidade: 1
  );

  VendaItem vendaItem2 = VendaItem(
    produto: Produto(codigo: 2, nome: 'Processador Ryzen 5', preco: 999.99, desconto: 10), 
    quantidade: 5
  );

  VendaItem vendaItem3 = VendaItem(
    produto: Produto(codigo: 3, nome: 'Microfone BM-800', preco: 157.30, desconto: 5), 
    quantidade: 8
  );

  return Venda(cliente: cliente, itens: [vendaItem, vendaItem2, vendaItem3]);
}

/**
 * Método responsável por montar a venda de acordo com o preenchimento em tempo de execução
 */
Venda buscaInfoValoresDinamicos() {
  stdout.write('Informe o nome do cliente: ');
  String clienteNome = stdin.readLineSync();

  stdout.write('Informe o CPF do cliente: ');
  String clienteCpf = stdin.readLineSync();

  int produtoAtual = 0;
  int produtoCodigo;
  String produtoNome;
  double produtoPreco;
  int produtoQtd;
  double produtoDesconto;
  List<VendaItem> itens = [];
  while (true) {
    produtoAtual++;

    stdout.write('\n=>NOVO PRODUTO\nInforme o código do produto ' + produtoAtual.toString() + ' (OBS: Parar de informar produtos digite: -1): ');
    produtoCodigo = int.tryParse(stdin.readLineSync());
    if (produtoCodigo == null) {
      print('Código inválido! ');
      continue;
    }
    if (produtoCodigo == -1) {
      break;
    }

    stdout.write('Informe o nome do produto: ');
    produtoNome = stdin.readLineSync();

    stdout.write('Informe o preço do produto: ');
    produtoPreco = double.tryParse(stdin.readLineSync());
    if (produtoPreco == null || produtoPreco <= 0) {
      print('Valor inválido! ');
      continue;
    }

    stdout.write('Informe a quantidade desejada do produto: ');
    produtoQtd = int.tryParse(stdin.readLineSync());
    if (produtoQtd == null || produtoQtd <= 0) {
      print('Valor inválido! ');
      continue;
    }

    stdout.write('Informe a porcentagem de desconto para o produto: ');
    produtoDesconto = double.tryParse(stdin.readLineSync());
    if (produtoDesconto == null || produtoDesconto < 0 || produtoDesconto > 100) {
      print('Valor inválido! ');
      continue;
    }

    itens.add(
      VendaItem(
        produto: Produto(codigo: produtoCodigo, nome: produtoNome, preco: produtoPreco), 
        quantidade: produtoQtd
      )
    );
  }

  return Venda(cliente: Cliente(nome: clienteNome, cpf: clienteCpf), itens: itens);
}

/**
 * Método responsável por apresentar a venda realizada
 */
void apresentaCupomFiscal(Venda venda) {
  print('\n\n' + venda.toString());
}
