unit untMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  IdHTTP, System.JSON, RestRequest4D, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, AdvMemo, advmjson, AdvMemoStylerManager;

type
  TfrmMenu = class(TForm)
    Panel1: TPanel;
    edtCEP: TEdit;
    Label1: TLabel;
    Button1: TButton;
    cmbAPI: TComboBox;
    memTableTT: TFDMemTable;
    DataSource1: TDataSource;
    tabCEP: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    edtEndereco: TLabeledEdit;
    edtBairro: TLabeledEdit;
    edtCidade: TLabeledEdit;
    edtUF: TLabeledEdit;
    edtMorador: TLabeledEdit;
    edtIBGE: TLabeledEdit;
    TabSheet3: TTabSheet;
    dbgCEP: TDBGrid;
    memTableTTCEP: TStringField;
    memTableTTEndereco: TStringField;
    memTableTTBairro: TStringField;
    memTableTTCidade: TStringField;
    memTableTTUF: TStringField;
    memTableTTMorador: TStringField;
    memTableVIA: TFDMemTable;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    AdvMemoSource1: TAdvMemoSource;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    AdvMemo1: TAdvMemo;
    memJSON: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    procedure PreencherEnderecoViaCep(cep: string);
    procedure PreencherEnderecoViaCep2(cep: string);
    procedure PreencherEnderecoTechTeens(cep: string);
    procedure PreencherEnderecoTechTeensArray;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

procedure TfrmMenu.PreencherEnderecoViaCep(cep: string);
var
  Response: IResponse;
begin
  try
    Response := TRequest.New
      .BaseURL('https://viacep.com.br/ws')
      .Resource(cep+'/json')
      .Accept('application/json')
      .DataSetAdapter(memTableVIA)
      .Get;

    edtMorador.Visible := False;
    edtIBGE.Visible    := True;

    if Response.StatusCode = 200 then
    begin
      if Response.Content.IndexOf('erro') > 0 then
        ShowMessage('CEP não encontrado')
      else
      begin
        memJSON.Clear;
        memJSON.Lines.Text := Response.Content;
        AdvMemo1.Lines.Add(Response.Content);

        with memTableVIA do
        begin
          edtEndereco.Text := Response.JSONValue.GetValue<string>('logradouro');
          //edtEndereco.Text := FieldByName('logradouro').Value;
          edtBairro.Text := FieldByName('bairro').Value;
          edtCidade.Text := FieldByName('localidade').Value;
          edtUF.Text := FieldByName('uf').Value;
          edtIbge.Text := FieldByName('ibge').Value;
        end;
      end;
    end;
  except
    on E: Exception do
      ShowMessage('Ocorreu um erro: ' + E.Message);
  end;
end;

procedure TfrmMenu.PreencherEnderecoTechTeens(cep: string);
var
  Response: IResponse;
begin
  try
    Response := TRequest.New
      .BaseURL('https://apicep.gsoft.com.br:7851/'+cep)
      //.Resource(cep)
      .Accept('application/json')
      .DataSetAdapter(memTableTT)
      .Get;

      memJSON.Clear;
      memJSON.Lines.Text := Response.Content;
      edtMorador.Visible := True;
      edtIBGE.Visible    := False;

    if Response.StatusCode = 200 then
    begin
        edtEndereco.Text := memTableTT.FieldByName('endereco').AsString;
//      edtEndereco.Text := Response.JSONValue.GetValue<string>('endereco');
        edtBairro.Text := Response.JSONValue.GetValue<string>('bairro');
        edtCidade.Text := Response.JSONValue.GetValue<string>('cidade');
        edtUF.Text := Response.JSONValue.GetValue<string>('uf');
        edtMorador.Text := Response.JSONValue.GetValue<string>('morador');
      end
      else
      begin
        ShowMessage('CEP não encontrado');
      end;
  except
    on E: Exception do
      ShowMessage('Ocorreu um erro: ' + E.Message);
  end;
end;


procedure TfrmMenu.PreencherEnderecoViaCep2(cep: string);
var
  HTTP: TIdHTTP;
  JSON: TJSONObject;
  Response: string;
begin
  HTTP := TIdHTTP.Create(nil);
  JSON := TJSONObject.Create;

  try
    Response := HTTP.Get('https://viacep.com.br/ws/' + cep + '/json');
    JSON := TJSONObject.ParseJSONValue(Response) as TJSONObject;

    edtEndereco.Text := JSON.GetValue('logradouro').Value;
    edtBairro.Text := JSON.GetValue('bairro').Value;
    edtCidade.Text := JSON.GetValue('localidade').Value;
    edtUF.Text := JSON.GetValue('uf').Value;
    edtIBGE.Text := JSON.GetValue('ibge').Value;
  except
    on E: Exception do
      ShowMessage('Ocorreu um erro: ' + E.Message);
  end;

  JSON.Free;
  HTTP.Free;
end;

{$R *.dfm}

procedure TfrmMenu.Button1Click(Sender: TObject);
begin
  if tabCEP.TabIndex <= 1 then
  begin
    //Consumo da api por objeto único
    if cmbAPI.ItemIndex = 0 then
      PreencherEnderecoViaCep(edtCEP.Text)
    else
      PreencherEnderecoTechTeens(edtCEP.Text);
  end
  else
  begin
    //Consumo da api por matriz array
    PreencherEnderecoTechTeensArray();
  end;

end;

procedure TfrmMenu.PreencherEnderecoTechTeensArray();
var
  Response: IResponse;
  JsonValue: TJSONValue;
begin
  try
    Response := TRequest.New
      .BaseURL('https://apicep.gsoft.com.br:7851/cep')
      .Accept('application/json')
      .DataSetAdapter(memTableTT)
      .Get;


      memJSON.Clear;
      memJSON.Lines.Text := Response.Content;
      AdvMemo1.Clear;
      AdvMemo1.Lines.Text := Response.Content;


    if Response.StatusCode = 200 then
    begin
      JsonValue := TJSONObject.ParseJSONValue(Response.Content);
      try
        if JsonValue is TJSONArray then
        begin
          memJSON.Lines.Text := TJSONArray(JsonValue).ToString;
          AdvMemo1.Lines.Text := TJSONArray(JsonValue).ToString;
        end
        else
        begin
          ShowMessage('Resposta inválida');
        end;
      finally
        JsonValue.Free;
      end;

      end
      else
      begin
        ShowMessage('Consulta não realizada!');
      end;
  except
    on E: Exception do
      ShowMessage('Ocorreu um erro: ' + E.Message);
  end;
end;

end.
