inherited FrmPadraoListar: TFrmPadraoListar
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'FrmPadraoListar'
  ClientHeight = 391
  ClientWidth = 630
  Position = poMainFormCenter
  WindowState = wsMaximized
  ExplicitWidth = 630
  ExplicitHeight = 391
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlMain: TPanel
    Width = 630
    Height = 391
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 630
    ExplicitHeight = 391
    object pnlOptions: TPanel
      Left = 0
      Top = 341
      Width = 630
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        630
        50)
      object pnlbtnIncluir: TPanel
        Left = 9
        Top = 10
        Width = 90
        Height = 33
        BevelOuter = bvNone
        Color = 6726497
        ParentBackground = False
        TabOrder = 0
        object btnIncluir: TSpeedButton
          Left = 0
          Top = 0
          Width = 90
          Height = 33
          Cursor = crHandPoint
          Action = actIncluir
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
      object pnlbtnEditar: TPanel
        Left = 104
        Top = 10
        Width = 90
        Height = 33
        BevelOuter = bvNone
        Color = 7715583
        ParentBackground = False
        TabOrder = 1
        object btnEditar: TSpeedButton
          Left = 0
          Top = 0
          Width = 90
          Height = 33
          Cursor = crHandPoint
          Action = actEditar
          Align = alClient
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = -4
        end
      end
      object pnlbtnExcluir: TPanel
        Left = 200
        Top = 10
        Width = 90
        Height = 33
        BevelOuter = bvNone
        Color = 7500510
        ParentBackground = False
        TabOrder = 2
        object btnExcluir: TSpeedButton
          Left = 0
          Top = 0
          Width = 90
          Height = 33
          Cursor = crHandPoint
          Action = actExcluir
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
      object pnlbtnFechar: TPanel
        Left = 528
        Top = 10
        Width = 90
        Height = 33
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        Color = 7500510
        ParentBackground = False
        TabOrder = 3
        object btnFechar: TSpeedButton
          Left = 0
          Top = 0
          Width = 90
          Height = 33
          Cursor = crHandPoint
          Action = actFechar
          Align = alClient
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 40
          ExplicitTop = 8
        end
      end
    end
    object dbgrdListar: TDBGrid
      Left = 0
      Top = 25
      Width = 630
      Height = 316
      Align = alClient
      DataSource = dsListar
      Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect]
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object pnlHeader: TPanel
      Left = 0
      Top = 0
      Width = 630
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
      TabOrder = 2
    end
  end
  object actlstListar: TActionList
    Left = 560
    Top = 24
    object actIncluir: TAction
      Caption = 'Incluir'
    end
    object actEditar: TAction
      Caption = 'Editar'
    end
    object actExcluir: TAction
      Caption = 'Excluir'
    end
    object actFechar: TAction
      Caption = 'Fechar'
    end
  end
  object dsListar: TDataSource
    Left = 504
    Top = 24
  end
end
