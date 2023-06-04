import React, { useState } from 'react';
import axios from 'axios';

function App() {
  const [cep, setCep] = useState('');
  const [endereco, setEndereco] = useState('');
  const [bairro, setBairro] = useState('');
  const [cidade, setCidade] = useState('');
  const [uf, setUf] = useState('');

  const handleCepChange = (event) => {
    setCep(event.target.value);
  };

  const handleSubmit = (event) => {
    event.preventDefault();

    const formattedCep = cep.replace('-', '');
    const url = `https://viacep.com.br/ws/${formattedCep}/json`;

    axios
      .get(url)
      .then((response) => {
        const data = response.data;

        setEndereco(data.logradouro);
        setBairro(data.bairro);
        setCidade(data.localidade);
        setUf(data.uf);
      })
      .catch((error) => {
        console.error(error);
      });
  };

  return (
    <div className="app">
      <div className="container">
        <div className="form-container">
          <h2>Pesquisa de CEP</h2>
          <form onSubmit={handleSubmit}>
            <div className="form-group">
              <label htmlFor="cepInput">CEP:</label>
              <input
                type="text"
                id="cepInput"
                value={cep}
                onChange={handleCepChange}
              />
              <button type="submit">Pesquisar</button>
            </div>
          </form>
        </div>

        <div className="result-container">
          <div className='titulo-cep'>
            <h3>Informações do CEP:</h3>
          </div>
          
          <p>Endereço: {endereco}</p>
          <p>Bairro: {bairro}</p>
          <p>Cidade: {cidade}</p>
          <p>UF: {uf}</p>
        </div>
      </div>
    </div>
  );
}

export default App;
