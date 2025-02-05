unit Model.Connection.Interfaces;

interface

uses
  dbebr.factory.interfaces;

type
  iModelConnection = interface
    ['{33FA20E8-35FF-42EF-9E39-EE7D33622633}']
    function Conn: IDBConnection;
  end;

implementation

end.
