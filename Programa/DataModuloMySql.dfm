object dmMySql: TdmMySql
  OldCreateOrder = False
  Height = 157
  Width = 414
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=BancoDados'
      'User_Name=root'
      'Password=MySql2019!'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 60
    Top = 36
  end
  object qLogin: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from USUARIO where LOGIN = :LOGIN and SENHA = :SENHA')
    Left = 196
    Top = 44
    ParamData = <
      item
        Name = 'LOGIN'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\cassi\Desktop\Gustavo\Programa\Bin\libmysql.dll'
    Left = 292
    Top = 76
  end
end
