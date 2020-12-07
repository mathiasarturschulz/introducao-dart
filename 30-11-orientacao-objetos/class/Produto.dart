/**
 * Classe produto
 */
class Produto {

  int codigo;
  String nome;
  double preco;
  double desconto;

  /**
   * Construtor
   */
  Produto({this.codigo, this.nome, this.preco, this.desconto = 0});

  /**
   * Getter preço com desconto
   */
  double get precoComDesconto {
    return preco - ((desconto / 100) * preco);
  }

  /**
   * toString da classe
   */
  String toString() {
    return '= Nome: $nome'
      + '\n= Desconto: R\$ $desconto'
      + '\n= Preço (1 unidade): R\$ $preco'
      + '\n= Preço (1 unidade c/ desconto): R\$ $precoComDesconto'
    ;
  }
}
