unit Controller.Municipio.Interfaces;

interface

uses
  System.Generics.Collections,
  Model.Interfaces,
  Model.Entity.Municipio,
  Model.Resources.Interfaces;

type
  IMunicipioDTO = interface
    ['{3B94A51A-4E32-4694-83D9-F6DCC5CA0CE7}']
    function Id(Value: Integer): IMunicipioDTO; overload;
    function Id: Integer; overload;
    function Nome(Value: string): IMunicipioDTO; overload;
    function Nome: string; overload;
    function CodigoIBGE(Value: Integer): IMunicipioDTO; overload;
    function CodigoIBGE: Integer; overload;
    function UF(Value: string): IMunicipioDTO; overload;
    function UF: string; overload;

    function Build: iModelService<TMUNICIPIO>;
    function Salvar: IMunicipioDTO;
  end;

  IControllerMunicipio = interface
    ['{C51A50E9-3ABD-41A4-B791-D31565DAB687}']
    function Municipio: IMunicipioDTO;
  end;

implementation

end.
