unit Entity.Model.endereco;

interface

uses
  DB, 
  Classes, 
  SysUtils, 
  Generics.Collections, 

  /// orm
  Entity.Model.municipio,
  ormbr.types.blob, 
  ormbr.types.lazy,
  ormbr.types.nullable;

type
  [Entity]
  [Table('ENDERECO', '')]
  [PrimaryKey('ID', NotInc, NoSort, False, 'Chave prim�ria')]
  TENDERECO = class
  private
    { Private declarations } 
    FID: Nullable<Integer>;
    FPESSOA_ID: Nullable<Integer>;
    FTIPO: Nullable<Integer>;
    FDESCRICAO: Nullable<String>;
    FLOGRADOURO: Nullable<String>;
    FNUMERO: Nullable<String>;
    FBAIRRO: Nullable<String>;
    FCEP: Nullable<String>;
    FUF: Nullable<String>;
    FMUNICIPIO_ID: Integer;
    FREFERENCIA: Nullable<String>;
    FCOMPLEMENTO: Nullable<String>;

    FENDERECO_0:  TENDERECO  ;
    FMUNICIPIO_1:  TMUNICIPIO  ;
  public 
    { Public declarations } 
    constructor Create;
    destructor Destroy; override;
    [Column('ID', ftInteger)]
    [Dictionary('ID', 'Mensagem de valida��o', '', '', '', taCenter)]
    property ID: Nullable<Integer> read FID write FID;

    [Column('PESSOA_ID', ftInteger)]
    [ForeignKey('FK_ENDERECO_PESSOA', 'PESSOA_ID', 'ENDERECO', 'ID', SetNull, SetNull)]
    [Dictionary('PESSOA_ID', 'Mensagem de valida��o', '', '', '', taCenter)]
    property PESSOA_ID: Nullable<Integer> read FPESSOA_ID write FPESSOA_ID;

    [Column('TIPO', ftInteger)]
    [Dictionary('TIPO', 'Mensagem de valida��o', '', '', '', taCenter)]
    property TIPO: Nullable<Integer> read FTIPO write FTIPO;

    [Column('DESCRICAO', ftString, 100)]
    [Dictionary('DESCRICAO', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property DESCRICAO: Nullable<String> read FDESCRICAO write FDESCRICAO;

    [Column('LOGRADOURO', ftString, 100)]
    [Dictionary('LOGRADOURO', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property LOGRADOURO: Nullable<String> read FLOGRADOURO write FLOGRADOURO;

    [Column('NUMERO', ftString, 30)]
    [Dictionary('NUMERO', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property NUMERO: Nullable<String> read FNUMERO write FNUMERO;

    [Column('BAIRRO', ftString, 50)]
    [Dictionary('BAIRRO', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property BAIRRO: Nullable<String> read FBAIRRO write FBAIRRO;

    [Column('CEP', ftString, 15)]
    [Dictionary('CEP', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property CEP: Nullable<String> read FCEP write FCEP;

    [Column('UF', ftString, 2)]
    [Dictionary('UF', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property UF: Nullable<String> read FUF write FUF;

    [Restrictions([NotNull])]
    [Column('MUNICIPIO_ID', ftInteger)]
    [ForeignKey('FK_ENDERECO_MUNICIPIO', 'MUNICIPIO_ID', 'MUNICIPIO', 'ID', SetNull, SetNull)]
    [Dictionary('MUNICIPIO_ID', 'Mensagem de valida��o', '', '', '', taCenter)]
    property MUNICIPIO_ID: Integer read FMUNICIPIO_ID write FMUNICIPIO_ID;

    [Column('REFERENCIA', ftString, 50)]
    [Dictionary('REFERENCIA', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property REFERENCIA: Nullable<String> read FREFERENCIA write FREFERENCIA;

    [Column('COMPLEMENTO', ftString, 50)]
    [Dictionary('COMPLEMENTO', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property COMPLEMENTO: Nullable<String> read FCOMPLEMENTO write FCOMPLEMENTO;

    [Association(OneToOne,'PESSOA_ID','ENDERECO','ID')]
    property ENDERECO: TENDERECO read FENDERECO_0 write FENDERECO_0;

    [Association(OneToOne,'MUNICIPIO_ID','MUNICIPIO','ID')]
    property MUNICIPIO: TMUNICIPIO read FMUNICIPIO_1 write FMUNICIPIO_1;

  end;

implementation

uses
  dbcbr.mapping.register;

constructor TENDERECO.Create;
begin
  FENDERECO_0 := TENDERECO.Create;
  FMUNICIPIO_1 := TMUNICIPIO.Create;
end;

destructor TENDERECO.Destroy;
begin
  if Assigned(FENDERECO_0) then
    FENDERECO_0.Free;

  if Assigned(FMUNICIPIO_1) then
    FMUNICIPIO_1.Free;

  inherited;
end;

initialization
  TRegisterClass.RegisterEntity(TENDERECO)

end.
