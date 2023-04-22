import knex from "knex"
import knexConfig from "./knexfile"

const db = knex(knexConfig);

async function getEnderecos() {
  return await db.raw('select * from cep');
}


async function getEnderecoByCEP(cep: string) {
    return await db.raw('select * from cep where cep = ?', cep);
  }



export { getEnderecos, getEnderecoByCEP };