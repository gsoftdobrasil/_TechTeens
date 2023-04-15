import express, { Request, Response } from 'express' //Criar uma conexão https - criar uma api
import router from './rotas'
const app = express();

app.use(express.json())
app.use(router);

app.listen(5000, () => {
    console.log('Servidor iniciado na porta 5000.')
})