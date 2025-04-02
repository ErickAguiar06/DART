import 'dart:io';

void main() {
    print('\nDigite o salário do funcionário para cálculo do INSS:');
    double salarioInss = double.parse(stdin.readLineSync()!);
    double descontoInss = calculaDescontoInss(salarioInss);
    print('O desconto de INSS é: R\$${descontoInss.toStringAsFixed(2)}');
    print('O salário final após desconto do INSS é: R\$${(salarioInss - descontoInss).toStringAsFixed(2)}');
}

double calculaDescontoInss(double salario) {
    if (salario <= 1518.00) {
        return salario * 0.075; // 7.5%
    } else if (salario <= 2793.88) {
        return (salario * 0.09) - 22.77; // 9% menos a parcela a deduzir
    } else if (salario <= 4190.83) {
        return (salario * 0.12) - 106.59; // 12% menos a parcela a deduzir
    } else if (salario <= 8157.41) {
        return (salario * 0.14) - 190.40; // 14% menos a parcela a deduzir
    } else {
        double teto = 8157.41;
        return (teto * 0.14) - 190.40;
    }
}
