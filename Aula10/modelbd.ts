import knex from "knex";
import knexConfig from "./knexfile";

const db = knex(knexConfig);

async function getEndereco() {
    return await db.raw('select * from cep');
  }

  async function getCEP() {
    return await db.raw('select * from cep');
  }


   export { getEndereco, getCEP }
