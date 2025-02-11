unit Model.Entity.MUNICIPIO;

interface

uses
  SimpleAttributes;

Type
  [Tabela('MUNICIPIO')]
  TMUNICIPIO = class
  private
    FID: Integer;
    FNOME: string;
    FCODIGO_IBGE: Integer;
    FUF: string;
    procedure SetCODIGO_IBGE(const Value: Integer);
    procedure SetID(const Value: Integer);
    procedure SetNOME(const Value: String);
    procedure SetUF(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
  published
    [Campo('ID'), Pk, AutoInc]
    property ID: Integer read FID write SetID;
    [Campo('NOME')]
    property NOME: String read FNOME write SetNOME;
    [Campo('CODIGO_IBGE')]
    property CODIGO_IBGE: Integer read FCODIGO_IBGE write SetCODIGO_IBGE;
    [Campo('UF')]
    property UF: string read FUF write SetUF;
  end;

implementation

{ TMUNICIPIO }

constructor TMUNICIPIO.Create;
begin

end;

destructor TMUNICIPIO.Destroy;
begin

  inherited;
end;

procedure TMUNICIPIO.SetCODIGO_IBGE(const Value: Integer);
begin
  FCODIGO_IBGE := Value;
end;

procedure TMUNICIPIO.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TMUNICIPIO.SetNOME(const Value: String);
begin
  FNOME := Value;
end;

procedure TMUNICIPIO.SetUF(const Value: string);
begin
  FUF := Value;
end;

end.
