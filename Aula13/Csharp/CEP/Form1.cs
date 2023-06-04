using System.Net.Http;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace CEP
{
    public partial class frmMenu : Form
    {
        public frmMenu()
        {
            InitializeComponent();
        }

        public class CEPData
        {
            public string? logradouro { get; set; }
            public string? bairro { get; set; }
            public string? localidade { get; set; }
            public string? uf { get; set; }
            public string? ibge { get; set; }
        }

        public class CEPDataTT
        {
            public string? endereco { get; set; }
            public string? bairro { get; set; }
            public string? cidade { get; set; }
            public string? uf { get; set; }
            public string? morador { get; set; }
        }


        private async void btnEnviar_Click(object sender, EventArgs e)
        {
            string cep = edtCEP.Text.Replace("-", ""); // Remover hífens do CEP

            HttpClient client = new HttpClient();
            string url = $"https://viacep.com.br/ws/{cep}/json";

            try
            {
                HttpResponseMessage response = await client.GetAsync(url);
                if (response.IsSuccessStatusCode)
                {
                    string json = await response.Content.ReadAsStringAsync();


                    JToken parsedJson = JToken.Parse(json);
                    string formattedJson = parsedJson.ToString(Formatting.Indented);

                    CEPData cepData = JsonConvert.DeserializeObject<CEPData>(json);

                    // Preencher os campos com os dados retornados
                    txtJSON.Text = formattedJson;
                    edtEndereco.Text = cepData.logradouro;
                    edtBairro.Text = cepData.bairro;
                    edtCidade.Text = cepData.localidade;
                    edtUF.Text = cepData.uf;
                    edtIBGE.Text = cepData.ibge;
                }
                else
                {
                    MessageBox.Show("CEP não encontrado. Verifique o CEP informado.", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Ocorreu um erro ao obter os dados do CEP. Verifique sua conexão com a internet.", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            finally
            {
                client.Dispose();
            }
        }


        private async void button1_Click(object sender, EventArgs e)
        {
            string cep = edtCEP.Text.Replace("-", ""); // Remover hífens do CEP

            HttpClient client = new HttpClient();
            string url = $"https://apicep.gsoft.com.br:7851/{cep}";

            try
            {
                HttpResponseMessage response = await client.GetAsync(url);
                if (response.IsSuccessStatusCode)
                {
                    string json = await response.Content.ReadAsStringAsync();


                    JToken parsedJson = JToken.Parse(json);
                    string formattedJson = parsedJson.ToString(Formatting.Indented);

                    CEPDataTT cepData = JsonConvert.DeserializeObject<CEPDataTT>(json);

                    // Preencher os campos com os dados retornados
                    txtJSON.Text = formattedJson;
                    edtEndereco.Text = cepData.endereco;
                    edtBairro.Text = cepData.bairro;
                    edtCidade.Text = cepData.cidade;
                    edtUF.Text = cepData.uf;
                    edtIBGE.Text = cepData.morador;
                }
                else
                {
                    MessageBox.Show("CEP não encontrado. Verifique o CEP informado.", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Ocorreu um erro ao obter os dados do CEP. Verifique sua conexão com a internet.", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            finally
            {
                client.Dispose();
            }

        }
    }

}
