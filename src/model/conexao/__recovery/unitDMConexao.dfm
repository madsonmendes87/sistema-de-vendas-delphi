object dmConexao: TdmConexao
  Height = 480
  Width = 640
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=D:\sistema-de-vendas-delphi\Dados\DADOS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Transaction = FDTransacao
    Left = 64
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 192
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_5_0\fbclient.dll'
    Left = 320
    Top = 24
  end
  object FDTransacao: TFDTransaction
    Connection = Conexao
    Left = 448
    Top = 32
  end
end
