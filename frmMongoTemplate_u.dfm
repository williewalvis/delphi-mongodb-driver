object frmMongoTemplate: TfrmMongoTemplate
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'MongoDB Driver Template'
  ClientHeight = 376
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object btnGetCollection: TButton
    Left = 176
    Top = 56
    Width = 273
    Height = 25
    Caption = 'Get Collection And Display Documents'
    TabOrder = 1
    OnClick = btnGetCollectionClick
  end
  object pgControlAuth: TPageControl
    Left = 110
    Top = 96
    Width = 409
    Height = 241
    ActivePage = loginForm
    TabOrder = 0
    object loginForm: TTabSheet
      Caption = 'PageAuth01'
      TabVisible = False
      object grpLoginToAccount: TGroupBox
        Left = 0
        Top = 0
        Width = 401
        Height = 231
        Align = alClient
        Caption = 'User Authentication'
        TabOrder = 0
        object lblHeading01: TLabel
          Left = 103
          Top = 26
          Width = 164
          Height = 28
          Caption = 'Login To Account'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblLoginUsername: TLabel
          Left = 48
          Top = 76
          Width = 56
          Height = 15
          Caption = 'Username:'
        end
        object lblLoginPassword: TLabel
          Left = 48
          Top = 104
          Width = 53
          Height = 15
          Caption = 'Password:'
        end
        object edtLoginUsername: TEdit
          Left = 120
          Top = 72
          Width = 201
          Height = 23
          TabOrder = 0
        end
        object edtLoginPassword: TEdit
          Left = 120
          Top = 101
          Width = 201
          Height = 23
          PasswordChar = '*'
          TabOrder = 1
        end
        object btnLogin: TButton
          Left = 64
          Top = 152
          Width = 257
          Height = 25
          Caption = 'Login'
          TabOrder = 2
          OnClick = btnLoginClick
        end
        object btnSwitchToSignUp: TButton
          Left = 64
          Top = 183
          Width = 257
          Height = 26
          Caption = 'Go To Sign Up'
          TabOrder = 3
          OnClick = btnSwitchToSignUpClick
        end
      end
    end
    object signUpForm: TTabSheet
      Caption = 'PageAuth02'
      ImageIndex = 1
      TabVisible = False
      object grpSignUpForAccount: TGroupBox
        Left = 0
        Top = 0
        Width = 401
        Height = 231
        Align = alClient
        Caption = 'User Authentication'
        TabOrder = 0
        object lblHeading02: TLabel
          Left = 103
          Top = 26
          Width = 193
          Height = 28
          Caption = 'Sign Up For Account'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSignUpUsername: TLabel
          Left = 48
          Top = 76
          Width = 56
          Height = 15
          Caption = 'Username:'
        end
        object lblSignUpPassword: TLabel
          Left = 48
          Top = 104
          Width = 53
          Height = 15
          Caption = 'Password:'
        end
        object edtSignUpUsername: TEdit
          Left = 120
          Top = 72
          Width = 201
          Height = 23
          TabOrder = 0
        end
        object edtSignUpPassword: TEdit
          Left = 120
          Top = 101
          Width = 201
          Height = 23
          PasswordChar = '*'
          TabOrder = 1
        end
        object btnSignUp: TButton
          Left = 64
          Top = 152
          Width = 257
          Height = 25
          Caption = 'Sign Up'
          TabOrder = 2
        end
        object btnSwitchToLogin: TButton
          Left = 64
          Top = 183
          Width = 257
          Height = 25
          Caption = 'Go To Login'
          TabOrder = 3
          OnClick = btnSwitchToLoginClick
        end
      end
    end
  end
end
