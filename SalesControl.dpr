program SalesControl;

uses
  Vcl.Forms,
  Model.Entity.MUNICIPIO in 'src\Model\Entity\Model.Entity.MUNICIPIO.pas',
  View.Default.Padrao in 'src\View\Default\View.Default.Padrao.pas' {FrmPadrao},
  Controller.Municipio in 'src\Controller\Controller.Municipio.pas',
  Controller.Municipio.Interfaces in 'src\Controller\Controller.Municipio.Interfaces.pas',
  Model.Interfaces in 'src\Model\Model.Interfaces.pas',
  Model.Municipio in 'src\Model\Model.Municipio.pas',
  Model.Resources.Interfaces in 'src\Model\Resources\Model.Resources.Interfaces.pas',
  View.Default.PadraoListar in 'src\View\Default\View.Default.PadraoListar.pas' {FrmPadraoListar},
  View.MunicipioListar in 'src\View\View.MunicipioListar.pas' {FrmMunicipioListar},
  View.Default.PadraoEditar in 'src\View\Default\View.Default.PadraoEditar.pas' {FrmPadraoEditar},
  View.MunicipioEditar in 'src\View\View.MunicipioEditar.pas' {FrmMunicipioEditar},
  View.Main in 'src\View\View.Main.pas' {FrmMain},
  View.Routers in 'src\View\Routers\View.Routers.pas',
  View.HomePage in 'src\View\View.HomePage.pas' {FrmHomePage},
  Model.Resources.Service in 'src\Model\Resources\Model.Resources.Service.pas',
  Model.Resources.Connection in 'src\Model\Resources\Model.Resources.Connection.pas',
  View.Utils in 'src\View\View.Utils.pas',
  Model.Entity.PRODUTO in 'src\Model\Entity\Model.Entity.PRODUTO.pas',
  Model.Entity.CLIENTE in 'src\Model\Entity\Model.Entity.CLIENTE.pas',
  Controller.Cliente.Interfaces in 'src\Controller\Controller.Cliente.Interfaces.pas',
  Controller.Cliente in 'src\Controller\Controller.Cliente.pas',
  Controller.Produto.Interfaces in 'src\Controller\Controller.Produto.Interfaces.pas',
  Controller.Produto in 'src\Controller\Controller.Produto.pas',
  View.ClienteListar in 'src\View\View.ClienteListar.pas' {FrmClienteListar},
  View.ClienteEditar in 'src\View\View.ClienteEditar.pas' {FrmClienteEditar},
  View.ProdutoListar in 'src\View\View.ProdutoListar.pas' {FrmProdutoListar},
  View.ProdutoEditar in 'src\View\View.ProdutoEditar.pas' {FrmProdutoEditar},
  View.VendaEditar in 'src\View\View.VendaEditar.pas' {FrmVendaEditar},
  Model.Entity.VENDA in 'src\Model\Entity\Model.Entity.VENDA.pas',
  Controller.Venda.Interfaces in 'src\Controller\Controller.Venda.Interfaces.pas',
  Controller.Venda in 'src\Controller\Controller.Venda.pas',
  View.VendaListar in 'src\View\View.VendaListar.pas' {FrmVendaListar},
  Model.Entity.VENDA_ITEM in 'src\Model\Entity\Model.Entity.VENDA_ITEM.pas',
  Controller.VendaItem in 'src\Controller\Controller.VendaItem.pas',
  Controller.VendaItem.Interfaces in 'src\Controller\Controller.VendaItem.Interfaces.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmHomePage, FrmHomePage);
  Application.CreateForm(TFrmClienteListar, FrmClienteListar);
  Application.CreateForm(TFrmClienteEditar, FrmClienteEditar);
  Application.CreateForm(TFrmProdutoListar, FrmProdutoListar);
  Application.CreateForm(TFrmProdutoEditar, FrmProdutoEditar);
  Application.CreateForm(TFrmVendaEditar, FrmVendaEditar);
  Application.CreateForm(TFrmVendaListar, FrmVendaListar);
  Application.Run;
end.
