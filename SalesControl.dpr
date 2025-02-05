program SalesControl;

uses
  Vcl.Forms,
  View.Menu in 'src\View\View.Menu.pas' {FrmMenu},
  Model.Cliente in 'src\Model\Model.Cliente.pas',
  Model.Pessoa in 'src\Model\Model.Pessoa.pas',
  Model.Endereco in 'src\Model\Model.Endereco.pas',
  Model.Municipio in 'src\Model\Model.Municipio.pas',
  View.Cadastro in 'src\View\View.Cadastro.pas' {FrmCadastro},
  Model.Connection in 'src\Model\Connection\Model.Connection.pas' {dmConnection: TDataModule},
  Model.Connection.Interfaces in 'src\Model\Connection\Model.Connection.Interfaces.pas',
  Entity.Model.ENDERECO in 'src\Model\Entity\Entity.Model.ENDERECO.pas',
  Entity.Model.MUNICIPIO in 'src\Model\Entity\Entity.Model.MUNICIPIO.pas',
  Entity.Model.PESSOA in 'src\Model\Entity\Entity.Model.PESSOA.pas',
  Model.Interfaces in 'src\Model\Model.Interfaces.pas',
  Controller.Interfaces in 'src\Controller\Controller.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TdmConnection, dmConnection);
  ReportMemoryLeaksOnShutdown := True;
  Application.Run;
end.
