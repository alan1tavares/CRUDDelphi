object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'CRUD'
  ClientHeight = 486
  ClientWidth = 714
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 714
    Height = 33
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 0
    ExplicitWidth = 692
  end
  object pageControl: TPageControl
    Left = 185
    Top = 33
    Width = 529
    Height = 453
    ActivePage = shtCreate
    Align = alClient
    DoubleBuffered = False
    MultiLine = True
    ParentDoubleBuffered = False
    TabOrder = 1
    object shtCreate: TTabSheet
      Caption = 'shtCreate'
      ExplicitLeft = 68
      ExplicitTop = 90
      object Label6: TLabel
        Left = 11
        Top = 40
        Width = 55
        Height = 15
        Caption = 'COUNTRY'
        FocusControl = edCountry
      end
      object Label5: TLabel
        Left = 11
        Top = 88
        Width = 60
        Height = 15
        Caption = 'CURRENCY'
        FocusControl = edCurrency
      end
      object Label7: TLabel
        Left = 11
        Top = 2
        Width = 43
        Height = 23
        Caption = 'Insert'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edCountry: TDBEdit
        Left = 11
        Top = 56
        Width = 229
        Height = 23
        DataField = 'COUNTRY'
        DataSource = DataSource
        TabOrder = 0
      end
      object edCurrency: TDBEdit
        Left = 11
        Top = 104
        Width = 154
        Height = 23
        DataField = 'CURRENCY'
        DataSource = DataSource
        TabOrder = 1
      end
    end
    object shtRead: TTabSheet
      Caption = 'Read'
      ImageIndex = 1
      object Label4: TLabel
        Left = 272
        Top = 144
        Width = 60
        Height = 15
        Caption = 'CURRENCY'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 272
        Top = 96
        Width = 55
        Height = 15
        Caption = 'COUNTRY'
        FocusControl = DBEdit1
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 107
        Width = 521
        Height = 316
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
        Width = 521
        Height = 107
        Align = alTop
        Caption = 'pnTopRead'
        ShowCaption = False
        TabOrder = 1
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
      object DBEdit1: TDBEdit
        Left = 272
        Top = 112
        Width = 229
        Height = 23
        DataField = 'COUNTRY'
        DataSource = DataSource
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 272
        Top = 160
        Width = 154
        Height = 23
        DataField = 'CURRENCY'
        DataSource = DataSource
        TabOrder = 3
      end
    end
    object shtUpdate: TTabSheet
      Caption = 'shtUpdate'
      ImageIndex = 2
    end
    object shtDelete: TTabSheet
      Caption = 'shtDelete'
      ImageIndex = 3
    end
  end
  object pnMenu: TPanel
    Left = 0
    Top = 33
    Width = 185
    Height = 453
    Align = alLeft
    Caption = 'pnMenu'
    TabOrder = 2
    ExplicitLeft = 96
    ExplicitTop = 39
    ExplicitHeight = 424
    object catMenu: TCategoryButtons
      Left = 0
      Top = -18
      Width = 183
      Height = 422
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonHeight = 32
      ButtonOptions = [boFullSize, boShowCaptions, boCaptionOnlyBorder]
      Categories = <
        item
          Color = 15395839
          Collapsed = False
          Items = <
            item
              Caption = 'Create'
              OnClick = catMenuCategories0Items0Click
            end
            item
              Caption = 'Read'
              OnClick = btReadClick
            end
            item
              Caption = 'Update'
              OnClick = catMenuCategories0Items2Click
            end
            item
              Caption = 'Delete'
              OnClick = catMenuCategories0Items3Click
            end>
        end>
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Segoe UI'
      Font.Style = []
      HotButtonColor = clMenuHighlight
      RegularButtonColor = clNone
      SelectedButtonColor = clMenuHighlight
      TabOrder = 0
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
    Left = 240
    Top = 304
  end
  object DataSource: TDataSource
    DataSet = fdQuery
    Left = 360
    Top = 304
  end
  object fdQuery: TFDQuery
    Connection = fdConnection
    SQL.Strings = (
      'select * from COUNTRY')
    Left = 304
    Top = 304
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
