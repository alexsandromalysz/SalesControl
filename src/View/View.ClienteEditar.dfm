inherited FrmClienteEditar: TFrmClienteEditar
  Caption = 'FrmClienteEditar'
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlMain: TPanel
    inherited pnlHeader: TPanel
      Caption = 'Cadastro de Cliente'
    end
    inherited pnlFormulario: TPanel
      ExplicitTop = 29
      object grpNomeRazao: TGroupBox
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
        Caption = 'Nome:'
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitWidth = 600
        object edtNome: TEdit
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
          ExplicitWidth = 420
          ExplicitHeight = 25
        end
      end
      object grpNomeFantasia: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 45
        Width = 580
        Height = 45
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Nome Fantasia:'
        TabOrder = 1
        ExplicitLeft = 0
        ExplicitWidth = 600
        object edtNomeFantasia: TEdit
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
          ExplicitLeft = 12
          ExplicitHeight = 25
        end
      end
      object pnlDiv1: TPanel
        Left = 0
        Top = 90
        Width = 600
        Height = 45
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitTop = 92
        object grbNascimento: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 0
          Width = 111
          Height = 45
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Nascimento:'
          TabOrder = 0
          object dtpNascimento: TDateTimePicker
            AlignWithMargins = True
            Left = 5
            Top = 19
            Width = 105
            Height = 24
            Margins.Top = 0
            Margins.Bottom = 0
            Align = alLeft
            Date = 45715.572368946760000000
            Time = 45715.572368946760000000
            TabOrder = 0
            ExplicitLeft = 56
            ExplicitTop = 29
            ExplicitHeight = 25
          end
        end
        object grbCPF: TGroupBox
          Left = 121
          Top = 0
          Width = 168
          Height = 45
          Align = alLeft
          Caption = 'CPF:'
          TabOrder = 1
          object edtCPF: TEdit
            AlignWithMargins = True
            Left = 12
            Top = 19
            Width = 144
            Height = 24
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 115
            ExplicitHeight = 25
          end
        end
        object grpCNPJ: TGroupBox
          Left = 289
          Top = 0
          Width = 192
          Height = 45
          Align = alLeft
          Caption = 'CNPJ:'
          TabOrder = 2
          object edtCNPJ: TEdit
            AlignWithMargins = True
            Left = 12
            Top = 19
            Width = 168
            Height = 24
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 287
            ExplicitHeight = 25
          end
        end
      end
      object pnlDiv2: TPanel
        Left = 0
        Top = 135
        Width = 600
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        ExplicitTop = 137
        object grpEnderecoUF: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 0
          Width = 98
          Height = 48
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Estado (UF):'
          TabOrder = 0
          ExplicitLeft = 41
          ExplicitTop = -4
          ExplicitHeight = 45
          object cbbEnderecoUF: TComboBox
            AlignWithMargins = True
            Left = 2
            Top = 19
            Width = 94
            Height = 22
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Style = csOwnerDrawFixed
            ItemIndex = 0
            TabOrder = 0
            Text = 'AC'
            OnChange = cbbEnderecoUFChange
            Items.Strings = (
              'AC'
              'AL'
              'AP'
              'AM'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MT'
              'MS'
              'MG'
              'PA'
              'PB'
              'PR'
              'PE'
              'PI'
              'RJ'
              'RN'
              'RS'
              'RO'
              'RR'
              'SC')
            ExplicitWidth = 164
          end
        end
        object grpMunicipio: TGroupBox
          AlignWithMargins = True
          Left = 118
          Top = 0
          Width = 470
          Height = 48
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Munic'#237'pio'
          TabOrder = 1
          ExplicitHeight = 41
          object cbbEnderecoMunicipio: TComboBox
            AlignWithMargins = True
            Left = 2
            Top = 19
            Width = 466
            Height = 22
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Style = csOwnerDrawFixed
            ItemIndex = 0
            TabOrder = 0
            Text = 'N'#227'o selecionado'
            OnChange = cbbEnderecoMunicipioChange
            Items.Strings = (
              'N'#227'o selecionado')
          end
        end
      end
      object pnlDiv: TPanel
        Left = 0
        Top = 183
        Width = 600
        Height = 45
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        object grpNumero: TGroupBox
          AlignWithMargins = True
          Left = 491
          Top = 0
          Width = 94
          Height = 45
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'N'#250'mero:'
          TabOrder = 1
          ExplicitLeft = 427
          object edtEnderecoNumero: TEdit
            AlignWithMargins = True
            Left = 2
            Top = 19
            Width = 90
            Height = 24
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            TabOrder = 0
            ExplicitLeft = 12
            ExplicitWidth = 576
            ExplicitHeight = 25
          end
        end
        object grbEnderecoLogradouro: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 0
          Width = 471
          Height = 45
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Endere'#231'o: (Rua, avenida, etc...)'
          TabOrder = 0
          object edtEnderecoLogradouro: TEdit
            AlignWithMargins = True
            Left = 2
            Top = 19
            Width = 467
            Height = 24
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 403
            ExplicitHeight = 25
          end
        end
      end
      object pnlDiv4: TPanel
        Left = 0
        Top = 228
        Width = 600
        Height = 45
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 5
        object grpEnderecoBairro: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 0
          Width = 287
          Height = 45
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Bairro:'
          TabOrder = 0
          object edtEnderecoBairro: TEdit
            AlignWithMargins = True
            Left = 2
            Top = 19
            Width = 283
            Height = 24
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 467
            ExplicitHeight = 25
          end
        end
        object grpEnderecoComplemento: TGroupBox
          AlignWithMargins = True
          Left = 307
          Top = 0
          Width = 276
          Height = 45
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Complemento:'
          TabOrder = 1
          object edtEnderecoComplemento: TEdit
            AlignWithMargins = True
            Left = 2
            Top = 19
            Width = 272
            Height = 24
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 90
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
  object dsMunicipio: TDataSource
    Left = 432
    Top = 329
  end
end
