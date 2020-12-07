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
}
