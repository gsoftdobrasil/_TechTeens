import knex from 'knex';

const db = knex({
  client: 'mssql',
  connection: {
    host: 'localhost',
    user: 'seu-usuario',
    password: 'sua-senha',
    database: 'seu-banco-de-dados',
  },
});