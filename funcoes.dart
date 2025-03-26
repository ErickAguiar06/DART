void main() {
    // Variáveis Simples
    int v1 = 1253;
    int v2 = 3261;

    // Listas ou Vetores
    List<double> numeros = [9.9, 85.08, 99.9, 74, 100, 85];

    // Chamando a função que soma dois números
    int resultadoSoma = somaDoisNumeros(v1, v2);

    // Mostrando o resultado da soma
    print('A soma de ${v1} + ${v2} é $resultadoSoma');

    // Chamando a função que multiplica dois números
    int resultadoMultiplicacao = multiplicaDoisNumeros(v1, v2);

    // Mostrando o resultado da multiplicação
    print('A multiplicação de ${v1} * ${v2} é $resultadoMultiplicacao');

    // Chamando a função que divide dois números
    double resultadoDivisao = divideDoisNumeros(10.0, 2.0);
    print('A divisão de 10.0 / 2.0 é $resultadoDivisao');

    // Testando divisão por zero
    double resultadoDivisaoPorZero = divideDoisNumeros(10.0, 0.0);
    print('Resultado da divisão por zero: $resultadoDivisaoPorZero');

    // Chamando a função que calcula o fatorial
    int numero = 5;
    int resultadoFatorial = calculaFatorial(numero);
    print('O fatorial de $numero é $resultadoFatorial');
}

    // Função que soma dois números inteiros
int somaDoisNumeros(int a, int b) {
    return a + b;
}

    // Função que multiplica dois números inteiros
int multiplicaDoisNumeros(int a, int b) {
    return a * b;
}

    // Exercício02: Função que divide dois números reais
double divideDoisNumeros(double a, double b) {
    if (b == 0) {
        print('Proibido dividir por 0');
        return -1;
    }
    return a / b;
}

    // Desafio: Função que calcula o fatorial de um número
int calculaFatorial(int n) {
    if (n < 0) {
        throw ArgumentError('Número deve ser maior ou igual a zero');
    }
    int fatorial = 1;
    for (int i = 1; i <= n; i++) {
        fatorial *= i;
    }
    return fatorial;
}


double somaVarios(List<double> vetor) {
    double total = 0;
    for (var i = 0; i < vetor.length; i++) {
        total += vetor[i];
    }
    return total;
}