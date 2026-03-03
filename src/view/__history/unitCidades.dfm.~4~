object formCidades: TformCidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cidades Buscar'
  ClientHeight = 403
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object labNomeCidade: TLabel
    Left = 8
    Top = 8
    Width = 98
    Height = 15
    Caption = 'NOME DA CIDADE'
    Visible = False
  end
  object editSearch: TEdit
    Left = 8
    Top = 29
    Width = 642
    Height = 23
    CharCase = ecUpperCase
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    TextHint = 'DIGITE O NOME DA CIDADE'
    OnChange = editSearchChange
  end
  object gridCidades: TDBGrid
    Left = 8
    Top = 69
    Width = 642
    Height = 291
    Align = alCustom
    DataSource = dmCidades.dsCidadeBusca
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnCadastrar: TBitBtn
    Left = 332
    Top = 370
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 2
    OnClick = btnCadastrarClick
  end
  object btnAlterar: TBitBtn
    Left = 413
    Top = 370
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 3
    OnClick = btnAlterarClick
  end
  object btnUtilizar: TBitBtn
    Left = 494
    Top = 370
    Width = 75
    Height = 25
    Caption = 'Utilizar'
    TabOrder = 4
    OnClick = btnUtilizarClick
  end
  object btnFechar: TBitBtn
    Left = 575
    Top = 370
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = btnFecharClick
  end
end
