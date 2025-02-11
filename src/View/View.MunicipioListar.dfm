inherited FrmMunicipioListar: TFrmMunicipioListar
  Caption = 'Munic'#237'pios'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlMain: TPanel
    inherited pnlHeader: TPanel
      Caption = 'Lista de Munic'#237'pios'
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
