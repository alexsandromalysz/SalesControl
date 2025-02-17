inherited FrmMunicipioEditar: TFrmMunicipioEditar
  Caption = 'Cadastro de Munic'#237'pio'
  ClientHeight = 191
  ClientWidth = 500
  ExplicitWidth = 500
  ExplicitHeight = 191
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlMain: TPanel
    Width = 500
    Height = 191
    ExplicitWidth = 500
    ExplicitHeight = 191
    inherited pnlOptions: TPanel
      Top = 141
      Width = 500
      ExplicitTop = 141
      ExplicitWidth = 500
      inherited pnlbtnConfirmar: TPanel
        TabStop = True
      end
      inherited pnlbtnCancelar: TPanel
        TabStop = True
      end
    end
    inherited pnlHeader: TPanel
      Width = 500
      Caption = 'Cadastro de Munic'#237'pio'
      ExplicitWidth = 500
    end
    inherited pnlFormulario: TPanel
      Width = 500
      Height = 116
      ExplicitTop = 29
      ExplicitWidth = 500
      ExplicitHeight = 116
      object grpCodigoIBGE: TGroupBox
        Left = 9
        Top = 2
        Width = 88
        Height = 46
        Caption = 'Codigo IBGE:'
        TabOrder = 0
        object edtCodigoIBGE: TMaskEdit
          Left = 2
          Top = 19
          Width = 84
          Height = 25
          Align = alClient
          Alignment = taCenter
          Ctl3D = True
          EditMask = '9999999;0;_'
          MaxLength = 7
          ParentCtl3D = False
          TabOrder = 0
          Text = ''
          ExplicitWidth = 83
        end
      end
      object grpNome: TGroupBox
        Left = 11
        Top = 52
        Width = 424
        Height = 46
        Caption = 'Nome:'
        TabOrder = 2
        object edtNome: TEdit
          Left = 2
          Top = 19
          Width = 420
          Height = 25
          Align = alClient
          TabOrder = 0
        end
      end
      object grpUF: TGroupBox
        Left = 103
        Top = 2
        Width = 70
        Height = 46
        Caption = 'UF:'
        TabOrder = 1
        object edtUF: TEdit
          Left = 2
          Top = 19
          Width = 66
          Height = 25
          Align = alClient
          CharCase = ecUpperCase
          TabOrder = 0
        end
      end
      object grpID: TGroupBox
        Left = 345
        Top = 2
        Width = 88
        Height = 46
        Caption = 'Id.'
        TabOrder = 3
        object edtID: TMaskEdit
          Left = 2
          Top = 19
          Width = 84
          Height = 25
          TabStop = False
          Align = alClient
          Alignment = taCenter
          AutoSelect = False
          ReadOnly = True
          TabOrder = 0
          Text = ''
          ExplicitWidth = 83
        end
      end
    end
  end
  inherited actlstCadastro: TActionList
    Left = 389
    Top = 9
    inherited actCancelar: TAction
      OnExecute = actCancelarExecute
    end
  end
end
