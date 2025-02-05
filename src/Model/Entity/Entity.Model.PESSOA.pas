unit Entity.Model.pessoa;

interface

uses
  DB, 
  Classes, 
  SysUtils, 
  Generics.Collections, 

  /// orm 
  Entity.Model.endereco,
  ormbr.types.blob, 
  ormbr.types.lazy,
  ormbr.types.nullable;

type
  [Entity]
  [Table('PESSOA', '')]
  [PrimaryKey('ID', NotInc, NoSort, False, 'Chave primária')]
  TPESSOA = class
  private
    { Private declarations } 
    FID: Nullable<Integer>;
    FNOME_RAZAO: Nullable<String>;
    FNOME_FANTASIA: Nullable<String>;
    FNASCIMENTO: Nullable<TDateTime>;
    FFUNDACAO: Nullable<TDateTime>;
    FCPF: Nullable<String>;
    FCNPJ: Nullable<String>;
    FRESIDENCIA_ENDERECO_ID: Nullable<Integer>;

    FENDERECO_0:  TENDERECO  ;
  public 
    { Public declarations } 
    constructor Create;
    destructor Destroy; override;
    [Column('ID', ftInteger)]
    [Dictionary('ID', 'Mensagem de validação', '', '', '', taCenter)]
    property ID: Nullable<Integer> read FID write FID;

    [Column('NOME_RAZAO', ftString, 200)]
    [Dictionary('NOME_RAZAO', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property NOME_RAZAO: Nullable<String> read FNOME_RAZAO write FNOME_RAZAO;

    [Column('NOME_FANTASIA', ftString, 200)]
    [Dictionary('NOME_FANTASIA', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property NOME_FANTASIA: Nullable<String> read FNOME_FANTASIA write FNOME_FANTASIA;

    [Column('NASCIMENTO', ftDateTime)]
    [Dictionary('NASCIMENTO', 'Mensagem de validação', '', '', '', taCenter)]
    property NASCIMENTO: Nullable<TDateTime> read FNASCIMENTO write FNASCIMENTO;

    [Column('FUNDACAO', ftDateTime)]
    [Dictionary('FUNDACAO', 'Mensagem de validação', '', '', '', taCenter)]
    property FUNDACAO: Nullable<TDateTime> read FFUNDACAO write FFUNDACAO;

    [Column('CPF', ftString, 15)]
    [Dictionary('CPF', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property CPF: Nullable<String> read FCPF write FCPF;

    [Column('CNPJ', ftString, 15)]
    [Dictionary('CNPJ', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property CNPJ: Nullable<String> read FCNPJ write FCNPJ;

    [Column('RESIDENCIA_ENDERECO_ID', ftInteger)]
    [ForeignKey('FK_PESSOA_ENDERECO', 'RESIDENCIA_ENDERECO_ID', 'ENDERECO', 'ID', SetNull, SetNull)]
    [Dictionary('RESIDENCIA_ENDERECO_ID', 'Mensagem de validação', '', '', '', taCenter)]
    property RESIDENCIA_ENDERECO_ID: Nullable<Integer> read FRESIDENCIA_ENDERECO_ID write FRESIDENCIA_ENDERECO_ID;

    [Association(OneToOne,'RESIDENCIA_ENDERECO_ID','ENDERECO','ID')]
    property ENDERECO: TENDERECO read FENDERECO_0 write FENDERECO_0;

  end;

implementation

uses
  dbcbr.mapping.register;

constructor TPESSOA.Create;
begin
  FENDERECO_0 := TENDERECO.Create;
end;

destructor TPESSOA.Destroy;
begin
  if Assigned(FENDERECO_0) then
    FENDERECO_0.Free;

  inherited;
end;

initialization
  TRegisterClass.RegisterEntity(TPESSOA)

end.
