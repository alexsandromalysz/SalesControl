unit View.ProdutoEditar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Default.PadraoEditar,
  System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask,
  Controller.Produto.Interfaces,
  Controller.Produto;

type
  TFrmProdutoEditar = class(TFrmPadraoEditar)
    grpDescricao: TGroupBox;
    edtDescricao: TEdit;
    pnlDiv1: TPanel;
    grpCodigoBarras: TGroupBox;
    edtCodigoBarras: TEdit;
    grpPrecoVenda: TGroupBox;
    edtPrecoVenda: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure actConfirmarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure edtPrecoVendaExit(Sender: TObject);
  private
    { Private declarations }
    FController: IControllerProduto;
    procedure Carregar;
  public
    { Public declarations }
    procedure OnProps; override;
  end;

var
  FrmProdutoEditar: TFrmProdutoEditar;

implementation

{$R *.dfm}

procedure TFrmProdutoEditar.actCancelarExecute(Sender: TObject);
begin
  inherited;
  ToView('ProdutoListar');
end;

procedure TFrmProdutoEditar.actConfirmarExecute(Sender: TObject);
var
  vPreco: Currency;
begin
  inherited;
  vPreco := StrToCurrDef(FormatFloat('#########0.00', StrToFloatDef(edtPrecoVenda.Text,0)),0);
  if not(vPreco > 0) then
    raise Exception.Create('Preço deve ser maior que zero.');

  FController.Produto
    .Id(ID)
    .Descricao(Trim(edtDescricao.Text))
    .CodigoBarras(Trim(edtCodigoBarras.Text))
    .PrecoVenda(vPreco)
    .Salvar;

  ToView('ProdutoListar');
end;

procedure TFrmProdutoEditar.Carregar;
begin
  if not(ID > 0) then
  begin
    edtDescricao.Text := EmptyStr;
    edtCodigoBarras.Text := EmptyStr;
    edtPrecoVenda.Text := '0.00';
    Exit;
  end;
  FController.Produto.Build.Selecionar(ID);
  edtDescricao.Text := FController.Produto.Descricao;
  edtCodigoBarras.Text := FController.Produto.CodigoBarras;
  edtPrecoVenda.Text := FloatToStr(FController.Produto.PrecoVenda);
end;

procedure TFrmProdutoEditar.edtPrecoVendaExit(Sender: TObject);
begin
  inherited;
  edtPrecoVenda.Text := FormatFloat('#########0.00', StrToFloatDef(edtPrecoVenda.Text,0));
end;

procedure TFrmProdutoEditar.FormCreate(Sender: TObject);
begin
  inherited;
  FController := TControllerProduto.New;
end;

procedure TFrmProdutoEditar.OnProps;
begin
  inherited;
  inherited;
  if Reload then
    Carregar;
end;

end.
