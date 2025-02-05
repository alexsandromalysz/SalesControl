unit Model.Interfaces;

interface

uses
  ormbr.container.objectset.interfaces,
  Entity.Model.municipio;

type
  iModelMunicipio = interface
    ['{ADF4B71D-0922-45FA-910B-8B45A1F0DAC3}']
    function DAO: IContainerObjectSet<TMUNICIPIO>;
  end;

implementation

end.
