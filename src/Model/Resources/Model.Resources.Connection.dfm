object dmConnection: TdmConnection
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 332
  Width = 693
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=sistema'
      'User_Name=sa'
      'Password=omni@50ftp4r'
      'Server=.\sqlexpress'
      'DriverID=MSSQL')
    Left = 69
    Top = 45
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 175
    Top = 44
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 284
    Top = 43
  end
end
