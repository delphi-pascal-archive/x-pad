unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, Menus, StdCtrls, ComCtrls, ExtCtrls, jpeg;

type
  TAboutBox = class(TForm)
    Button3: TButton;
    Label9: TLabel;
    Image1: TImage;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Label14MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label14MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label14MouseEnter(Sender: TObject);
    procedure Label14MouseLeave(Sender: TObject);
    procedure Label14MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label14Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}



procedure TAboutBox.FormCreate(Sender: TObject);
var
  MS: TMemoryStatus;
  i:integer;
begin
Brush.Style:=bsClear;
BorderStyle:=bsNone;
  GlobalMemoryStatus(MS);
  Label4.Caption := FormatFloat('#,###" KB"', MS.dwTotalPhys / 1024);
  Label5.Caption := Format('%d %%', [MS.dwMemoryLoad]);
end;
procedure TAboutBox.Label14MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label14.Caption:='OK!!!!';
Label14.font.Color:=clLime;
end;

procedure TAboutBox.Label14MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
Label14.font.Color:=clRED;
Label14.Caption:='OK!!!';
end;

procedure TAboutBox.Label14MouseEnter(Sender: TObject);
begin
Label14.Caption:='OK!!!';
Label14.font.Color:=clRED;
end;

procedure TAboutBox.Label14MouseLeave(Sender: TObject);
begin
 Label14.Caption:='OK';
Label14.font.Color:=clYellow;
end;

procedure TAboutBox.Label14MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label14.Caption:='OK!!!!';
Label14.font.Color:=clBlue;
end;

procedure TAboutBox.Label14Click(Sender: TObject);
begin
AboutBox.close;
end;

procedure TAboutBox.FormClick(Sender: TObject);
begin
AboutBox.Close;
end;

procedure TAboutBox.Image1Click(Sender: TObject);
begin
AboutBox.Close;
end;

end.

