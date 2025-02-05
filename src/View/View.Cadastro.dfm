object FrmCadastro: TFrmCadastro
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Cadastro'
  ClientHeight = 480
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnFormulario: TPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 435
    Align = alClient
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object pnOpcoes: TPanel
    Left = 0
    Top = 435
    Width = 768
    Height = 45
    Align = alBottom
    TabOrder = 1
    object pnlCancelar: TPanel
      Left = 133
      Top = 1
      Width = 132
      Height = 43
      Align = alLeft
      BevelOuter = bvNone
      Color = 14277119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object btnCancelar: TSpeedButton
        Left = 0
        Top = 0
        Width = 132
        Height = 43
        Action = actCancelar
        Align = alClient
        Flat = True
        ExplicitLeft = 109
        ExplicitTop = 21
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object pnlConfirmar: TPanel
      Left = 1
      Top = 1
      Width = 132
      Height = 43
      Align = alLeft
      BevelOuter = bvNone
      Color = 13299876
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object btnConfirmar: TSpeedButton
        Left = 0
        Top = 0
        Width = 132
        Height = 43
        Action = actConfirmar
        Align = alClient
        Flat = True
        ExplicitLeft = 109
        ExplicitTop = 21
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
  end
  object actlstCadastro: TActionList
    Left = 34
    Top = 22
    object actConfirmar: TAction
      Caption = 'Confirmar'
      OnExecute = actConfirmarExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      OnExecute = actCancelarExecute
    end
  end
end
