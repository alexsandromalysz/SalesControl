unit Entity.Model.municipio;

interface

uses
  DB, 
  Classes, 
  SysUtils, 
  Generics.Collections,
  /// orm 
  ormbr.types.blob, 
  ormbr.types.lazy,
  ormbr.types.nullable;

type
  [Entity]
  [Table('MUNICIPIO', '')]
  [PrimaryKey('ID', NotInc, NoSort, False, 'Chave primária')]
  TMUNICIPIO = class
  private
    { Private declarations } 
    FID: Nullable<Integer>;
    FCODIGO_IBGE: Nullable<Integer>;
    FNOME: Nullable<String>;
    FUF: Nullable<String>;
  public 
    { Public declarations } 
    [Column('ID', ftInteger)]
    [Dictionary('ID', 'Mensagem de validação', '', '', '', taCenter)]
    property ID: Nullable<Integer> read FID write FID;

    [Column('CODIGO_IBGE', ftInteger)]
    [Dictionary('CODIGO_IBGE', 'Mensagem de validação', '', '', '', taCenter)]
    property CODIGO_IBGE: Nullable<Integer> read FCODIGO_IBGE write FCODIGO_IBGE;

    [Column('NOME', ftString, 200)]
    [Dictionary('NOME', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property NOME: Nullable<String> read FNOME write FNOME;

    [Column('UF', ftString, 2)]
    [Dictionary('UF', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property UF: Nullable<String> read FUF write FUF;
  end;

implementation

uses
  dbcbr.mapping.register;

initialization
  TRegisterClass.RegisterEntity(TMUNICIPIO)

end.
