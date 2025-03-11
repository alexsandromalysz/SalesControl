inherited FrmVendaEditar: TFrmVendaEditar
  Caption = 'Venda'
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlMain: TPanel
    inherited pnlOptions: TPanel
      TabOrder = 2
    end
    inherited pnlHeader: TPanel
      Caption = 'Venda'
      TabOrder = 0
    end
    inherited pnlFormulario: TPanel
      TabOrder = 1
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
        object mmoObservacao: TMemo
          Left = 2
          Top = 19
          Width = 348
          Height = 51
          Align = alClient
          TabOrder = 0
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
        Caption = 'Itens:'
        TabOrder = 1
        DesignSize = (
          580
          198)
        object dbgrdListar: TDBGrid
          AlignWithMargins = True
          Left = 209
          Top = 41
          Width = 369
          Height = 155
          Margins.Left = 0
          Margins.Top = 22
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
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
        object pnlExcluirItem: TPanel
          Left = 448
          Top = 19
          Width = 129
          Height = 20
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          Color = 7500510
          ParentBackground = False
          TabOrder = 2
          object btnExcluirItem: TSpeedButton
            Left = 0
            Top = 0
            Width = 129
            Height = 20
            Cursor = crHandPoint
            Action = actExcluirItem
            Align = alClient
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitTop = 8
            ExplicitWidth = 57
            ExplicitHeight = 17
          end
        end
        object pgcIncluir: TPageControl
          Left = 2
          Top = 19
          Width = 207
          Height = 177
          ActivePage = tsPesquisar
          Align = alLeft
          TabOrder = 0
          object tsPesquisar: TTabSheet
            Caption = 'Pesquisar'
            ImageIndex = 1
            object dbgrdProduto: TDBGrid
              AlignWithMargins = True
              Left = 0
              Top = 30
              Width = 199
              Height = 90
              Margins.Left = 0
              Margins.Top = 30
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              DataSource = dsProduto
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleClick, dgTitleHotTrack]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
            end
            object edtPesquisar: TEdit
              AlignWithMargins = True
              Left = 1
              Top = 1
              Width = 196
              Height = 25
              Margins.Left = 10
              Margins.Top = 0
              Margins.Right = 10
              Margins.Bottom = 0
              TabOrder = 0
              OnKeyDown = edtPesquisarKeyDown
            end
            object btnIncluir: TButton
              Left = 0
              Top = 120
              Width = 199
              Height = 25
              Action = actIncluirItem
              Align = alBottom
              TabOrder = 2
              ExplicitLeft = 175
              ExplicitTop = 129
              ExplicitWidth = 40
            end
          end
          object tsCodBarras: TTabSheet
            Caption = 'Ler C'#243'd. Barras'
            ExplicitWidth = 568
            ExplicitHeight = 121
            object grpCodigoBarras: TGroupBox
              Left = 3
              Top = 3
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
              end
            end
          end
        end
      end
    end
  end
  inherited actlstCadastro: TActionList
    Left = 309
    Top = 161
    inherited actCancelar: TAction
      OnExecute = actCancelarExecute
    end
    object actExcluirItem: TAction
      Caption = 'Excluir Item (Del)'
      ShortCut = 46
      OnExecute = actExcluirItemExecute
    end
    object actIncluirItem: TAction
      Caption = 'Adicionar produto'
      OnExecute = actIncluirItemExecute
    end
  end
  object dsItem: TDataSource
    Left = 480
    Top = 160
  end
  object dsProduto: TDataSource
    Left = 424
    Top = 160
  end
  object dsCliente: TDataSource
    Left = 368
    Top = 160
  end
end
