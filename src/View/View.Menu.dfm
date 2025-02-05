object FrmMenu: TFrmMenu
  Left = 0
  Top = 0
  Caption = 'SalesControl - Menu'
  ClientHeight = 520
  ClientWidth = 913
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mmMenu
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 17
  object pnTopo: TPanel
    Left = 0
    Top = 0
    Width = 913
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = '...'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pnlView: TPanel
    Left = 70
    Top = 41
    Width = 843
    Height = 479
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
  end
  object pnOptions: TPanel
    Left = 0
    Top = 41
    Width = 70
    Height = 479
    Align = alLeft
    BevelOuter = bvNone
    Color = 14395586
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object btnClientes: TSpeedButton
      Left = 0
      Top = 82
      Width = 70
      Height = 41
      Align = alTop
      Caption = 'Clientes'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitTop = -1
      ExplicitWidth = 56
    end
    object btnProdutos: TSpeedButton
      Left = 0
      Top = 41
      Width = 70
      Height = 41
      Align = alTop
      Caption = 'Produtos'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitTop = -1
    end
    object btnUsuarios: TSpeedButton
      Left = 0
      Top = 123
      Width = 70
      Height = 41
      Align = alTop
      Caption = 'Usu'#225'rios'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = -7
      ExplicitTop = 134
      ExplicitWidth = 56
    end
    object btnHome: TSpeedButton
      Left = 0
      Top = 0
      Width = 70
      Height = 41
      Align = alTop
      Caption = 'Inicio'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 1
      ExplicitTop = -1
    end
  end
  object mmMenu: TMainMenu
    Left = 734
    Top = 14
    object mniCadastro: TMenuItem
      Caption = 'Cadastros'
      object mniProduto: TMenuItem
        Caption = 'Produtos'
      end
      object mniCliente: TMenuItem
        Action = actCadastroCliente
      end
      object mniUsuario: TMenuItem
        Caption = 'Usu'#225'rios'
      end
    end
    object mniVenda: TMenuItem
      Caption = 'Vendas'
    end
  end
  object actlstMenu: TActionList
    Left = 786
    Top = 14
    object actCadastroCliente: TAction
      Caption = 'Clientes'
      OnExecute = actCadastroClienteExecute
    end
  end
end
