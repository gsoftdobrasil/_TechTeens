import { Router } from 'express'
import * as modelbd from './modelbd';

const router = Router();

router.get('/cep', async (req, res) => {
  const enderecos = await modelbd.getEndereco()

  return res.json(enderecos);
}
);
    
export default router;
    
    
    
    
    
