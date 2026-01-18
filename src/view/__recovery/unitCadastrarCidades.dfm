object formCadastrarCidades: TformCadastrarCidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastrar Cidades'
  ClientHeight = 361
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object labID: TLabel
    Left = 24
    Top = 24
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object labelNome: TLabel
    Left = 24
    Top = 80
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object labUF: TLabel
    Left = 24
    Top = 136
    Width = 14
    Height = 15
    Caption = 'UF'
  end
  object labCodIBGE: TLabel
    Left = 24
    Top = 192
    Width = 66
    Height = 15
    Caption = 'Codigo IBGE'
  end
  object editID: TEdit
    Left = 24
    Top = 45
    Width = 121
    Height = 23
    Color = clSeashell
    TabOrder = 0
  end
  object editNome: TEdit
    Left = 24
    Top = 101
    Width = 377
    Height = 23
    Color = clWhitesmoke
    ReadOnly = True
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 24
    Top = 213
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object DBLookUF: TDBLookupComboBox
    Left = 24
    Top = 157
    Width = 73
    Height = 23
    TabOrder = 2
  end
end
