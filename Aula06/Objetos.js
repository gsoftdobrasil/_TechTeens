// Objetos


//Criando um objeto
var aluno = new Object();

//sintaxe literal
var aluno = {
    nome : 'Joao',
    idade : 15,
    turma : '5º A',
    RA : 12345,
    Notas : [10, 5, 4, 6 ],
    Media : 6.25,
};

var compra = new Object(); //reserva um espaço para um objeto

var compra = {
    produto : 'calça jeans', //propriedades
    valor : 50.99,
    formapagamento : 'dinheiro',   
}

console.log(aluno);

// outro exemplo



var pessoa = new Object();

var pessoa = {
    cpf: '49628427814',
    altura: 1.69,
    idade: 22,
    nome: 'Maria Fernanda',
    sexo: 'Feminino',
    estadoCivil: 'Casada',
}

console.log('A ' + pessoa.nome + ' tem ' + pessoa.altura + ', ' + pessoa.idade + ' é do sexo ' + pessoa.sexo + ' com o cpf: ' + pessoa.cpf + ' mas não adianta, ela é ' + pessoa.estadoCivil);




