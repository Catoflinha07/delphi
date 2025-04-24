object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 490
  ClientWidth = 858
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  DesignSize = (
    858
    490)
  TextHeight = 15
  object mainpanel: TPanel
    AlignWithMargins = True
    Left = -3
    Top = 109
    Width = 855
    Height = 371
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 5
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 0
  end
  object spanel: TPanel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 855
    Height = 98
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    DesignSize = (
      855
      98)
    object contador: TLabel
      Left = 376
      Top = 74
      Width = 48
      Height = 15
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'contador'
    end
    object busca: TEdit
      AlignWithMargins = True
      Left = 24
      Top = 16
      Width = 817
      Height = 45
      Margins.Left = 50
      Margins.Top = 50
      Margins.Right = 50
      Margins.Bottom = 10
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Busca'
      OnKeyDown = buscaKeyDown
    end
  end
end
