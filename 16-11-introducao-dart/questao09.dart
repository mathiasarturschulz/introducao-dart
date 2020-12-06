import 'dart:io';

void main() {
  print('Atividades - Introdução DART');
  questao();
}

void questao() {
  print('\n9) Faça um Programa que pergunte quanto você ganha por hora e o número de horas trabalhadas no mês. Calcule e mostre o total do seu salário no referido mês, sabendo-se que são descontados 11% para o Imposto de Renda, 8% para o INSS e 5% para o sindicato');

  stdout.write('Informe a valor por hora: ');
  double valorHora = double.tryParse(stdin.readLineSync());
  if (valorHora == null || valorHora < 0) {
    print('Valor inválido! ');
    return;
  }

  stdout.write('Informe o número de horas trabalhadas no mês: ');
  double numHoras = double.tryParse(stdin.readLineSync());
  if (numHoras == null || numHoras < 0) {
    print('Valor inválido! ');
    return;
  }

  double salBruto = valorHora * numHoras;
  double valINSS = salBruto * 0.08;
  double valSindicato = salBruto * 0.05;
  double valIR = salBruto * 0.11;
  double salLiquido = salBruto - valINSS - valSindicato - valIR;

  print(' + Salário Bruto: R\$ ' + salBruto.toString());
  print(' - IR (11%) : R\$ ' + valIR.toString());
  print(' - INSS (8%) : R\$ ' + valINSS.toString());
  print(' - Sindicato (5%) : R\$ ' + valSindicato.toString());
  print(' = Salário Liquido : R\$ ' + salLiquido.toString());
  print(' Obs.: Salário Bruto - Descontos = Salário Líquido.');
}
