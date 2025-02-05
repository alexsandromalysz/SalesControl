unit Model.Endereco;

interface

uses
  System.Generics.Collections,
  Model.Municipio;

type
  TEnderecoTipo = (endtpNaoDefinido, endtpUrbano, endtpRural, endtpExtrangeiro);

  TEndereco = class
  private
    FID: string;
    FLogradouro: string;
    FBairro: string;
    FMunicipio: TModelMunicipio;
    FUF: string;
    FDescricao: String;
    FCEP: string;
    FNumero: string;
    FComplemento: string;
    FReferencia: string;
    FTipoEndereco: TEnderecoTipo;
    FPessoaID: string;
  public
    property ID: string read FID;
    property PessoaID: string read FPessoaID write FPessoaID;
    property Tipo: TEnderecoTipo read FTipoEndereco write FTipoEndereco;
    property Descricao: String read FDescricao write FDescricao;
    property Logradouro: string read FLogradouro write FLogradouro;
    property Numero: string read FNumero write FNumero;
    property Bairro: string read FBairro write FBairro;
    property CEP: string read FCEP write FCEP;
    property UF: string read FUF write FUF;
    property Municipio: TModelMunicipio read FMunicipio write FMunicipio;
    property Referencia: string read FReferencia write FReferencia;
    property Complemento: string read FComplemento write FComplemento;
  end;

  TEnderecoList = class(TObjectList<TEndereco>);

implementation

end.
