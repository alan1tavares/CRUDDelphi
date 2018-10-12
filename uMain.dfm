object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'CRUD'
  ClientHeight = 457
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object pnlMenu: TPanel
    Left = 0
    Top = 33
    Width = 115
    Height = 424
    Align = alLeft
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object btCreate: TSpeedButton
      Left = 1
      Top = 1
      Width = 113
      Height = 22
      Align = alTop
      Caption = 'Create'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 32
      ExplicitTop = 32
      ExplicitWidth = 23
    end
    object btRead: TSpeedButton
      Left = 1
      Top = 23
      Width = 113
      Height = 22
      Align = alTop
      Caption = 'Read'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btReadClick
      ExplicitLeft = 0
      ExplicitTop = 29
      ExplicitWidth = 183
    end
    object btDelete: TSpeedButton
      Left = 1
      Top = 67
      Width = 113
      Height = 22
      Align = alTop
      Caption = 'Delete'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      ExplicitLeft = 80
      ExplicitTop = 176
      ExplicitWidth = 23
    end
    object btUpdate: TSpeedButton
      Left = 1
      Top = 45
      Width = 113
      Height = 22
      Align = alTop
      Caption = 'Update'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      ExplicitLeft = 30
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 33
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitWidth = 602
  end
  object PageControl: TPageControl
    Left = 115
    Top = 33
    Width = 577
    Height = 424
    ActivePage = shtRead
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 185
    ExplicitWidth = 507
    object shtCreate: TTabSheet
      Caption = 'shtCreate'
      ExplicitTop = 24
      ExplicitWidth = 409
      ExplicitHeight = 345
    end
    object shtRead: TTabSheet
      Caption = 'Read'
      ImageIndex = 1
      ExplicitTop = 24
      ExplicitWidth = 409
      ExplicitHeight = 345
      object DBGrid1: TDBGrid
        Left = 0
        Top = 107
        Width = 569
        Height = 287
        Align = alClient
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object pnTopRead: TPanel
        Left = 0
        Top = 0
        Width = 569
        Height = 107
        Align = alTop
        Caption = 'pnTopRead'
        ShowCaption = False
        TabOrder = 1
        ExplicitWidth = 499
        object Label1: TLabel
          Left = 10
          Top = 2
          Width = 45
          Height = 23
          Caption = 'Select'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 12
          Top = 43
          Width = 43
          Height = 15
          Caption = 'Country'
        end
        object edtCountry: TEdit
          Left = 66
          Top = 40
          Width = 313
          Height = 23
          TabOrder = 0
        end
        object bttSelect: TButton
          Left = 385
          Top = 40
          Width = 75
          Height = 25
          Caption = 'Select'
          TabOrder = 1
          OnClick = bttSelectClick
        end
        object bttAll: TButton
          Left = 66
          Top = 69
          Width = 87
          Height = 25
          Caption = 'Mostrar todos'
          TabOrder = 2
          OnClick = bttAllClick
        end
      end
    end
    object shtUpdate: TTabSheet
      Caption = 'shtUpdate'
      ImageIndex = 2
      ExplicitTop = 24
      ExplicitWidth = 409
      ExplicitHeight = 345
    end
    object shtDelete: TTabSheet
      Caption = 'shtDelete'
      ImageIndex = 3
      ExplicitTop = 24
      ExplicitWidth = 409
      ExplicitHeight = 345
    end
  end
  object fdConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Users\alan1\git\CRUDDelphi\database\EMPLOYEE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 176
  end
  object DataSource: TDataSource
    DataSet = fdQuery
    Left = 32
    Top = 272
  end
  object fdQuery: TFDQuery
    Connection = fdConnection
    SQL.Strings = (
      'select * from COUNTRY')
    Left = 32
    Top = 232
    object fdQueryCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object fdQueryCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Origin = 'CURRENCY'
      Required = True
      Size = 10
    end
  end
end
