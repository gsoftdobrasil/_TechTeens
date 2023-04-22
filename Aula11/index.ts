import express from 'express'
import router from './rotas'

const app = express();

app.use(express.json());
app.use(router);

//localhost:5000/cep

app.listen(5000, () => {
    console.log('API de CEP TechTeens rodando na porta 5000.');
} ) 
