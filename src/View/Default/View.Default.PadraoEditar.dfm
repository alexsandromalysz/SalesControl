inherited FrmPadraoEditar: TFrmPadraoEditar
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'FrmPadraoEditar'
  ClientHeight = 400
  ClientWidth = 600
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlMain: TPanel
    Width = 600
    Height = 400
    ExplicitWidth = 600
    ExplicitHeight = 400
    object pnlOptions: TPanel
      Left = 0
      Top = 350
      Width = 600
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object pnlbtnConfirmar: TPanel
        Left = 9
        Top = 10
        Width = 130
        Height = 33
        BevelOuter = bvNone
        Color = 6726497
        ParentBackground = False
        TabOrder = 0
        object btnConfirmar: TSpeedButton
          Left = 0
          Top = 0
          Width = 130
          Height = 33
          Cursor = crHandPoint
          Action = actConfirmar
          Align = alClient
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = -3
          ExplicitTop = -3
          ExplicitWidth = 113
        end
      end
      object pnlbtnCancelar: TPanel
        Left = 145
        Top = 10
        Width = 130
        Height = 33
        BevelOuter = bvNone
        Color = 7500510
        ParentBackground = False
        TabOrder = 1
        object btnCancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 130
          Height = 33
          Cursor = crHandPoint
          Action = actCancelar
          Align = alClient
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 56
          ExplicitTop = 16
          ExplicitWidth = 154
        end
      end
    end
    object pnlHeader: TPanel
      Left = 0
      Top = 0
      Width = 600
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Header'
      Color = 15846085
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object pnlFormulario: TPanel
      Left = 0
      Top = 25
      Width = 600
      Height = 325
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  object actlstCadastro: TActionList
    Left = 37
    Top = 17
    object actConfirmar: TAction
      Caption = 'Confirmar'
      OnExecute = actConfirmarExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
    end
  end
end
