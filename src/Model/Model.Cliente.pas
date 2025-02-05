unit Model.Cliente;

interface

uses
  Model.Pessoa,
  Model.Endereco;

type
  TCliente = class(TPessoa)
  private
    FEnderecosEntrega: TEnderecoList;
  public
    property EnderecosEntrega: TEnderecoList read FEnderecosEntrega write FEnderecosEntrega;
  end;

implementation

end.
