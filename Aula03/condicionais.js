//input e output

//npm install prompt-sync

const prompt = require("prompt-sync")();
const input = prompt("Qual é o seu time?")

if (input == 'Vasco')
  console.log('Show de bola! Timaço!')
else
  console.log('Que time ruim. Sai fora!') 
