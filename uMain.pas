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
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ButtonGroup, Vcl.WinXCtrls, Vcl.CategoryButtons,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmMain = class(TForm)
    fdConnection: TFDConnection;
    DataSource: TDataSource;
    fdQuery: TFDQuery;
    Panel2: TPanel;
    pageControl: TPageControl;
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
    pnMenu: TPanel;
    catMenu: TCategoryButtons;
    edCountry: TDBEdit;
    edCurrency: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btInsert: TButton;
    Label3: TLabel;
    pnUpdateTop: TPanel;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    btUpdate: TButton;
    Label9: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure bttSelectClick(Sender: TObject);
    procedure bttAllClick(Sender: TObject);
    procedure btReadClick(Sender: TObject);
    procedure catMenuCategories0Items0Click(Sender: TObject);
    procedure catMenuCategories0Items2Click(Sender: TObject);
    procedure catMenuCategories0Items3Click(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
  private
    { Private declarations }
    messagemCrud: String;
    procedure HiddenTabs;
//    procedure clearEdit;
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
  fdQuery.Cancel;
end;

procedure TfrmMain.bttAllClick(Sender: TObject);
begin
  fdQuery.Close;
  fdQuery.SQL.Clear;
  fdQuery.SQL.add('select * from COUNTRY');
  fdQuery.Open;
end;

procedure TfrmMain.bttSelectClick(Sender: TObject);
begin
  fdQuery.Close;
  fdQuery.SQL.Clear;
  fdQuery.SQL.add('select * from COUNTRY where COUNTRY like :COUNTRY');
  fdQuery.ParamByName('COUNTRY').AsString := '%'+edtCountry.Text+'%';
  fdQuery.Open;
end;

procedure TfrmMain.btInsertClick(Sender: TObject);
begin
  fdQuery.Post;
  ShowMessage(messagemCrud);
end;

procedure TfrmMain.catMenuCategories0Items0Click(Sender: TObject);
begin
  PageControl.ActivePage := shtCreate;
  fdQuery.Insert;
  messagemCrud := 'O item foi inserido com suceesso';
end;

procedure TfrmMain.catMenuCategories0Items2Click(Sender: TObject);
begin
  PageControl.ActivePage := shtUpdate;

  fdQuery.Cancel;
  fdQuery.Edit;

  messagemCrud := 'O item foi atualizado com sucesso';
end;

procedure TfrmMain.catMenuCategories0Items3Click(Sender: TObject);
begin
  PageControl.ActivePage := shtDelete
end;

//procedure TfrmMain.clearEdit;
//begin
//  edCountry.Text := '';
//  edCurrency.Text := '';
//end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  fdQuery.Open;

  HiddenTabs;
end;

procedure TfrmMain.HiddenTabs;
var
  I: Integer;
begin
  for I := 0 to pageControl.PageCount - 1 do
    pageControl.Pages[I].TabVisible := false;
end;

end.
