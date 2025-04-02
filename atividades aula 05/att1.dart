import 'dart:io';

void main() {
    print('Digite o preço do produto:');
    double precoProduto = double.parse(stdin.readLineSync()!);
    double precoFinal = calculaDescontoProduto(precoProduto);
    print('O preço final do produto com desconto é: R\$${precoFinal.toStringAsFixed(2)}');
}

double calculaDescontoProduto(double preco) {
    if (preco > 1000) {
        return preco * 0.92; // Aplica 8% de desconto
    }
    return preco;
}