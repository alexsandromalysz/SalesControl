inherited FrmProdutoEditar: TFrmProdutoEditar
  Caption = 'Cadastro de Produto'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlMain: TPanel
    inherited pnlHeader: TPanel
      Caption = 'Cadastro de Produto'
    end
    inherited pnlFormulario: TPanel
      object grpDescricao: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 0
        Width = 580
        Height = 45
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Descri'#231#227'o:'
        TabOrder = 0
        object edtDescricao: TEdit
          AlignWithMargins = True
          Left = 2
          Top = 19
          Width = 576
          Height = 24
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 25
        end
      end
      object pnlDiv1: TPanel
        Left = 0
        Top = 45
        Width = 600
        Height = 45
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object grpCodigoBarras: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 0
          Width = 143
          Height = 45
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'C'#243'digo de barras:'
          TabOrder = 0
          object edtCodigoBarras: TEdit
            AlignWithMargins = True
            Left = 2
            Top = 19
            Width = 139
            Height = 24
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            TabOrder = 0
            ExplicitHeight = 25
          end
        end
        object grpPrecoVenda: TGroupBox
          AlignWithMargins = True
          Left = 163
          Top = 0
          Width = 142
          Height = 45
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Pre'#231'o de venda:'
          TabOrder = 1
          object edtPrecoVenda: TEdit
            AlignWithMargins = True
            Left = 2
            Top = 19
            Width = 138
            Height = 24
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            TabOrder = 0
            OnExit = edtPrecoVendaExit
            ExplicitHeight = 25
          end
        end
      end
    end
  end
  inherited actlstCadastro: TActionList
    inherited actCancelar: TAction
      OnExecute = actCancelarExecute
    end
  end
end
