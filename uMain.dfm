object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'CRUD'
  ClientHeight = 406
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMenu: TPanel
    Left = 0
    Top = 33
    Width = 185
    Height = 373
    Align = alLeft
    Caption = 'pnlMenu'
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = 184
    ExplicitTop = 104
    ExplicitHeight = 41
    object btCreate: TSpeedButton
      Left = 1
      Top = 1
      Width = 183
      Height = 22
      Align = alTop
      Caption = 'Create'
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
      Width = 183
      Height = 22
      Align = alTop
      Caption = 'Read'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 136
      ExplicitTop = 168
      ExplicitWidth = 23
    end
    object btDelete: TSpeedButton
      Left = 1
      Top = 67
      Width = 183
      Height = 22
      Align = alTop
      Caption = 'Delete'
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
      Width = 183
      Height = 22
      Align = alTop
      Caption = 'Update'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 88
      ExplicitTop = 184
      ExplicitWidth = 23
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 602
    Height = 33
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 1
  end
  object PageControl: TPageControl
    Left = 185
    Top = 33
    Width = 417
    Height = 373
    ActivePage = shtCreate
    Align = alClient
    TabOrder = 2
    object shtCreate: TTabSheet
      Caption = 'shtCreate'
    end
  end
  object fdConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\cortana\Documents\Embarcadero\Studio\Projects\' +
        'CRUDDelphi\database\EMPLOYEE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    Left = 24
    Top = 184
  end
  object DataSource: TDataSource
    DataSet = fdQuery
    Left = 24
    Top = 256
  end
  object fdQuery: TFDQuery
    Connection = fdConnection
    SQL.Strings = (
      'select * from CUSTOMER')
    Left = 104
    Top = 176
  end
end
