inherited FrmClienteListar: TFrmClienteListar
  Caption = 'Clientes'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlMain: TPanel
    inherited pnlHeader: TPanel
      Caption = 'Clientes'
    end
  end
  inherited actlstListar: TActionList
    inherited actIncluir: TAction
      OnExecute = actIncluirExecute
    end
    inherited actEditar: TAction
      OnExecute = actEditarExecute
    end
    inherited actExcluir: TAction
      OnExecute = actExcluirExecute
    end
    inherited actFechar: TAction
      OnExecute = actFecharExecute
    end
  end
end
