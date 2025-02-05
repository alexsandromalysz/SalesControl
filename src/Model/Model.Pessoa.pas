unit Model.Pessoa;

interface

uses
  Model.Endereco;

type
  TPessoa = class
  private
    FCNPJ: string;
    FNascimento: TDateTime;
    FCPF: string;
    FFundacao: TDateTime;
    FNomeRazao: string;
    FNomeFantasia: string;
    FEnderecoResidencia: TEndereco;
  public
    property NomeRazao: string read FNomeRazao write FNomeRazao;
    property NomeFantasia: string read FNomeFantasia write FNomeFantasia;
    property Nascimento: TDateTime read FNascimento write FNascimento;
    property CPF: string read FCPF write FCPF;
    property Fundacao: TDateTime read FFundacao write FFundacao;
    property CNPJ: string read FCNPJ write FCNPJ;
    property EnderecoResidencia: TEndereco read FEnderecoResidencia write FEnderecoResidencia;
  end;

implementation

end.
