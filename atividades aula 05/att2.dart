import 'dart:io';

void main() {
 print('\nDigite o salário do funcionário:');
    double salario = double.parse(stdin.readLineSync()!);
    print('Digite o número de filhos:');
    int numeroFilhos = int.parse(stdin.readLineSync()!);
    double salarioFinal = calculaSalarioFamilia(salario, numeroFilhos);
    print('O salário final do funcionário é: R\$${salarioFinal.toStringAsFixed(2)}');
}

double calculaSalarioFamilia(double salario, int numeroFilhos) {
    if (salario < 2000) {
        return salario + (numeroFilhos * 60); // Adiciona 60 reais por filho
    }
    return salario;
}