/**
 * Classe cliente
 */
class Cliente {

  String nome;
  String cpf;

  /**
   * Construtor
   */
  Cliente({this.nome, this.cpf});

  /**
   * toString da classe
   */
  String toString() {
    return '= Cliente: $nome - $cpf';
  }
}
