unit View.VendaEditar;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Default.PadraoEditar,
  System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids,
  Controller.Venda.Interfaces,
  Controller.Venda,
  Controller.VendaItem.Interfaces,
  Controller.VendaItem,
  Controller.Produto.Interfaces,
  Controller.Produto,
  Controller.Cliente.Interfaces,
  Controller.Cliente, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TFrmVendaEditar = class(TFrmPadraoEditar)
    grpObservacao: TGroupBox;
    grpCliente: TGroupBox;
    edtClienteId: TEdit;
    edtClienteNome: TEdit;
    mmoObservacao: TMemo;
    grpItem: TGroupBox;
    dbgrdListar: TDBGrid;
    dsItem: TDataSource;
    grpTotal: TGroupBox;
    edtValorLiquido: TEdit;
    grpDesconto: TGroupBox;
    edtValorDesconto: TEdit;
    dsProduto: TDataSource;
    dsCliente: TDataSource;
    actExcluirItem: TAction;
    pnlExcluirItem: TPanel;
    btnExcluirItem: TSpeedButton;
    pgcIncluir: TPageControl;
    tsCodBarras: TTabSheet;
    grpCodigoBarras: TGroupBox;
    edtCodigoBarras: TEdit;
    tsPesquisar: TTabSheet;
    dbgrdProduto: TDBGrid;
    edtPesquisar: TEdit;
    btnIncluir: TButton;
    actIncluirItem: TAction;
    procedure actCancelarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actConfirmarExecute(Sender: TObject);
    procedure edtCodigoBarrasExit(Sender: TObject);
    procedure edtClienteIdExit(Sender: TObject);
    procedure edtValorDescontoExit(Sender: TObject);
    procedure actExcluirItemExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actIncluirItemExecute(Sender: TObject);
  private
    { Private declarations }
    FController: IControllerVenda;
    FControllerItem: IControllerVendaItem;
    FControllerProduto: IControllerProduto;
    FControllerCliente: IControllerCliente;
    FTotalItem: Currency;
    procedure Carregar;
    procedure CarregarItens;
    procedure SalvarVenda;
  public
    { Public declarations }
    property TotalItem: Currency read FTotalItem write FTotalItem;
  end;

var
  FrmVendaEditar: TFrmVendaEditar;

implementation

{$R *.dfm}

procedure TFrmVendaEditar.actCancelarExecute(Sender: TObject);
begin
  inherited;
  ToView('VendaListar');
end;

procedure TFrmVendaEditar.actConfirmarExecute(Sender: TObject);
begin
  inherited;
  if (dsItem.DataSet = nil) or dsItem.DataSet.IsEmpty then
    raise Exception.Create('Obrigatório incluir algum item.');
  SalvarVenda;
  ToView('VendaListar');
end;

procedure TFrmVendaEditar.actExcluirItemExecute(Sender: TObject);
begin
  inherited;
  if (dsItem.DataSet = nil) or dsItem.DataSet.IsEmpty then
    Exit;
  FControllerItem.Item.Build.Excluir('ID', dsItem.DataSet.FieldByName('ID').AsString).Listar;
  CarregarItens;
end;

procedure TFrmVendaEditar.actIncluirItemExecute(Sender: TObject);
begin
  inherited;
  if dsProduto.DataSet.IsEmpty then
    raise Exception.Create('Não há produto selecionado para incluir.');

   if not(ID > 0) then
    SalvarVenda;

  FControllerItem.Item
    .VendaId(FController.Venda.Id)
    .ProdutoId(dsProduto.DataSet.FieldByName('ID').AsInteger)
    .ProdutoDescricao(dsProduto.DataSet.FieldByName('DESCRICAO').AsString)
    .PrecoVenda(dsProduto.DataSet.FieldByName('PRECO_VENDA').AsCurrency)
    .Quantidade(1)
    .ValorTotal(dsProduto.DataSet.FieldByName('PRECO_VENDA').AsCurrency)
    .Salvar;

  CarregarItens;
  SalvarVenda;
end;

procedure TFrmVendaEditar.Carregar;
begin
  if not(ID > 0) then
  begin
    edtClienteId.Text := EmptyStr;
    edtClienteNome.Text := EmptyStr;
    mmoObservacao.Lines.Clear;
    edtValorDesconto.Text := '0.00';
    edtValorLiquido.Text := '0.00';
    Exit;
  end;
  FController.Venda.Build.Selecionar(ID);
  edtClienteId.Text := FController.Venda.ClienteId.ToString;
  edtClienteNome.Text := FController.Venda.ClienteNome;
  mmoObservacao.Lines.Text := FController.Venda.Observacao;
  edtValorDesconto.Text := FormatFloat('#########0.00', FController.Venda.ValorDesconto);
  edtValorLiquido.Text := FormatFloat('#########0.00', FController.Venda.ValorLiquido);
end;

procedure TFrmVendaEditar.CarregarItens;
var
  vDesconto: Currency;
  vTotalLiquido: Currency;
begin
  TotalItem := 0;
  edtValorLiquido.Text := '0.00';
  dsItem.DataSet := FControllerItem.Item.Build.ListarPorFiltro('VENDA_ID', ID);
  Utils.AutoSizeDBGridColumns(dbgrdListar);
  dsItem.DataSet.First;
  while not dsItem.DataSet.Eof do
    try
      TotalItem := TotalItem + dsItem.DataSet.FieldByName('VALOR_TOTAL').AsCurrency;
    finally
      dsItem.DataSet.Next;
    end;

  vDesconto := StrToCurrDef(edtValorDesconto.Text,0);
  vTotalLiquido := TotalItem - vDesconto;
  edtValorLiquido.Text := FormatFloat('#########0.00', vTotalLiquido);;
end;

procedure TFrmVendaEditar.edtClienteIdExit(Sender: TObject);
var
  vID: Int64;
begin
  inherited;
  if not Utils.FormFocused(Self) then
    Exit;
  vID := StrToInt64Def(edtClienteId.Text,0);
  edtClienteId.Text := vID.ToString;
  if not(vID > 0) then
    Exit;
  dsCliente.DataSet := FControllerCliente.Cliente.Build.ListarPorFiltro('ID', vID);
  if dsCliente.DataSet.IsEmpty then
  begin
    ShowMessage('Não encontrado cliente com código: ' + vID.ToString);
    edtClienteId.Text := EmptyStr;
    edtCodigoBarras.SetFocus;
  end;
  edtClienteNome.Text := dsCliente.DataSet.FieldByName('NOME_RAZAO').AsString
end;

procedure TFrmVendaEditar.edtCodigoBarrasExit(Sender: TObject);
var
  vCodBarras: String;
begin
  inherited;
  if not Utils.FormFocused(Self) then
    Exit;

  vCodBarras := Trim(edtCodigoBarras.Text);
  if vCodBarras.IsEmpty then
    Exit;
  dsProduto.DataSet := FControllerProduto.Produto.Build.ListarPorFiltro('CODIGO_BARRAS', vCodBarras);
  if dsProduto.DataSet.IsEmpty then
  begin
    ShowMessage('Não encontrado produto com código de barras: ' + vCodBarras);
    edtCodigoBarras.SetFocus;
    Exit;
  end;

  if not(ID > 0) then
    SalvarVenda;

  FControllerItem.Item
    .VendaId(FController.Venda.Id)
    .ProdutoId(dsProduto.DataSet.FieldByName('ID').AsInteger)
    .ProdutoDescricao(dsProduto.DataSet.FieldByName('DESCRICAO').AsString)
    .PrecoVenda(dsProduto.DataSet.FieldByName('PRECO_VENDA').AsCurrency)
    .Quantidade(1)
    .ValorTotal(dsProduto.DataSet.FieldByName('PRECO_VENDA').AsCurrency)
    .Salvar;

  edtCodigoBarras.Text := EmptyStr;
  edtCodigoBarras.SetFocus;
  CarregarItens;
  SalvarVenda;
end;

procedure TFrmVendaEditar.edtPesquisarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  vSearch: String;
begin
  inherited;
  vSearch := edtPesquisar.Text;
  dsProduto.DataSet := FControllerProduto.Produto.Build.Pesquisar('DESCRICAO', vSearch);
  Utils.AutoSizeDBGridColumns(dbgrdProduto);
end;

procedure TFrmVendaEditar.edtValorDescontoExit(Sender: TObject);
var
  vDesconto: Currency;
begin
  inherited;
  if not Utils.FormFocused(Self) then
    Exit;
  vDesconto := StrToCurrDef(Trim(edtValorDesconto.Text),0);
  if (vDesconto < 0) then
  begin
    ShowMessage('Desconto não pode ser inferior a zero.');
    edtValorDesconto.Text := '0.00';
    edtValorLiquido.Text :=  FormatFloat('#########0.00', TotalItem);
    Exit;
  end;
  edtValorDesconto.Text :=  FormatFloat('#########0.00', vDesconto);
  if (vDesconto > TotalItem) then
  begin
    ShowMessage('Desconto não pode ser maior que o total dos itens.');
    edtValorDesconto.Text := '0.00';
    edtValorLiquido.Text :=  FormatFloat('#########0.00', TotalItem);
  end;
  edtValorLiquido.Text :=  FormatFloat('#########0.00', (TotalItem - vDesconto));
end;

procedure TFrmVendaEditar.FormCreate(Sender: TObject);
begin
  inherited;
  FController := TControllerVenda.New;
  FControllerItem := TControllerVendaItem.New;
  FControllerProduto := TControllerProduto.New;
  FControllerCliente := TControllerCliente.New;
end;

procedure TFrmVendaEditar.FormShow(Sender: TObject);
begin
  inherited;
  Carregar;
  CarregarItens;
  edtClienteId.SetFocus;
end;

procedure TFrmVendaEditar.SalvarVenda;
begin
  FController.Venda
    .Id(ID)
    .ClienteId(StrToIntDef(edtClienteId.Text,0))
    .ClienteNome(Trim(edtClienteNome.Text))
    .Observacao(mmoObservacao.Lines.Text)
    .ValorTotal(TotalItem)
    .ValorDesconto(StrToCurrDef(edtValorDesconto.Text,0))
    .ValorLiquido(StrToCurrDef(edtValorLiquido.Text,0))
    .Salvar;
  ID := FController.Venda.ID;
end;

end.
