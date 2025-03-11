unit View.ClienteEditar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Default.PadraoEditar,
  System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls,
  Data.DB, Datasnap.DBClient,
  Controller.Cliente.Interfaces,
  Controller.Cliente,
  Controller.Municipio.Interfaces,
  Controller.Municipio;

type
  TFrmClienteEditar = class(TFrmPadraoEditar)
    grpNomeRazao: TGroupBox;
    edtNome: TEdit;
    grpNomeFantasia: TGroupBox;
    edtNomeFantasia: TEdit;
    pnlDiv1: TPanel;
    grbNascimento: TGroupBox;
    dtpNascimento: TDateTimePicker;
    grbCPF: TGroupBox;
    edtCPF: TEdit;
    grpCNPJ: TGroupBox;
    edtCNPJ: TEdit;
    pnlDiv2: TPanel;
    grpEnderecoUF: TGroupBox;
    cbbEnderecoUF: TComboBox;
    grpMunicipio: TGroupBox;
    cbbEnderecoMunicipio: TComboBox;
    pnlDiv: TPanel;
    grpNumero: TGroupBox;
    edtEnderecoNumero: TEdit;
    grbEnderecoLogradouro: TGroupBox;
    edtEnderecoLogradouro: TEdit;
    pnlDiv4: TPanel;
    grpEnderecoBairro: TGroupBox;
    edtEnderecoBairro: TEdit;
    grpEnderecoComplemento: TGroupBox;
    edtEnderecoComplemento: TEdit;
    dsMunicipio: TDataSource;
    procedure actConfirmarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbbEnderecoUFChange(Sender: TObject);
    procedure cbbEnderecoMunicipioChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FController: IControllerCliente;
    FControllerMunicipio: IControllerMunicipio;
    procedure Carregar;
  public
    { Public declarations }
    procedure CarregarMunicipios(AUF: String);
  end;

var
  FrmClienteEditar: TFrmClienteEditar;

implementation

{$R *.dfm}

procedure TFrmClienteEditar.actCancelarExecute(Sender: TObject);
begin
  inherited;
  ToView('ClienteListar');
end;

procedure TFrmClienteEditar.actConfirmarExecute(Sender: TObject);
begin
  inherited;
  if dsMunicipio.DataSet.IsEmpty then
    raise Exception.Create('Município não selecionado.');

  FController.Cliente
    .Id(ID)
    .NomeRazao(Trim(edtNome.Text))
    .NomeFantasia(Trim(edtNomeFantasia.Text))
    .Nascimento(dtpNascimento.Date)
    .CPF(edtCPF.Text)
    .CNPJ(edtCNPJ.Text)
    .EnderecoUF(cbbEnderecoUF.Text)
    .EnderecoMunicipioID(dsMunicipio.DataSet.FieldByName('ID').AsInteger)
    .EnderecoMunicipio(cbbEnderecoMunicipio.Text)
    .EnderecoLogradouro(edtEnderecoLogradouro.Text)
    .EnderecoNumero(edtEnderecoNumero.Text)
    .EnderecoBairro(edtEnderecoBairro.Text)
    .EnderecoComplemento(edtEnderecoComplemento.Text)
    .Salvar;

  ToView('ClienteListar');
end;

procedure TFrmClienteEditar.Carregar;
begin
  if not(ID > 0) then
  begin
    edtNome.Text := EmptyStr;
    edtNomeFantasia.Text := EmptyStr;
    dtpNascimento.Date := 0;
    edtCPF.Text := EmptyStr;
    edtCNPJ.Text := EmptyStr;
    cbbEnderecoUF.ItemIndex := 0;
    cbbEnderecoMunicipio.ItemIndex := 0;
    edtEnderecoLogradouro.Text := EmptyStr;
    edtEnderecoNumero.Text := EmptyStr;
    edtEnderecoBairro.Text := EmptyStr;
    edtEnderecoComplemento.Text := EmptyStr;
    Exit;
  end;
  FController.Cliente.Build.Selecionar(ID);
  edtNome.Text := FController.Cliente.NomeRazao;
  edtNomeFantasia.Text := FController.Cliente.NomeFantasia;
  dtpNascimento.Date := FController.Cliente.Nascimento;
  edtCPF.Text := FController.Cliente.CPF;
  edtCNPJ.Text := FController.Cliente.CNPJ;
  edtEnderecoLogradouro.Text := FController.Cliente.EnderecoLogradouro;
  edtEnderecoNumero.Text := FController.Cliente.EnderecoNumero;
  edtEnderecoBairro.Text := FController.Cliente.EnderecoBairro;
  edtEnderecoComplemento.Text := FController.Cliente.EnderecoComplemento;
end;

procedure TFrmClienteEditar.CarregarMunicipios(AUF: String);
var
  I: Integer;
begin
  dsMunicipio.DataSet := FControllerMunicipio.Municipio.Build.ListarPorFiltro('UF', AUF);
  cbbEnderecoMunicipio.Items.Clear;
  while not dsMunicipio.DataSet.Eof do
    try
      cbbEnderecoMunicipio.Items.Add(dsMunicipio.DataSet.FieldByName('NOME').AsString)
    finally
      dsMunicipio.DataSet.Next;
    end;
  cbbEnderecoMunicipio.ItemIndex := 0;
end;

procedure TFrmClienteEditar.cbbEnderecoMunicipioChange(Sender: TObject);
begin
  inherited;
  if dsMunicipio.DataSet.IsEmpty then
    Exit;
  dsMunicipio.DataSet.RecNo := cbbEnderecoMunicipio.ItemIndex + 1;
end;

procedure TFrmClienteEditar.cbbEnderecoUFChange(Sender: TObject);
begin
  inherited;
  CarregarMunicipios(cbbEnderecoUF.Text);
end;

procedure TFrmClienteEditar.FormCreate(Sender: TObject);
begin
  inherited;
  FController := TControllerCliente.New;
  FControllerMunicipio := TControllerMunicipio.New;
end;

procedure TFrmClienteEditar.FormShow(Sender: TObject);
begin
  inherited;
  Carregar;
end;

end.
