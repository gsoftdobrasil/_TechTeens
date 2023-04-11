import express, { Request, Response } from 'express'
const app = express();
import { Router } from 'express';

interface Aluno {
    codigo: number;
    nome: string;
    email: string;
    telefone: string;
    idade: number;
  }
  
  const aluno: Aluno = {
    codigo: 1,
    nome: 'Iago',
    email: 'iago@gsoft.com.br',
    telefone: '12 98200-6363',
    idade: 16,
  };

const router = Router();
app.use(express.json())

app.get('/alunos', (req: Request, res: Response) => {
    res.send('Seja bem-vindo ao backend da aplicação!');
  });

  app.get('/professor', (req: Request, res: Response) => {
    res.send('Olá professor! Vamos trabalhar!');
  });

  app.get('/aluno1', (req: Request, res: Response) => {
    res.send({aluno});
  });


app.listen(3000, () => {
    console.log('Servidor iniciado na porta 3000.')
})