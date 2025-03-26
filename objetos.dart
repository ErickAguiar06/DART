void main(){

    //Instância prod da classe do Produto
    Produto prod = new Produto();

    //Configurando o objeto
    prod.nome = 'Camiseta';
    prod.preco = 39.9;

    //Mostrando o objeto
    print(prod); 
}

//Classe
class Produto {
    int id = 0;
    String nome = '';
    String? descricao;
    double preco = 0;
}

//Métodos 
toString() {
    return '$id, $nome, $descricao, $preco';
}