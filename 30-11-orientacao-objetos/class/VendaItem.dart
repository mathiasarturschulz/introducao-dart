import './Produto.dart';

/**
 * Classe venda item
 */
class VendaItem {

  Produto produto;
  int quantidade;
  double _preco;

  /**
   * Construtor
   */
  VendaItem({this.produto, this.quantidade = 1});

  /**
   * Getter do preço
   */
  double get preco {
    if (produto != null && _preco == null) {
      this._preco = produto.precoComDesconto;
    }
    return this._preco;
  }

  /**
   * Setter do preço
   */
  set preco(double novoPreco) {
    if (novoPreco > 0) this._preco = novoPreco;
  }

  /**
   * toString da classe
   */
  String toString() {
    return '+++ Item ${produto.codigo} '
      + '\n${produto.toString()}'
      + '\n= Quantidade: $quantidade'
    ;
  }
}
