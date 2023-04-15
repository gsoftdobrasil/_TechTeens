import { Router } from 'express'
import * as modelbd from './modelbd';

const router = Router();

router.get('/cep', async (req, res) => {
  const enderecos = await modelbd.getEndereco()

  return res.json(enderecos);
}
);
    
export default router;
    
    
    
    
    
//     try {
//       const customers = await customerModel.getEndereco();
//       return res.json(customers);
//     } catch (error) {
//       console.error(error);
//       return res.status(500).json({ message: 'Erro ao buscar clientes.' });
//     }
//   });