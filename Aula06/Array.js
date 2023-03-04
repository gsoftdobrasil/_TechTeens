// Tipos de dados e Arrays


//Tipos de Dados e possíveis operações

var inteiro = 10;
var float = 10.5; 
var string = 'Texto / Caracteres Especiais $$%% / Numeros 123';
var boolean = true;


//Arrays

var nota1 = 10;
var nota2 = 6.5;
var nota3 = 8;
var nota4 = 7.5;


// posicoes indice
//                0  1  2   3
var notasArray = [10,6.5,8,7.5];

// incluindo um valor a array
notasArray.push(6);

//Pegando valor por indice
console.log('Posicao indice 3: '+ notasArray[3]);

//Pegando o tamanho da array
console.log('O tamanho da array é: '+ notasArray.length);


// 
notasArray.pop();


// verificando valores array
console.log(notasArray);



// var media = (nota1 + nota2 + nota3 + nota4) / 4;

var media = (notasArray[0] + notasArray[1] + notasArray[2] + notasArray[3]) / 4;

console.log('A media do Aluno é: ' + media);












