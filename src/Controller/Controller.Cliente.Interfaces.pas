unit Controller.Cliente.Interfaces;

interface

uses
  System.Generics.Collections,
  Model.Interfaces,
  Model.Entity.Cliente,
  Model.Resources.Interfaces;

type
  IClienteDTO = interface
    ['{8E083729-DE26-405F-A46F-2C8076DD2591}']
    function Id(Value: Integer): IClienteDTO; overload;
    function Id: Integer; overload;

    function NomeRazao(Value: string): IClienteDTO; overload;
    function NomeRazao: string; overload;

    function NomeFantasia(Value: string): IClienteDTO; overload;
    function NomeFantasia: string; overload;

    function Nascimento(Value: TDate): IClienteDTO; overload;
    function Nascimento: TDate; overload;

    function CPF(Value: string): IClienteDTO; overload;
    function CPF: string; overload;

    function CNPJ(Value: string): IClienteDTO; overload;
    function CNPJ: string; overload;

    function EnderecoMunicipioID(Value: Integer): IClienteDTO; overload;
    function EnderecoMunicipioID: Integer; overload;

    function EnderecoMunicipio(Value: string): IClienteDTO; overload;
    function EnderecoMunicipio: string; overload;

    function EnderecoLogradouro(Value: string): IClienteDTO; overload;
    function EnderecoLogradouro: string; overload;

    function EnderecoNumero(Value: string): IClienteDTO; overload;
    function EnderecoNumero: string; overload;

    function EnderecoBairro(Value: string): IClienteDTO; overload;
    function EnderecoBairro: string; overload;

    function EnderecoUF(Value: string): IClienteDTO; overload;
    function EnderecoUF: string; overload;

    function EnderecoComplemento(Value: string): IClienteDTO; overload;
    function EnderecoComplemento: string; overload;

    function Build: iModelService<TCLIENTE>;
    function Salvar: IClienteDTO;
  end;

  IControllerCliente = interface
    ['{AFC66FFB-9B41-45C1-9181-2457822EF988}']
    function Cliente: IClienteDTO;
  end;

implementation

end.
