object frmMongoTemplate: TfrmMongoTemplate
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'MongoDB Driver Template'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object btnGetCollection: TButton
    Left = 192
    Top = 208
    Width = 273
    Height = 25
    Caption = 'Get Collection And Display Documents'
    TabOrder = 0
    OnClick = btnGetCollectionClick
  end
end
