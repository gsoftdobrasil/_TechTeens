import { Router } from 'express'
import * as modelbd  from './modelbd';


const router = Router();

//localhost:5000/cep
router.get('/cep', async (req, res) => {
try {
    const enderecos = await modelbd.getEnderecos();
    return res.json(enderecos);    
} catch (retErro) {
    console.error(retErro);
    return res.status(500).json({ mesasge: 'Erro ao ler os CEPs da API TechTeens'})    
}
  })

  router.get('/:vcep', async (req, res) => {
    try {
        const { vcep } = req.params;
        const endereco = await modelbd.getEnderecoByCEP(vcep);
        return res.json(endereco);    
    } catch (retErro) {
        console.error(retErro);
        return res.status(500).json({ mesasge: 'Erro ao ler os CEPs da API TechTeens'})    
    }
      })

  export default router;