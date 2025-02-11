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
  Model.Resources.Connection in 'src\Model\Resources\Model.Resources.Connection.pas' {dmConnection: TDataModule},
  View.Default.PadraoListar in 'src\View\Default\View.Default.PadraoListar.pas' {FrmPadraoListar},
  View.MunicipioListar in 'src\View\View.MunicipioListar.pas' {FrmMunicipioListar},
  View.Default.PadraoEditar in 'src\View\Default\View.Default.PadraoEditar.pas' {FrmPadraoEditar},
  View.MunicipioEditar in 'src\View\View.MunicipioEditar.pas' {FrmMunicipioEditar},
  View.Main in 'src\View\View.Main.pas' {FrmMain},
  View.Routers in 'src\View\Routers\View.Routers.pas',
  View.HomePage in 'src\View\View.HomePage.pas' {FrmHomePage},
  Model.Resources.Service in 'src\Model\Resources\Model.Resources.Service.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmHomePage, FrmHomePage);
  Application.Run;
end.
