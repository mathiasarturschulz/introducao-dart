import './Cliente.dart';
import './VendaItem.dart';

/**
 * Classe venda
 */
class Venda {

  Cliente cliente;
  List<VendaItem> itens;

  /**
   * Construtor
   */
  Venda({this.cliente, this.itens = const []});

  /**
   * Getter que realizar a soma do valor total da venda com base nos itens da venda
   */
  double get valorTotal {
    return itens
      .map((item) => item.preco * item.quantidade)
      .reduce((t, a) => t + a);
  }

  /**
   * toString da classe
   */
  String toString() {
    String linhaBranca = '=' * 56;
    String linhaBrancaSimples = '-' * 56;

    String toString = ''
      // monta o cabeçalho inicial
      + '$linhaBranca'
      + '\n' + ('=' * 21) + ' COPUM FISCAL ' + ('=' * 21)
      + '\n$linhaBranca'

      // apresenta o cliente
      + '\n${cliente.toString()}'
      + '\n$linhaBranca'
      + '\n'
    ;

    // apresenta os itens
    for (var item in itens) {
      toString += '\n${item.toString()}'
        + '\n$linhaBrancaSimples';
    }

    // apresenta o valor total
    toString += '\n= Valor total: R\$ ${valorTotal.toString()}'
      + '\n$linhaBranca';

    return toString;
  }
}
