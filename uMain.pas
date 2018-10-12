unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ButtonGroup;

type
  TfrmMain = class(TForm)
    fdConnection: TFDConnection;
    DataSource: TDataSource;
    fdQuery: TFDQuery;
    pnlMenu: TPanel;
    Panel2: TPanel;
    btCreate: TSpeedButton;
    btRead: TSpeedButton;
    btDelete: TSpeedButton;
    btUpdate: TSpeedButton;
    PageControl: TPageControl;
    shtCreate: TTabSheet;
    shtRead: TTabSheet;
    shtUpdate: TTabSheet;
    shtDelete: TTabSheet;
    DBGrid1: TDBGrid;
    fdQueryCOUNTRY: TStringField;
    fdQueryCURRENCY: TStringField;
    pnTopRead: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtCountry: TEdit;
    bttSelect: TButton;
    bttAll: TButton;
    procedure FormCreate(Sender: TObject);
    procedure bttSelectClick(Sender: TObject);
    procedure bttAllClick(Sender: TObject);
    procedure btReadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btReadClick(Sender: TObject);
begin
  PageControl.ActivePage := shtRead;
  btRead.Down := True;
  ShowMessage(btRead.Down.ToString);
end;

procedure TfrmMain.bttAllClick(Sender: TObject);
begin
  fdQuery.Close;
  fdQuery.SQL.Clear;
  fdQuery.SQL.add('select * from COUNTRY');
  fdQuery.Open;
end;

procedure TfrmMain.bttSelectClick(Sender: TObject);
var
  str: String;
begin
  fdQuery.Close;
  fdQuery.SQL.Clear;
  fdQuery.SQL.add('select * from COUNTRY where COUNTRY like :COUNTRY');
  fdQuery.ParamByName('COUNTRY').AsString := '%'+edtCountry.Text+'%';
  fdQuery.Open;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  fdQuery.Open;
end;

end.
