unit View.Utils;

interface

uses
  Vcl.DBGrids;

type

  IUtils = interface
    ['{80E00881-C3CA-4E29-91CE-583185BAA486}']

    procedure AutoSizeDBGridColumns(DBGrid: TDBGrid);
  end;

  TUtils = class(TInterfacedObject, IUtils)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IUtils;

    procedure AutoSizeDBGridColumns(DBGrid: TDBGrid);
  end;

implementation

uses
  Data.DB;

{ TUtils }

procedure TUtils.AutoSizeDBGridColumns(DBGrid: TDBGrid);
var
  i, ColWidth, MaxWidth: Integer;
  Dataset: TDataset;
begin
  if not Assigned(DBGrid.DataSource)
    or not Assigned(DBGrid.DataSource.DataSet) then
  begin
    Exit;
  end;

  Dataset := DBGrid.DataSource.DataSet;
  DBGrid.Canvas.Font := DBGrid.Font;
  for i := 0 to DBGrid.Columns.Count - 1 do
  begin
    MaxWidth := DBGrid.Canvas.TextWidth(DBGrid.Columns[i].Title.Caption) + 10;
    Dataset.DisableControls;
    try
      Dataset.First;
      while not Dataset.Eof do
      begin
        ColWidth := DBGrid.Canvas.TextWidth(Dataset.Fields[i].AsString) + 10;
        if ColWidth > MaxWidth then
          MaxWidth := ColWidth;
        Dataset.Next;
      end;
    finally
      Dataset.EnableControls;
    end;
    DBGrid.Columns[i].Width := MaxWidth;
  end;
end;

constructor TUtils.Create;
begin

end;

destructor TUtils.Destroy;
begin

  inherited;
end;

class function TUtils.New: IUtils;
begin
  Result := Self.Create;
end;

end.
