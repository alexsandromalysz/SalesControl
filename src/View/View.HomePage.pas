unit View.HomePage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Default.Padrao, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TFrmHomePage = class(TFrmPadrao)
    imgWallpaper: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHomePage: TFrmHomePage;

implementation

{$R *.dfm}

end.
