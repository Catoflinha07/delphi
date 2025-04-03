object cadastro: Tcadastro
  Left = 0
  Top = 0
  Anchors = [akLeft, akRight]
  Caption = 'cadastro'
  ClientHeight = 550
  ClientWidth = 564
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  DesignSize = (
    564
    550)
  TextHeight = 15
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 564
    Height = 85
    Align = alTop
    Alignment = taCenter
    Caption = 'CADASTRO'
    Color = clBrown
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleName = 'Windows'
    ExplicitWidth = 356
  end
  object matriz: TStringGrid
    Left = 8
    Top = 401
    Width = 515
    Height = 120
    Anchors = [akLeft, akTop, akRight]
    FixedCols = 0
    RowCount = 1000
    TabOrder = 0
    ExplicitWidth = 468
  end
  object nome: TEdit
    Left = 8
    Top = 133
    Width = 232
    Height = 24
    Hint = 'Nome'
    Alignment = taCenter
    Anchors = [akLeft, akRight]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TextHint = 'Nome'
    ExplicitWidth = 185
  end
  object email: TEdit
    Left = 8
    Top = 166
    Width = 232
    Height = 23
    Hint = 'E-mail'
    Alignment = taCenter
    Anchors = [akLeft, akRight]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TextHint = 'E-mail'
    ExplicitWidth = 185
  end
  object senha: TEdit
    Left = 8
    Top = 250
    Width = 232
    Height = 23
    Hint = 'Senha'
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TextHint = 'Senha'
    ExplicitWidth = 185
  end
  object senha2: TEdit
    Left = 8
    Top = 279
    Width = 232
    Height = 22
    Hint = 'Confirmar Senha'
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 4
    TextHint = 'Confirmar Senha'
    ExplicitWidth = 185
  end
  object telefone: TMaskEdit
    Left = 8
    Top = 223
    Width = 232
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    EditMask = '(999) 000-0000;1;_'
    MaxLength = 14
    TabOrder = 5
    Text = '(   )    -    '
    ExplicitWidth = 185
  end
  object enviar: TButton
    Left = 305
    Top = 185
    Width = 170
    Height = 60
    Anchors = [akTop, akRight]
    Caption = 'Enviar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = '@Arial Unicode MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = enviarClick
    ExplicitLeft = 272
  end
  object datas: TMaskEdit
    Left = 8
    Top = 195
    Width = 232
    Height = 22
    Hint = 'l'
    Anchors = [akLeft, akTop, akRight]
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 7
    Text = '  /  /  '
    ExplicitWidth = 185
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 307
    Width = 232
    Height = 67
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Usuario'
    Color = clWhite
    ItemIndex = 0
    Items.Strings = (
      'Usuario normal'
      'Administrador')
    ParentBackground = False
    ParentColor = False
    TabOrder = 8
    StyleName = 'Windows'
    ExplicitWidth = 185
  end
  object MainMenu1: TMainMenu
    Left = 128
    Top = 344
  end
end
