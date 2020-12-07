import 'class/Cliente.dart';
import 'class/Produto.dart';
import 'class/Venda.dart';
import 'class/VendaItem.dart';

void main() {

  // valores fixos
  Venda venda = buscaInfoValoresFixos();

  // // valores dinamicos
  // Venda venda = buscaInfoValoresDinamicos();

  // apresenta os resultados
  apresentaCupomFiscal(venda);
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
    produto: Produto(codigo: 1, nome: 'Processador Ryzen 5', preco: 999.99, desconto: 10), 
    quantidade: 5
  );

  VendaItem vendaItem3 = VendaItem(
    produto: Produto(codigo: 1, nome: 'Microfone BM-800', preco: 157.30, desconto: 5), 
    quantidade: 8
  );

  return Venda(cliente: cliente, itens: [vendaItem, vendaItem2, vendaItem3]);
}

/**
 * Método responsável por montar a venda de acordo com o preenchimento em tempo de execução
 */
Venda buscaInfoValoresDinamicos() {
  return Venda(cliente: null, itens: []);
}

/**
 * Método responsável por apresentar a venda realizada
 */
void apresentaCupomFiscal(Venda venda) {
  print('================================================');
  print('================= COPUM FISCAL =================');
  print('================================================');
  print('= Cliente: ' + venda.cliente.nome + ' - ' + venda.cliente.cpf);
  print('================================================');

  int key = 0;
  for (var item in venda.itens) {

    // TODO - ajustar para o toString da classe

    print('= Item: ' + (++key).toString());
    print('= Código: ' + item.produto.codigo.toString());
    print('= Nome: ' + item.produto.nome);
    print('= Desconto: ' + item.produto.desconto.toString());
    print('= Preço Produto: ' + item.produto.preco.toString());
    print('= Preço Produto (c/ desconto): ' + item.preco.toString());
    print('= Quantidade: ' + item.quantidade.toString());
    print('------------------------------------------------');
  }
  print('= Valor total: ' + venda.valorTotal.toString());
  print('================================================');
}
