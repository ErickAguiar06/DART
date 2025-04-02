import 'dart:io';

void main(){
    print('\nDigite o valor do lado A do triângulo:');
    double ladoA = double.parse(stdin.readLineSync()!);
    print('Digite o valor do lado B do triângulo:');
    double ladoB = double.parse(stdin.readLineSync()!);
    print('Digite o valor do lado C do triângulo:');
    double ladoC = double.parse(stdin.readLineSync()!);
    String tipoTriangulo = verificaTipoTriangulo(ladoA, ladoB, ladoC);
    print('O triângulo é: $tipoTriangulo');
}

String verificaTipoTriangulo(double a, double b, double c) {
    if (a == b && b == c) {
        return 'EQUILÁTERO';
    } else if (a != b && b != c && a != c) {
        return 'ESCALENO';
    } else {
        return 'ISÓSCELES';
    }
}