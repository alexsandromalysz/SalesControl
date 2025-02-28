inherited FrmVendaEditar: TFrmVendaEditar
  Caption = 'Venda'
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlMain: TPanel
    inherited pnlHeader: TPanel
      Caption = 'Venda'
      ExplicitTop = -3
    end
    inherited pnlFormulario: TPanel
      ExplicitTop = 29
      object grpObservacao: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 253
        Width = 580
        Height = 72
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alBottom
        Caption = 'Observa'#231#227'o:'
        TabOrder = 2
        ExplicitTop = 49
        object mmoObservacao: TMemo
          Left = 2
          Top = 19
          Width = 348
          Height = 51
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 383
        end
        object grpTotal: TGroupBox
          AlignWithMargins = True
          Left = 474
          Top = 19
          Width = 104
          Height = 51
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ExplicitLeft = 464
          object edtValorLiquido: TEdit
            AlignWithMargins = True
            Left = 2
            Top = 23
            Width = 100
            Height = 26
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = '0.00'
            ExplicitTop = 19
            ExplicitHeight = 33
          end
        end
        object grpDesconto: TGroupBox
          AlignWithMargins = True
          Left = 360
          Top = 19
          Width = 104
          Height = 51
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Caption = 'Desconto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object edtValorDesconto: TEdit
            AlignWithMargins = True
            Left = 2
            Top = 23
            Width = 100
            Height = 26
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Text = '0.00'
            OnExit = edtValorDescontoExit
            ExplicitHeight = 33
          end
        end
      end
      object grpCliente: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 0
        Width = 580
        Height = 49
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Cliente (C'#243'digo - Nome):'
        TabOrder = 0
        ExplicitLeft = 9
        object edtClienteId: TEdit
          AlignWithMargins = True
          Left = 2
          Top = 19
          Width = 79
          Height = 28
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Alignment = taCenter
          TabOrder = 0
          OnExit = edtClienteIdExit
          ExplicitHeight = 25
        end
        object edtClienteNome: TEdit
          AlignWithMargins = True
          Left = 91
          Top = 19
          Width = 487
          Height = 28
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          ReadOnly = True
          TabOrder = 1
          ExplicitHeight = 25
        end
      end
      object grpItem: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 52
        Width = 580
        Height = 198
        Margins.Left = 10
        Margins.Right = 10
        Align = alClient
        Caption = 'Itens (Del: Excluir):'
        TabOrder = 1
        ExplicitLeft = 0
        ExplicitTop = 46
        ExplicitWidth = 600
        ExplicitHeight = 204
        DesignSize = (
          580
          198)
        object dbgrdListar: TDBGrid
          AlignWithMargins = True
          Left = 202
          Top = 19
          Width = 376
          Height = 177
          Margins.Left = 200
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsItem
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect]
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
        object grpCodigoBarras: TGroupBox
          Left = 10
          Top = 19
          Width = 183
          Height = 46
          Caption = 'C'#243'digo de Barras:'
          TabOrder = 0
          object edtCodigoBarras: TEdit
            AlignWithMargins = True
            Left = 12
            Top = 19
            Width = 159
            Height = 25
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alClient
            TabOrder = 0
            OnExit = edtCodigoBarrasExit
            ExplicitWidth = 144
          end
        end
        object pnlExcluirItem: TPanel
          Left = 91
          Top = 154
          Width = 102
          Height = 33
          Anchors = [akLeft, akBottom]
          BevelOuter = bvNone
          Color = 7500510
          ParentBackground = False
          TabOrder = 2
          object btnExcluirItem: TSpeedButton
            Left = 0
            Top = 0
            Width = 102
            Height = 33
            Cursor = crHandPoint
            Action = actExcluirItem
            Align = alClient
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = -16
            ExplicitTop = 24
            ExplicitWidth = 130
          end
        end
      end
    end
  end
  inherited actlstCadastro: TActionList
    inherited actCancelar: TAction
      OnExecute = actCancelarExecute
    end
    object actExcluirItem: TAction
      Caption = 'Excluir Item'
      ShortCut = 46
      OnExecute = actExcluirItemExecute
    end
  end
  object dsItem: TDataSource
    Left = 544
    Top = 224
  end
  object dsProduto: TDataSource
    Left = 496
    Top = 224
  end
  object dsCliente: TDataSource
    Left = 448
    Top = 224
  end
end
