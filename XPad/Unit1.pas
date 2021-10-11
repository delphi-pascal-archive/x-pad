
unit Unit1;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, Menus, StdCtrls, ComCtrls, ExtCtrls,RichEdit, StdActns,
  ExtActns, ListActns, ActnList, BandActn, StdStyleActnCtrls, ActnMan,
  Buttons, ToolWin, OleServer, IniFiles,MMSystem,RyMenus,JPEG, Spin;


const
 WM_MYICONNOTIFY = WM_USER + 123;

type
  TForm1 = class(TForm)
    XPManifest1: TXPManifest;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    ctrlv1: TMenuItem;
    N14: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    PopupMenu1: TPopupMenu;
    RestoreItem: TMenuItem;
    HideItem: TMenuItem;
    MenuItem1: TMenuItem;
    FileExitItem1: TMenuItem;
    Label1: TLabel;
    Image4: TImage;
    N15: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    N22: TMenuItem;
    FontDialog1: TFontDialog;
    StatusBar: TStatusBar;
    ColorDialog1: TColorDialog;
    N27: TMenuItem;
    ActionList1: TActionList;
    RichEditBold1: TRichEditBold;
    RichEditItalic1: TRichEditItalic;
    RichEditUnderline1: TRichEditUnderline;
    RichEditStrikeOut1: TRichEditStrikeOut;
    RichEditBullets1: TRichEditBullets;
    RichEditAlignLeft1: TRichEditAlignLeft;
    RichEditAlignRight1: TRichEditAlignRight;
    RichEditAlignCenter1: TRichEditAlignCenter;
    SearchFind1: TSearchFind;
    SearchFindNext1: TSearchFindNext;
    SearchReplace1: TSearchReplace;
    SearchFindFirst1: TSearchFindFirst;
    GroupAction1: TAction;
    GroupAction2: TAction;
    GroupAction3: TAction;
    AutoCheckAction: TAction;
    FileExit1: TFileExit;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    FileRun1: TFileRun;
    StaticListAction1: TStaticListAction;
    DeleteAction: TAction;
    AddAction: TAction;
    ClearAction: TAction;
    ActiveAction: TAction;
    SetIndexAction: TAction;
    FileOpen1: TFileOpen;
    BrowseURL1: TBrowseURL;
    DownLoadURL1: TDownLoadURL;
    SendMail1: TSendMail;
    ColorSelect1: TColorSelect;
    OpenPicture1: TOpenPicture;
    FontEdit1: TFontEdit;
    PreviousTab1: TPreviousTab;
    NextTab1: TNextTab;
    ListControlCopySelection1: TListControlCopySelection;
    ListControlDeleteSelection1: TListControlDeleteSelection;
    ListControlSelectAll1: TListControlSelectAll;
    ListControlClearSelection1: TListControlClearSelection;
    ListControlMoveSelection1: TListControlMoveSelection;
    ShortCutAction: TAction;
    AddShortCut: TAction;
    FileOpenWith1: TFileOpenWith;
    FileSaveAs1: TFileSaveAs;
    FilePrintSetup1: TFilePrintSetup;
    N8: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    ActionManager1: TActionManager;
    RichEditBullets2: TRichEditBullets;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton12: TSpeedButton;
    N31: TMenuItem;
    SpeedButton13: TSpeedButton;
    N34: TMenuItem;
    N35: TMenuItem;
    English1: TMenuItem;
    Timer2: TTimer;
    Timer3: TTimer;
    N36: TMenuItem;
    C1: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    koi1: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    PopupMenu2: TPopupMenu;
    N3: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    D1: TMenuItem;
    SelectAll1: TMenuItem;
    N50: TMenuItem;
    Dos1: TMenuItem;
    Doswin1: TMenuItem;
    N51: TMenuItem;
    ANSI1: TMenuItem;
    Koi8BANSI1: TMenuItem;
    QINIXCODE1: TMenuItem;
    QINIXCODEANSI1: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    DW61: TMenuItem;
    Delphi1: TMenuItem;
    FindDialog1: TFindDialog;
    Image2: TImage;
    N16: TMenuItem;
    DelphiPascal1: TMenuItem;
    RichEdit1: TRichEdit;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N41: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    By1: TMenuItem;
    OoOooOoOOoOOoo1: TMenuItem;
    N61: TMenuItem;
    Bat1: TMenuItem;
    ShutDownrt601: TMenuItem;
    Shutdowna1: TMenuItem;
    NetSend1: TMenuItem;
    askkillfimexe1: TMenuItem;
    VBS1: TMenuItem;
    MsgBox01: TMenuItem;
    Delphi2: TMenuItem;
    Begin1: TMenuItem;
    Begin2: TMenuItem;
    End1: TMenuItem;
    Endelse1: TMenuItem;
    End2: TMenuItem;
    ifthenbegin1: TMenuItem;
    Var1: TMenuItem;
    for1: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    HTML1: TMenuItem;
    N65: TMenuItem;
    N66: TMenuItem;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Timer1: TTimer;
    PopupMenu3: TPopupMenu;
    N67: TMenuItem;
    N68: TMenuItem;
    Label9: TLabel;
    Image1: TImage;
    OpenDialog2: TOpenDialog;
    N69: TMenuItem;
    N70: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    IP1: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    wwwdelphihack3dnru1: TMenuItem;
    wwwdelphi3dnru1: TMenuItem;
    wwwsecuritylabru1: TMenuItem;
    www1: TMenuItem;
    wwwworldF3dnru1: TMenuItem;
    httpbfbvouzFlooderCodingClan1: TMenuItem;
    wwwip1: TMenuItem;
    N79: TMenuItem;
    N80: TMenuItem;
    Name1: TMenuItem;
    Panel1: TPanel;
    Bevel1: TBevel;
    MDI1: TMenuItem;
    PopupMenu4: TPopupMenu;
    N75: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    N78: TMenuItem;
    N81: TMenuItem;
    N82: TMenuItem;
    N83: TMenuItem;
    procedure N6Click(Sender: TObject);
    procedure FileSaveAs(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure ctrlv1Click(Sender: TObject);
    procedure FileSave(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure RestoreItemClick(Sender: TObject);
    procedure HideItemClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure FileExitItem1Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Formshow(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure English1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure koi1Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure Dos1Click(Sender: TObject);
    procedure Doswin1Click(Sender: TObject);
    procedure ANSI1Click(Sender: TObject);
    procedure Koi8BANSI1Click(Sender: TObject);
    procedure QINIXCODE1Click(Sender: TObject);
    procedure QINIXCODEANSI1Click(Sender: TObject);
    procedure N55Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure DW61Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    function CloseCD(Drive : string) : Boolean;
    function OpenCD(Drive : string) : Boolean;
    procedure Label7Click(Sender: TObject);
    procedure Label2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label2MouseLeave(Sender: TObject);
    procedure Label2MouseEnter(Sender: TObject);
    procedure Label2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label3MouseEnter(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);
    procedure Label3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label4MouseEnter(Sender: TObject);
    procedure Label4MouseLeave(Sender: TObject);
    procedure Label4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label5MouseEnter(Sender: TObject);
    procedure Label5MouseLeave(Sender: TObject);
    procedure Label5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label8MouseEnter(Sender: TObject);
    procedure Label8MouseLeave(Sender: TObject);
    procedure Label8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label6MouseLeave(Sender: TObject);
    procedure Label6MouseEnter(Sender: TObject);
    procedure Label6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label7MouseLeave(Sender: TObject);
    procedure Label7MouseEnter(Sender: TObject);
    procedure Label7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    
    procedure HighLight;
    
    function CheckList(InString: string): boolean;
    procedure DelphiPascal1Click(Sender: TObject);
    procedure RichEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RichEdit1Change(Sender: TObject);
    procedure RichEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure N32Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N57Click(Sender: TObject);
    procedure N58Click(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure By1Click(Sender: TObject);
    procedure OoOooOoOOoOOoo1Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure ShutDownrt601Click(Sender: TObject);
    procedure Shutdowna1Click(Sender: TObject);
    procedure NetSend1Click(Sender: TObject);
    procedure askkillfimexe1Click(Sender: TObject);
    procedure MsgBox01Click(Sender: TObject);
    procedure Begin1Click(Sender: TObject);
    procedure Var1Click(Sender: TObject);
    procedure Begin2Click(Sender: TObject);
    procedure End1Click(Sender: TObject);
    procedure Endelse1Click(Sender: TObject);
    procedure End2Click(Sender: TObject);
    procedure ifthenbegin1Click(Sender: TObject);
    procedure for1Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure N64Click(Sender: TObject);
    procedure HTML1Click(Sender: TObject);
    procedure N65Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure N67Click(Sender: TObject);
    procedure N69Click(Sender: TObject);
    procedure N70Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure wwwdelphihack3dnru1Click(Sender: TObject);
    procedure wwwdelphi3dnru1Click(Sender: TObject);
    procedure wwwsecuritylabru1Click(Sender: TObject);
    procedure www1Click(Sender: TObject);
    procedure wwwworldF3dnru1Click(Sender: TObject);
    procedure httpbfbvouzFlooderCodingClan1Click(Sender: TObject);
    procedure wwwip1Click(Sender: TObject);
    procedure IP1Click(Sender: TObject);
    procedure Name1Click(Sender: TObject);
    procedure N80Click(Sender: TObject);
    procedure MDI1Click(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure N83Click(Sender: TObject);
    procedure N78Click(Sender: TObject);
    procedure N77Click(Sender: TObject);
    procedure N76Click(Sender: TObject);
    procedure N75Click(Sender: TObject);
  private
    { Private declarations }
    ShownOnce: Boolean;
    Dragging : Boolean;
    OldLeft, OldTop: Integer;
    FFileName: string;
    function CurrText: TTextAttributes;
    procedure CheckFileSave;
    procedure SetFileName(const FileName: String);
    procedure SetModified(Value: Boolean);
    procedure PerformFileOpen(const AFileName: string);
  public
    { Public declarations }
    procedure WMICON(var msg: TMessage); message WM_MYICONNOTIFY;
    procedure WMSYSCOMMAND(var msg: TMessage);message WM_SYSCOMMAND;
    procedure RestoreMainForm;
    procedure HideMainForm;
    procedure CreateTrayIcon(n:Integer);
    procedure DeleteTrayIcon(n:Integer);
    end;

var
  Form1: TForm1;
  Driv: array [1..25] of string;
  Menu1:TRyMenu;
  Menu2:TRyMenu;
  Picture_1,Picture_2,Picture_3:String;
  EnablePicture:String;
formcreate2:TFOrm;
Rich:Trichedit;
Tools:TToolBar;
SpeedBATON:TSpeedButton;
implementation
uses unit4,ComObj, activex, ShellApi, shlobj, registry,unit3,unit2;

resourcestring
  sSaveChanges = 'Õîòèòå ñîõðàíèòü èçìåíåíèÿ â ôàéëå %s?';
  sUntitled = 'Íîâûé';
  sModified = '][akep';
  sOverWrite = 'Êðóòî äà ???? %s';
  sColRowInfo = 'Ñòðîêà: %3d   Êîëè÷åñòâî: %3d';

  const
  KEY_CTRL_B = 02;
  KEY_CTRL_I = 9;
  KEY_CTRL_T = 20;
  KEY_CTRL_U = 21;
  NPCS: set of char = [#0..#8, #11, #12, #14..#31, '' ];

  Koi: array[0..66] of Char = ('T', '¨', '¸', 'À', 'Á', 'Â', 'Ã', 'Ä', 'Å', 'Æ',
    'Ç', 'È', 'É', 'Ê', 'Ë', 'Ì', 'Í', 'Î', 'Ï', 'Ð',
    'Ñ', 'Ò', 'Ó', 'Ô', 'Õ', 'Ö', '×', 'Ø', 'Ù', 'Ú',
    'Û', 'Ü', 'Ý', 'Þ', 'ß', 'à', 'á', 'â', 'ã', 'ä',
    'å', 'æ', 'ç', 'è', 'é', 'ê', 'ë', 'ì', 'í', 'î',
    'ï', 'ð', 'ñ', 'ò', 'ó', 'ô', 'õ', 'ö', '÷', 'ø',
    'ù', 'ú', 'û', 'ü', 'ý', 'þ', 'ÿ');
  Win: array[0..66] of Char = ('¸', '¨', 'T', 'þ', 'à', 'á', 'ö', 'ä', 'å', 'ô',
    'ã', 'õ', 'è', 'é', 'ê', 'ë', 'ì', 'í', 'î', 'ï',
    'ÿ', 'ð', 'ñ', 'ò', 'ó', 'æ', 'â', 'ü', 'û', 'ç',
    'ø', 'ý', 'ù', '÷', 'ú', 'Þ', 'À', 'Á', 'Ö', 'Ä',
    'Å', 'Ô', 'Ã', 'Õ', 'È', 'É', 'Ê', 'Ë', 'Ì', 'Í',
    'Î', 'Ï', 'ß', 'Ð', 'Ñ', 'Ò', 'Ó', 'Æ', 'Â', 'Ü',
    'Û', 'Ç', 'Ø', 'Ý', 'Ù', '×', 'Ú');

procedure TForm1.SetFileName(const FileName: String);
begin
  FFileName := FileName;
  Caption := Format('%s - %s', [ExtractFileName(FileName), Application.Title]);
end;



function TForm1.CheckList(InString: string): boolean;
const TheList: array[1..33] of string = ('begin', 'or', 'end', 'else','end.','property',
'end;', 'then', 'var', 'for', 'do', 'if', 'to', 'string', 'while','const', 'uses', 'unit','asm', 'grinsoft','implementation','public','private','interface','function','procedure','type','array','resourcestring','asm','label','file','case');
var X: integer;
begin
  Result := false;
  X := 1;

  InString := StringReplace(InString, ' ', '',[rfReplaceAll]);
  InString := StringReplace(InString, #$A, '',[rfReplaceAll]);
  InString := StringReplace(InString, #$D, '',[rfReplaceAll]);
  while X < High(TheList) + 1 do
  if TheList[X] = lowercase(InString) then
  begin
    Result := true;
    X := High(TheList) + 1;
  end
  else inc(X);
end;
function TForm1.OpenCD(Drive: string): Boolean;
var
  Res : MciError;
  OpenParm: TMCI_Open_Parms;
  Flags : DWord;
  S : string;
  DeviceID : Word;
begin
  Result:=false;
  S:=Drive;
  Flags:=mci_Open_Type or mci_Open_Element;
  with OpenParm do
  begin
    dwCallback := 0;
    lpstrDeviceType := 'CDAudio';
    lpstrElementName := PChar(S);
  end;
  Res := mciSendCommand(0, mci_Open, Flags, Longint(@OpenParm));
  if Res<>0 then
    exit;
  DeviceID:=OpenParm.wDeviceID;
  try
    Res:=mciSendCommand(DeviceID, MCI_SET, MCI_SET_DOOR_OPEN, 0);
    if Res=0 then
      exit;
    Result:=True;
  finally
    mciSendCommand(DeviceID, mci_Close, Flags, Longint(@OpenParm));
  end;
end;

function TForm1.CloseCD(Drive: string): Boolean;
var
  Res : MciError;
  OpenParm: TMCI_Open_Parms;
  Flags : DWord;
  S : string;
  DeviceID : Word;
begin
  Result:=false;
  S:=Drive;
  Flags:=mci_Open_Type or mci_Open_Element;
  with OpenParm do
  begin
    dwCallback := 0;
    lpstrDeviceType := 'CDAudio';
    lpstrElementName := PChar(S);
  end;
  Res := mciSendCommand(0, mci_Open, Flags, Longint(@OpenParm));
  if Res<>0 then
    exit;
  DeviceID:=OpenParm.wDeviceID;
  try
    Res:=mciSendCommand(DeviceID, MCI_SET, MCI_SET_DOOR_CLOSED, 0);
    if Res=0 then
      exit;
    Result:=True;
  finally
    mciSendCommand(DeviceID, mci_Close, Flags, Longint(@OpenParm));
  end;
end;


procedure TForm1.SetModified(Value: Boolean);
begin
  if Value then StatusBar.Panels[1].Text := sModified
  else StatusBar.Panels[1].Text := '';
end;


function AddDisturbToText(Source: string): string;
var
  n, c: integer;
begin
  Randomize;
  Result := Source;
  n := (Length(Source) * 2) + Random(Length(Source));
  while Length(Result) < n do
  begin
    c := Random(128);
    if Chr(c) in NPCS then
      Insert(Chr(c), Result, Random(Length(Result)) + 1)
  end;
end;

function RemoveDisturbFromText(Source: string): string;
var
  i: integer;
begin
  Result := Source;
  i := 1;
  while i < Length(Result) do
    if Result[i] in NPCS then
      Delete(Result, i, 1)
    else
      Inc(i);
end;
procedure TForm1.PerformFileOpen(const AFileName: string);
var
EXT:string;
begin
  RichEdit1.Lines.LoadFromFile(AFileName);
  SetFileName(AFileName);
  RichEdit1.SetFocus;
  RichEdit1.Modified := False;

      If (EXT = '.HTML')or (eXt='.htm') then
   HTML1.Click;

  HighLight;
  RichEdit1.Modified := False;
If CheckBox2.Checked then begin
      If (EXT = '.HTML')or (eXt='.htm') then
   HTML1.Click;
  RichEdit1.Modified := False;
  end;
  If CheckBox1.Checked then begin
     HighLight;
  RichEdit1.Modified := False;
  end;
  RichEdit1.Modified := False;
  end;
procedure TForm1.ShowHint(Sender: TObject);
begin
  if Length(Application.Hint) > 0 then
  begin
    StatusBar.SimplePanel := True;
    StatusBar.SimpleText := Application.Hint;
  end
  else StatusBar.SimplePanel := False;
end;

function ANSI2KOI8R(S: string): string;
var
  Ansi_CODE, KOI8_CODE: string;
  i: integer;
begin
  KOI8_CODE := 'áâ÷çäåöúéêëìíîïðòóôõæèãþûýÿùøüàñÁÂ×ÇÄÅÖÚÉÊËÌÍÎÏÐÒÓÔÕÆÈÃÞÛÝßÙØÜÀÑ—£';
  ANSI_CODE := 'ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ¹¸';
  Result := S;
  for i := 1 to Length(Result) do
    if Pos(Result[i], ANSI_CODE) > 0 then
      Result[i] := KOI8_CODE[Pos(Result[i], ANSI_CODE)];
end;

function KOI8ANSI(S: string): string;
var
  Ansi_CODE, KOI8_CODE: string;
  i: integer;
begin
  KOI8_CODE := 'ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ¹¸';
  ANSI_CODE := 'áâ÷çäåöúéêëìíîïðòóôõæèãþûýÿùøüàñÁÂ×ÇÄÅÖÚÉÊËÌÍÎÏÐÒÓÔÕÆÈÃÞÛÝßÙØÜÀÑ—£';
  Result := S;
  for i := 1 to Length(Result) do
    if Pos(Result[i], ANSI_CODE) > 0 then
      Result[i] := KOI8_CODE[Pos(Result[i], ANSI_CODE)];
end;


function QINIX_CODE(S: string): string;
var
  HACK_CODE, LAME_CODE: string;
  i: integer;
begin
  LAME_CODE := 'ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ¹¸';
  HACK_CODE := 'áâãäåæçèéêëìíîïðòóôõö÷øùúûüýþÿàáÁÂ×ÇÄÅÖÚÉÊËÌÍÎÏÐÒÓÔÕÆÈÃÞÛÝßÙØÜÀÑ—£';
  Result := S;
  for i := 1 to Length(Result) do
    if Pos(Result[i], HACK_CODE) > 0 then
      Result[i] := LAME_CODE[Pos(Result[i], HACK_CODE)];
end;
function QINIX_CODE_NOT(S: string): string;
var
  HACK_CODE, LAME_CODE: string;
  i: integer;
begin
  LAME_CODE := 'áâãäåæçèéêëìíîïðòóôõö÷øùúûüýþÿàáÁÂ×ÇÄÅÖÚÉÊËÌÍÎÏÐÒÓÔÕÆÈÃÞÛÝßÙØÜÀÑ—£';
  HACK_CODE := 'ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ¹¸';
  Result := S;
  for i := 1 to Length(Result) do
    if Pos(Result[i], HACK_CODE) > 0 then
      Result[i] := LAME_CODE[Pos(Result[i], HACK_CODE)];
end;

 procedure TForm1.FileSaveAs(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    if FileExists(SaveDialog1.FileName) then
      if MessageDlg(Format(sOverWrite, [SaveDialog1.FileName]),
        mtConfirmation, mbYesNoCancel, 0) <> idYes then Exit;
    RichEdit1.Lines.SaveToFile(SaveDialog1.FileName);
    SetFileName(SaveDialog1.FileName);
    RichEdit1.Modified := False;
    SetModified(False);
  end;
end;

function TForm1.CurrText: TTextAttributes;
begin
  if RichEdit1.SelLength > 0 then Result := RichEdit1.SelAttributes
  else Result := RichEdit1.DefAttributes;
end;

procedure TForm1.FileSave(Sender: TObject);
var
str:String;
i:Integer;
begin
if (ParamCount > 0) then
begin
Str:=ParamStr(1);
for i:=2 to ParamCount do
begin
Str:=Str+' '+ParamStr(1);
end;
RichEdit1.Lines.SaveToFile(Str);
end else N4.Click;
end;


procedure TForm1.CheckFileSave;
var
  SaveResp: Integer;
begin
  if not RichEdit1.Modified then Exit;
  SaveResp := MessageDlg(Format(sSaveChanges, [FFileName]),
    mtConfirmation, mbYesNoCancel, 0);
  case SaveResp of
    idYes: FileSave(Self);
    idNo: {Nothing};
    idCancel: Abort;
  end;
end;


{$R *.dfm}
procedure TForm1.WMICON(var msg: TMessage);
var P : TPoint;
begin
 case msg.LParam of
 WM_LBUTTONDOWN:
  begin
   GetCursorPos(p);
   SetForegroundWindow(Application.MainForm.Handle);
   PopupMenu1.Popup(P.X, P.Y);
  end;
 WM_LBUTTONDBLCLK : RestoreItemClick(Self);
 end;
end;

procedure TForm1.WMSYSCOMMAND(var msg: TMessage);
begin
 inherited;
 if (Msg.wParam=SC_MINIMIZE) then HideItemClick(Self);
end;

procedure TForm1.HideMainForm;
begin
  Application.ShowMainForm := False;
  ShowWindow(Application.Handle, SW_HIDE);
  ShowWindow(Application.MainForm.Handle, SW_HIDE);
end;

procedure TForm1.RestoreMainForm; 
var i,j : Integer;
begin
  Application.ShowMainForm := True;
  ShowWindow(Application.Handle, SW_RESTORE);
  ShowWindow(Application.MainForm.Handle, SW_RESTORE);
  if not ShownOnce then
  begin
    for I := 0 to Application.MainForm.ComponentCount -1 do
      if Application.MainForm.Components[I] is TWinControl then
        with Application.MainForm.Components[I] as TWinControl do
          if Visible then
          begin
            ShowWindow(Handle, SW_SHOWDEFAULT);
            for J := 0 to ComponentCount -1 do
              if Components[J] is TWinControl then
                ShowWindow((Components[J] as TWinControl).Handle, SW_SHOWDEFAULT);
          end;
    ShownOnce := True;
  end;

end;

procedure TForm1.CreateTrayIcon(n:Integer);
var nidata : TNotifyIconData;
begin
 with nidata do
  begin
   cbSize := SizeOf(TNotifyIconData);
   Wnd := Self.Handle;
   uID := 1;
   uFlags := NIF_ICON or NIF_MESSAGE or NIF_TIP;
   uCallBackMessage := WM_MYICONNOTIFY;
   hIcon := Application.Icon.Handle;
   StrPCopy(szTip,Application.Title);
  end;
  Shell_NotifyIcon(NIM_ADD, @nidata);
end;

procedure TForm1.DeleteTrayIcon(n:Integer);
var nidata : TNotifyIconData;
begin
 with nidata do
  begin
   cbSize := SizeOf(TNotifyIconData);
   Wnd := Self.Handle;
   uID := 1;
  end;
  Shell_NotifyIcon(NIM_DELETE, @nidata);
end;

function WinToKoi(Str: string): string;
var
  i, j, Index: Integer;
begin
  Result := '';

  for i := 1 to Length(Str) do
  begin
    Index := -1;
    for j := Low(Win) to High(Win) do
      if Win[j] = Str[i] then
      begin
        Index := j;
        Break;
      end;

    if Index = -1 then
      Result := Result + Str[i]
    else
      Result := Result + Koi[Index];
  end;
end;

function KoiToWin(Str: string): string;
var
  i, j, Index: Integer;
begin
  Result := '';

  for i := 1 to Length(Str) do
  begin
    Index := -1;
    for j := Low(Win) to High(Win) do
      if Koi[j] = Str[i] then
      begin
        Index := j;
        Break;
      end;

    if Index = -1 then
      Result := Result + Str[i]
    else
      Result := Result + Win[Index];
  end;
end;


procedure TForm1.N6Click(Sender: TObject);
begin
  try
    CheckFileSave;
  except
  end;
halt;
end;



procedure TForm1.N12Click(Sender: TObject);
begin
RichEdit1.CopyToClipboard;
end;

procedure TForm1.ctrlv1Click(Sender: TObject);
begin
RichEdit1.PasteFromClipboard;
end;


procedure TForm1.N21Click(Sender: TObject);
begin
aboutBox.ShowModal;
end;





















procedure TForm1.N10Click(Sender: TObject);
begin
RichEdit1.SelectAll;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
RichEdit1.ClearSelection;
end;

procedure TForm1.RestoreItemClick(Sender: TObject);
begin
 RestoreMainForm;
 DeleteTrayIcon(1);
 RestoreItem.Enabled := False;
 HideItem.Enabled := True;
end;

procedure TForm1.HideItemClick(Sender: TObject);
begin
   AnimateWindow(Handle, 500, AW_CENTER or AW_hide);
 HideMainForm;
 CreateTrayIcon(1);
 HideItem.Enabled := False;
 RestoreItem.Enabled := True;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 HideMainForm;
 CreateTrayIcon(1);
 HideItem.Enabled := False;
 RestoreItem.Enabled := True;
end;



procedure TForm1.N9Click(Sender: TObject);
begin
  AnimateWindow(Handle, 500, AW_CENTER or AW_HIDE);
  HideMainForm;
 CreateTrayIcon(1);
 HideItem.Enabled := False;
 RestoreItem.Enabled := True;

end;

procedure TForm1.N22Click(Sender: TObject);
begin
  FontDialog1.Font.Assign(RichEdit1.SelAttributes);
  if FontDialog1.Execute then
    CurrText.Assign(FontDialog1.Font);
  RichEdit1.SetFocus;
end;

procedure TForm1.FileExitItem1Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.N15Click(Sender: TObject);
begin
N23.Visible:=true;
N15.Visible:=false;
Form1.AlphaBlendValue:=190;
end;

procedure TForm1.N23Click(Sender: TObject);
begin

Form1.AlphaBlendValue:=200;
Form1.AlphaBlendValue:=222;
Form1.AlphaBlendValue:=230;
Form1.AlphaBlendValue:=240;
Form1.AlphaBlendValue:=255;
N23.Visible:=false;
N15.Visible:=true;
end;

procedure TForm1.N25Click(Sender: TObject);
begin

form1.FormStyle:=fsStayOnTop;
N25.Visible:=false;
N26.Visible:=true;

end;

procedure TForm1.N26Click(Sender: TObject);
begin
form1.FormStyle:=fsNormal;
N25.Visible:=true;
N26.Visible:=false;
end;



procedure TForm1.N2Click(Sender: TObject);
begin
if OpenDialog1.Execute then RichEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
  Caption := Format('%s - XPad', [ExtractFileName(OpenDialog1.FileName), Application.Title]);
    RichEdit1.PlainText:=false;
    RichEdit1.Modified:=false;
    RichEdit1.SelAttributes.Style:= [];
  end;


procedure TForm1.N4Click(Sender: TObject);
begin
RichEdit1.PlainText:=True;
if SaveDialog1.Execute then RichEdit1.Lines.SaveToFile (SaveDialog1.FileName);
end;

procedure TForm1.FormCreate(Sender: TObject);
  var
  F: TIniFile;
  w:dword;
  Root:string;
  I, K:integer;
  begin
  Application.OnHint := ShowHint;
  OpenDialog1.InitialDir := ExtractFilePath(ParamStr(0));
  SaveDialog1.InitialDir := OpenDialog1.InitialDir;
  Dragging:=false;
  Menu1:=TRyMenu.Create;
   Menu1.Add(MainMenu1,nil);
 Menu1.Add(PopupMenu1, nil);
  Menu1.Add(PopupMenu2, nil);
    Menu1.Add(PopupMenu3, nil);
  Menu1.Add(MainMenu1,nil);
  Menu1.Font.Name:='Times New roman';
  Menu1.Font.Style:= [fsItalic];
    Menu1.Font.Height:=-14;
  Menu1.MenuColor:=cllime;
  Menu1.GutterColor:=Claqua;
  Menu1.SelectedColor:=Claqua;

F := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Window.ini');
Form1.Top := F.ReadInteger('ïîçèöèÿ', 'top', 158);
RichEdit1.Color:=f.ReadInteger('Hacking', 'Öâåò richedit`a', RichEdit1.Color);
Form1.AlphaBlendValue:=f.ReadInteger('Hacking', 'Ïðîçðà÷íîñòü',form1.AlphaBlendValue);
RichEdit1.Font.Color:=f.ReadInteger('Font', 'Öâåò', RichEdit1.Font.Color);
RichEdit1.Font.Name:=F.ReadString('Font','Øðèôò',RichEdit1.Font.Name);
RichEdit1.Font.Size:=F.ReadInteger('Font','Ðàçìåð',RichEdit1.Font.Size);
CheckBox2.Checked:=F.ReadBool('Ïîäñâåòêà','HTML', CheckBox2.Checked);
CheckBox1.Checked:=F.ReadBool('Ïîäñâåòêà','PAS', CheckBox1.Checked);
GroupBox1.Visible:=F.ReadBool('BAR','Îòîáðàæåíèå', GroupBox1.Visible);
Picture_1:=F.ReadString('BAR','Òåêñòóðà', Picture_1);
Picture_2:=F.ReadString('Ñêèí','Íèç', Picture_2);
Picture_3:=F.ReadString('Ñêèí','Ïðàâî', Picture_3);
Screen.Cursors[5] := LoadCursorFromFile('File.cur');
Screen.Cursor := 5;
F.Destroy;
  k:=0;
  w:=GetLogicalDrives;
  Root := '#:';
  for i := 0 to 25 do
  begin
    Root[1] := Char(Ord('A')+i);
    if (W and (1 shl i))>0 then
      if GetDriveType(Pchar(Root)) = DRIVE_CDROM then
      begin
        k:=k+1;
        Driv[k] := Root;
        ComboBox1.Items.Add(Driv[k]);
        ComboBox1.Text := Driv[1];
      end;
       If (GroupBox1.Visible)=false then begin
       Label9.Visible:=true;
       end;
  end;
  if (Picture_1 = '') then exit;
    Image1.Picture.LoadFromFile(Picture_1);
  If (Picture_2 = '') then exit;
      Image4.Picture.LoadFromFile(Picture_2);
  If (Picture_3 = '') then exit;
      Image2.Picture.LoadFromFile(Picture_3);




end;


procedure TForm1.N5Click(Sender: TObject);
var
str:String;
i:Integer;
begin
if (ParamCount > 0) then
begin
Str:=ParamStr(1);
for i:=2 to ParamCount do
begin
Str:=Str+' '+ParamStr(1);
end;
RichEdit1.PlainText:=True;
RichEdit1.Lines.SaveToFile(Str);
  RichEdit1.Modified := False;
  SetModified(False);
end else N4.Click;
end;


procedure TForm1.N27Click(Sender: TObject);
begin
if ColorDialog1.Execute then RichEdit1.color:=(ColorDialog1.Color);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
if OpenDialog1.Execute then RichEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  SetFileName(sUntitled);
  RichEdit1.Lines.Clear;
  RichEdit1.Modified := False;
  SetModified(False);
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
if SaveDialog1.Execute then RichEdit1.Lines.SaveToFile (SaveDialog1.FileName);
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
N15.Click;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
N23.Click;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
N22.Click;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
N27.Click;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin


N6.Click;
end;



procedure TForm1.N31Click(Sender: TObject);
begin
RichEdit1.Undo;
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
N25.Click;
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
begin
N26.Click;
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if button=mbLeft then
begin
Dragging := True;
OldLeft := X;
OldTop := Y;
end;
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if Dragging then
begin
Left := Left+X-OldLeft;
Top := Top+Y-OldTop;
end;

end;

procedure TForm1.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Dragging := False;
end;

procedure TForm1.Formshow(Sender: TObject);
begin
  AnimateWindow(Handle, 500, AW_CENTER or AW_ACTIVATE);
  RichEdit1Change(nil);
  RichEdit1.SetFocus;
   if (ParamCount > 0) and FileExists(ParamStr(1)) then
    PerformFileOpen(ParamStr(1));
end;


procedure TForm1.N35Click(Sender: TObject);
var
  Layout: array[0.. KL_NAMELENGTH] of char;
begin
  LoadKeyboardLayout( StrCopy(Layout,'00000419'),KLF_ACTIVATE);


end;

procedure TForm1.English1Click(Sender: TObject);
var
  Layout: array[0.. KL_NAMELENGTH] of char;
begin
  LoadKeyboardLayout(StrCopy(Layout,'00000409'),KLF_ACTIVATE);
end;




procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  try
    CheckFileSave;
      AnimateWindow(Handle, 500, AW_CENTER or AW_HIDE);
  except
    CanClose := False;
  end;
 end;


procedure TForm1.Timer2Timer(Sender: TObject);
var
  CharPos: TPoint;
begin
  SetModified(RichEdit1.Modified);
  CharPos.Y := SendMessage(RichEdit1.Handle, EM_EXLINEFROMCHAR, 0,
    RichEdit1.SelStart);
  CharPos.X := (RichEdit1.SelStart -
    SendMessage(RichEdit1.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
  StatusBar.Panels[0].Text := Format(sColRowInfo, [CharPos.Y, CharPos.X]);
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
 StatusBar.Panels[2].text:=TimeToStr(Time);


end;

procedure TForm1.FormDestroy(Sender: TObject);
var
  F: TIniFile;
begin
  AnimateWindow(Handle, 500, AW_CENTER or AW_HIDE);
  F := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Window.ini');
  F.WriteInteger('Ïîçèöèÿ', 'top', Form1.Top);
  F.WriteInteger('Hacking', 'Öâåò richedit`a', RichEdit1.Color);
  F.WriteInteger('Hacking', 'Ïðîçðà÷íîñòü', Form1.AlphaBlendValue);
  F.WriteInteger('Font', 'Öâåò', RichEdit1.Font.Color);
  F.WriteString('Font','Øðèôò', RichEdit1.Font.Name);
  F.WriteInteger('Font','Ðàçìåð', RichEdit1.Font.Size);
  F.WriteBool('Ïîäñâåòêà','HTML', CheckBox2.Checked);
  F.WriteBool('Ïîäñâåòêà','PAS', CheckBox1.Checked);
  F.WriteBool('BAR','Îòîáðàæåíèå', GroupBox1.Visible);
    F.WriteString('BAR','Òåêñòóðà', Picture_1);
        F.WriteString('Ñêèí','Íèç', Picture_2);
                F.WriteString('Ñêèí','Ïðàâî', Picture_3);
F.Free;
end;






procedure TForm1.N36Click(Sender: TObject);
begin
if ColorDialog1.Execute then RichEdit1.Font.Color:=(ColorDialog1.Color);
end;





procedure TForm1.N13Click(Sender: TObject);
begin
RichEdit1.Clear;
end;

procedure TForm1.N43Click(Sender: TObject);
begin
  RichEdit1.Text := WinToKoi(RichEdit1.Text);

end;

procedure TForm1.koi1Click(Sender: TObject);
begin
  RichEdit1.Text := KoiToWin(RichEdit1.Text);

end;




procedure TForm1.N46Click(Sender: TObject);
 var
   FullProgPath: PChar;
 begin
   FullProgPath := PChar(Application.ExeName);
  WinExec(FullProgPath, SW_SHOW);
end;


procedure TForm1.N50Click(Sender: TObject);
begin
RichEdit1.WantTabs:=true;
end;

procedure TForm1.Dos1Click(Sender: TObject);
var
s:array [0..255] of char;
begin
CharToOem(PChar(RichEdit1.Text), s);
RichEdit1.Text:=s;
end;

procedure TForm1.Doswin1Click(Sender: TObject);
var
s:array [0..255] of char;
begin
OemToChar(PChar(RichEdit1.Text) , s);
RichEdit1.Text:=s;
end;

procedure TForm1.ANSI1Click(Sender: TObject);
begin
RichEdit1.Text := ANSI2KOI8R(RichEdit1.Text);
end;

procedure TForm1.Koi8BANSI1Click(Sender: TObject);
begin
RichEdit1.Text := KOI8ANSI(RichEdit1.Text);
end;

procedure TForm1.QINIXCODE1Click(Sender: TObject);
begin
RichEdit1.Text:=QINIX_CODE(RichEdit1.Text);
end;

procedure TForm1.QINIXCODEANSI1Click(Sender: TObject);
begin
RichEdit1.Text:=QINIX_CODE_NOT(RichEdit1.Text);
end;

procedure TForm1.N55Click(Sender: TObject);
begin
RichEdit1.Text:=AddDisturbToText(RichEdit1.Text);

end;

procedure TForm1.N56Click(Sender: TObject);
begin
RichEdit1.Text:=RemoveDisturbFromText(RichEdit1.text);
end;

procedure TForm1.DW61Click(Sender: TObject);
begin
form3.Show;
end;

procedure TForm1.N8Click(Sender: TObject);
begin

  FindDialog1.Execute;
  FindDialog1.Position := Point(RichEdit1.Left + RichEdit1.Width, RichEdit1.Top);
end;

procedure TForm1.FindDialog1Find(Sender: TObject);
var
  FoundAt: LongInt;
  StartPos, ToEnd: Integer;
begin
  with RichEdit1 do
  begin
    { begin the search after the current selection if there is one }
    { otherwise, begin at the start of the text }
    if SelLength <> 0 then

      StartPos := SelStart + SelLength
    else

      StartPos := 0;

    { ToEnd is the length from StartPos to the end of the text in the rich edit control }

    ToEnd := Length(Text) - StartPos;

    FoundAt := FindText(FindDialog1.FindText, StartPos, ToEnd, [stMatchCase]);
    if FoundAt <> -1 then
    begin
      SetFocus;
      SelStart := FoundAt;
      SelLength := Length(FindDialog1.FindText);
    end;
  end;
end;


procedure TForm1.Label2Click(Sender: TObject);
begin
OpenCD(ComboBox1.Text);
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
CloseCD(ComboBox1.Text);
end;

procedure TForm1.Label4Click(Sender: TObject);
var
si : Tstartupinfo;
p : Tprocessinformation;
old: longint;
hwin:HWND;
begin
FillChar( Si, SizeOf( Si ) , 0 );
with Si do begin
end;
Createprocess(nil,'taskmgr.exe',nil,nil,false,
Create_default_error_mode,nil,nil,si,p);
end;

procedure TForm1.Label5Click(Sender: TObject);
var
si : Tstartupinfo;
p : Tprocessinformation;
old: longint;
hwin:HWND;
begin
FillChar( Si, SizeOf( Si ) , 0 );
with Si do begin
end;
Createprocess(nil,'calc.exe',nil,nil,false,
Create_default_error_mode,nil,nil,si,p);
end;
procedure TForm1.Label8Click(Sender: TObject);

var
si : Tstartupinfo;
p : Tprocessinformation;
old: longint;
hwin:HWND;
begin
FillChar( Si, SizeOf( Si ) , 0 );
with Si do begin
end;
Createprocess(nil,'regedit.exe',nil,nil,false,
Create_default_error_mode,nil,nil,si,p);
sleep(500);
end;
procedure TForm1.Label6Click(Sender: TObject);
var
si : Tstartupinfo;
p : Tprocessinformation;
old: longint;
hwin:HWND;
begin
FillChar( Si, SizeOf( Si ) , 0 );
with Si do begin
end;
Createprocess(nil,'osk.exe',nil,nil,false,
Create_default_error_mode,nil,nil,si,p);

end;
procedure TForm1.Label7Click(Sender: TObject);
var
si : Tstartupinfo;
p : Tprocessinformation;
begin
FillChar( Si, SizeOf( Si ) , 0 );
with Si do begin
end;
Createprocess(nil,'cmd.exe',nil,nil,false,
Create_default_error_mode,nil,nil,si,p);
end;

procedure TForm1.Label2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label2.Font.Color:=clgreen;
end;

procedure TForm1.Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Label2.Transparent:=false;
Label2.Color:=clAqua;
Label2.Font.Color:=clwhite;
end;

procedure TForm1.Label2MouseLeave(Sender: TObject);
begin
Label2.Transparent:=true;
Label2.Font.Color:=clblack;
end;

procedure TForm1.Label2MouseEnter(Sender: TObject);
begin
Label2.Font.Color:=clwhite;
end;

procedure TForm1.Label2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label2.Font.Color:=clgreen;
end;

procedure TForm1.Label3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label3.Font.Color:=clgreen;
end;

procedure TForm1.Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Label3.Transparent:=false;
Label3.Color:=clAqua;
Label3.Font.Color:=clWhite;
end;

procedure TForm1.Label3MouseEnter(Sender: TObject);
begin
Label3.Font.Color:=clWhite;
end;

procedure TForm1.Label3MouseLeave(Sender: TObject);
begin
Label3.Transparent:=true;
Label3.Font.Color:=clBlack;
end;

procedure TForm1.Label3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label3.Font.Color:=clRED;
end;

procedure TForm1.Label4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label4.Font.Color:=clRED;
end;

procedure TForm1.Label4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Label4.Transparent:=false;
Label4.Color:=clAqua;
Label4.Font.Color:=clWhite;
end;

procedure TForm1.Label4MouseEnter(Sender: TObject);
begin
Label4.Font.Color:=clWhite;
end;

procedure TForm1.Label4MouseLeave(Sender: TObject);
begin
Label4.Transparent:=true;
Label4.Font.Color:=clBlack;
end;

procedure TForm1.Label4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label4.Font.Color:=clRED;
end;

procedure TForm1.Label5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label5.Font.Color:=clGREEN;
end;

procedure TForm1.Label5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Label5.Font.Color:=clWhite;
Label5.Transparent:=false;
Label5.Color:=clAqua;
end;

procedure TForm1.Label5MouseEnter(Sender: TObject);
begin
Label5.Font.Color:=clWhite;
end;

procedure TForm1.Label5MouseLeave(Sender: TObject);
begin
Label5.Transparent:=true;
Label5.Font.Color:=clblack;
end;

procedure TForm1.Label5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label5.Font.Color:=clBlue;
end;

procedure TForm1.Label8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label8.Font.Color:=clGREEN;
end;

procedure TForm1.Label8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Label8.Transparent:=false;
Label8.Color:=clAqua;
Label8.Font.Color:=clWhite;
end;

procedure TForm1.Label8MouseEnter(Sender: TObject);
begin
Label8.Font.Color:=clWhite;
end;

procedure TForm1.Label8MouseLeave(Sender: TObject);
begin
Label8.Transparent:=true;
Label8.Font.Color:=clBlack;
end;

procedure TForm1.Label8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label8.Font.Color:=clRED;
end;

procedure TForm1.Label6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label6.Font.Color:=clRED;
end;

procedure TForm1.Label6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Label6.Transparent:=false;
Label6.Color:=clAqua;
Label6.Font.Color:=clWhite;
end;

procedure TForm1.Label6MouseLeave(Sender: TObject);
begin
Label6.Transparent:=true;
Label6.Font.Color:=clBlack;
end;

procedure TForm1.Label6MouseEnter(Sender: TObject);
begin
Label6.Font.Color:=clWhite;
end;

procedure TForm1.Label6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label6.Font.Color:=clBlue;
end;

procedure TForm1.Label7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label7.Font.Color:=clBlue;
end;

procedure TForm1.Label7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

Label7.Transparent:=false;
Label7.Color:=clAqua;
Label7.Font.Color:=clWhite;
end;

procedure TForm1.Label7MouseLeave(Sender: TObject);
begin
Label7.Transparent:=true;
Label7.Font.Color:=clBlack;
end;

procedure TForm1.Label7MouseEnter(Sender: TObject);
begin
Label7.Font.Color:=clwhite;
end;

function SearchFor(WorkSpace, Search: string; Start: integer): integer;
var Temp: string;
begin
  Temp := copy(WorkSpace, Start, length(WorkSpace));
  Result := pos(Search, Temp);
end;

procedure TForm1.Label7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label7.Font.Color:=clBlue;
end;

procedure TForm1.HighLight;
var WStart, WEnd, WEnd2: integer;
  WorkSpace, SWord: string;
begin
If checkBox1.Checked then begin
  WStart  :=  1;
  WEnd  :=  1;
  with  RichEdit1 do
  begin
    WorkSpace  :=  Text + ' ' + #$D#$A;
    while WEnd > 0 do
    begin
      WEnd := SearchFor(WorkSpace, ' ', WStart);
      WEnd2 := SearchFor(WorkSpace, #$A, WStart);
      if WEnd2 < WEnd then WEnd := WEnd2;
      SWord := copy(WorkSpace, WStart, WEnd - 1);
      if (SWord <> ' ') and (SWord <>'') then
        if CheckList(SWord) then
        begin
          SelStart  := WStart - 1;
          SelLength := length(SWord);
          SelAttributes.Style := [fsBOLD];
          SelStart := WStart + length(SWord) + 1;
          SelAttributes.Style := [];
        end;
      WStart := WStart + WEnd;
    end;
    SelStart := length(Text);
    SetFocus;
  end;
end;
end;
procedure TForm1.DelphiPascal1Click(Sender: TObject);
var WEnd, WStart, BCount: integer;
  Mark: string;
begin
If CheckBox1.Checked then begin

HighLight;
end else exit;
end;


procedure TForm1.RichEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var WEnd, WStart, BCount: integer;
  Mark: string;
begin
If CheckBox1.Checked then begin
  if (ssCtrl in Shift) and (Key = ord('V')) then DelphiPascal1Click(Self);
  if (Key = VK_Return) or (Key = VK_Back) or (Key = VK_Space) then
  begin
    if RichEdit1.SelStart > 1 then
    begin
      WStart := 0;
      WEnd := RichEdit1.SelStart;
      BCount := WEnd - 1;
      while BCount <> 0 do
      begin
        Mark := copy(RichEdit1.Text, BCount, 1);
        if (Mark = ' ') or (Mark = #$A) then
        begin
          WStart := BCount;
          BCount := 1;
        end;
        dec(BCount);
      end;
      RichEdit1.SelStart := WEnd - (WEnd - WStart);
      RichEdit1.SelLength := WEnd - WStart;
      
      if CheckList(RichEdit1.SelText) then
        RichEdit1.SelAttributes.Style := [fsBold]
      else RichEdit1.SelAttributes.Style := [];
      RichEdit1.SelStart := WEnd;
      RichEdit1.SelAttributes.Style := [];
    end;
  end;
end;
end;

procedure HTMLSyntax(RichEdit: TRichEdit; TextCol,
  TagCol, DopCol: TColor);
var  
  i, iDop: Integer; 
  s: string;
  Col: TColor; 
  isTag, isDop: Boolean; 
begin 
  iDop := 0; 
  isDop := False; 
  isTag := False; 
  Col := TextCol; 
  RichEdit.SetFocus;

  for i := 0 to Length(RichEdit.Text) do 
  begin
    RichEdit.SelStart := i;
    RichEdit.SelLength := 1;
    s := RichEdit.SelText;

    if (s = '<') or (s = '{') then isTag := True; 

    if isTag then 
      if (s = '"') then 
        if not isDop then 
        begin 
          iDop  := 1; 
          isDop := True; 
        end  
        else 
          isDop := False; 

    if isTag then 
      if isDop then 
      begin 
        if iDop <> 1 then Col := DopCol; 
      end  
      else 
        Col := TagCol 
    else 
      Col := TextCol; 

    RichEdit.SelAttributes.Color := Col;

    iDop := 0; 

    if (s = '>') or (s = '}') then isTag := False; 
  end; 
   
  RichEdit.SelLength := 0;
end; 

procedure TForm1.RichEdit1Change(Sender: TObject);
begin
  SetModified(RichEdit1.Modified);
end;

procedure TForm1.RichEdit1KeyPress(Sender: TObject; var Key: Char);
begin
case Ord(Key) of
    KEY_CTRL_B:
      begin
        Key := #0;
        if fsBold in (Sender as TRichEdit).SelAttributes.Style then
          (Sender as TRichEdit).SelAttributes.Style :=
          (Sender as TRichEdit).SelAttributes.Style - [fsBold]
        else
          (Sender as TRichEdit).SelAttributes.Style :=
          (Sender as TRichEdit).SelAttributes.Style + [fsBold];
      end;
    KEY_CTRL_I:
      begin
        Key := #0;
        if fsItalic in (Sender as TRichEdit).SelAttributes.Style then
          (Sender as TRichEdit).SelAttributes.Style :=
          (Sender as TRichEdit).SelAttributes.Style - [fsItalic]
        else
          (Sender as TRichEdit).SelAttributes.Style :=
          (Sender as TRichEdit).SelAttributes.Style + [fsItalic];
      end;
    KEY_CTRL_T:
      begin
        Key := #0;
        if fsStrikeout in (Sender as TRichEdit).SelAttributes.Style then
          (Sender as TRichEdit).SelAttributes.Style :=
          (Sender as TRichEdit).SelAttributes.Style-[fsStrikeout]
        else
          (Sender as TRichEdit).SelAttributes.Style :=
          (Sender as TRichEdit).SelAttributes.Style+[fsStrikeout];
      end;
    KEY_CTRL_U:
      begin
        Key := #0;
        if fsUnderline in (Sender as TRichEdit).SelAttributes.Style then
          (Sender as TRichEdit).SelAttributes.Style :=
          (Sender as TRichEdit).SelAttributes.Style-[fsUnderline]
        else
          (Sender as TRichEdit).SelAttributes.Style :=
          (Sender as TRichEdit).SelAttributes.Style+[fsUnderline];
      end;
  end;
   end;
procedure TForm1.N32Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ' '+N32.Caption+'';
end;

procedure TForm1.N33Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ' '+N33.Caption+'';
end;

procedure TForm1.N41Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ' '+N41.Caption+'';
end;

procedure TForm1.N57Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ' '+N57.Caption+'';
end;

procedure TForm1.N58Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ' '+N58.Caption+'';
end;

procedure TForm1.N59Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ' '+N59.Caption+'';
end;

procedure TForm1.N60Click(Sender: TObject);
begin
ExtractFileExt('.txt');
RichEdit1.Text:=RichEdit1.Text + ''#13'@@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@';
end;

procedure TForm1.By1Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ''#13'ÙùÙÙùÙÙùÙÙ ÙùÙÙùÙÙùÙÙ ÙùÙÙùÙÙùÙÙ ÙùÙÙùÙÙùÙÙ ÙùÙÙùÙÙÙ ùÙÙÙÙÙùÙÙùùÙ ùÙÙÙÙÙùÙÙùùÙ ùÙÙÙÙÙùÙÙùùÙ ùÙÙÙÙÙùÙÙùùÙ ùÙÙÙÙÙùÙÙùùÙ ùÙÙÙÙÙùÙÙùùÙ ùÙÙÙÙÙùÙÙùùÙ';
end;

procedure TForm1.OoOooOoOOoOOoo1Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ''#13'OOOooOOooOOoo OOOooOOooOOoo OOooOOoooOOO ooOoooOOooOoooo OOoOooooOOOOOOo';
end;

procedure TForm1.N61Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ''#13'®©®©®©®©®©®© ®©®©®©®©®© ®©®©®©®©®© ®©®©®©®©®© ®©®©®©®©®© ®©®©®©®©®© ®©®©®©®©®© ®©®©®©®©®©';
end;

procedure TForm1.ShutDownrt601Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ''#13'Shurdown -r -t 60';
end;

procedure TForm1.Shutdowna1Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ''#13'Shurdown -a';
end;

procedure TForm1.NetSend1Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ''#13'Net Send * ÒÅÊÑÒ!!!!';
end;

procedure TForm1.askkillfimexe1Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ''#13'Taskkill /f /im ÈÌß_ÏÐÎÖÅÑÑÀ.exe';
end;

procedure TForm1.MsgBox01Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ''#13'MsgBox "ÒÅÊÑÒ",0,"ÇÀÃÎËÎÂÎÊ"';
end;

procedure TForm1.Begin1Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + Begin1.Caption;
end;

procedure TForm1.Var1Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ''#13'var';
end;

procedure TForm1.Begin2Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ''#13'begin';
end;

procedure TForm1.End1Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ''#13'End;';
end;

procedure TForm1.Endelse1Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ''#13'End Else';
end;

procedure TForm1.End2Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ''#13'end.';
end;

procedure TForm1.ifthenbegin1Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ''#13'If () then begin';
end;

procedure TForm1.for1Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ''#13'For';
end;

procedure TForm1.N63Click(Sender: TObject);
var
S:string;
begin
S:=TimeToStr(time);
RichEdit1.Text:=RichEdit1.Text + ' '+S+'';
end;

procedure TForm1.N64Click(Sender: TObject);
var
S:string;
begin
S:=dateToStr(date);
RichEdit1.Text:=RichEdit1.Text + ' '+S+'';
end;

procedure TForm1.HTML1Click(Sender: TObject);
begin
if CheckBox2.Checked then begin
  RichEdit1.Lines.BeginUpdate;
  HTMLSyntax(RichEdit1, clBlue, clRed, clGreen); 
  RichEdit1.Lines.EndUpdate;

end else exit;
 
end;
procedure TForm1.N65Click(Sender: TObject);
begin
FOrm2.show;
end;




procedure TForm1.Timer1Timer(Sender: TObject);
begin
  RichEdit1.Modified := False;
  Timer1.Enabled:=false;

end;

procedure TForm1.N68Click(Sender: TObject);
begin
GroupBox1.Visible:=false;
Label9.Visible:=true;
end;

procedure TForm1.Label9Click(Sender: TObject);
begin
Label9.Visible:=false;
GroupBox1.Visible:=true;
end;

procedure TForm1.N67Click(Sender: TObject);
begin
If OpenDialog2.Execute then begin
Picture_1:=OpenDialog2.FileName;
Image1.Picture.LoadFromFile(Picture_1);
EnablePicture:='CooL';
end else exit;
end;

procedure TForm1.N69Click(Sender: TObject);
begin
If OpenDialog2.Execute then begin
Picture_2:=OpenDialog2.FileName;
Image4.Picture.LoadFromFile(Picture_2);
end else exit;
end;

procedure TForm1.N70Click(Sender: TObject);
begin
If OpenDialog2.Execute then begin
Picture_3:=OpenDialog2.FileName;
Image2.Picture.LoadFromFile(Picture_3);
end else exit;
end;

procedure TForm1.N71Click(Sender: TObject);
begin
Picture_1:='';
Picture_2:='';
Picture_3:='';
ShowMEssage ('Âñå èçìåíåíèÿ Ïðîèçîéäóò ïîñëå ïåðåçàãðóçêè ïðîãðàììû');
end;
function ExecuteFile(const FileName,Params,DefaultDir:string;
ShowCmd:Integer):THandle;
var
zFileName,zParams,zDir:array [0..79 ] of Char;
begin
Result :=ShellExecute(Application.MainForm.Handle,nil,
StrPCopy(zFileName,FileName),StrpCopy(zParams,Params),
StrPCopy(zDir,DefaultDir),ShowCmd);
end;
procedure TForm1.N83Click(Sender: TObject);
begin
If OpenDialog1.Execute then begin
Rich.PlainText:=true;
RIch.Lines.LoadFromFile(OpenDialog1.FileName);
end;

end;

procedure TForm1.N78Click(Sender: TObject);
begin
Rich.SelectAll;
end;

procedure TForm1.N77Click(Sender: TObject);
begin
Rich.Clear;
end;

procedure TForm1.N76Click(Sender: TObject);
begin
Rich.PasteFromClipboard;
end;

procedure TForm1.N75Click(Sender: TObject);
begin
Rich.CopyToClipboard;
end;

procedure TForm1.wwwdelphihack3dnru1Click(Sender: TObject);
begin
ExecuteFile('www.delphihack.3dn.ru','','',SW_SHOW);
end;

procedure TForm1.wwwdelphi3dnru1Click(Sender: TObject);
begin
ExecuteFile('www.delphi.3dn.ru','','',SW_SHOW);
end;

procedure TForm1.wwwsecuritylabru1Click(Sender: TObject);
begin
ExecuteFile('www.SecurityLab.ru','','',SW_SHOW);
end;

procedure TForm1.www1Click(Sender: TObject);
begin
ExecuteFile('www.InAttack.ru','','',SW_SHOW);
end;

procedure TForm1.wwwworldF3dnru1Click(Sender: TObject);
begin
ExecuteFile('www.WorldF.3dn.ru','','',SW_SHOW);
end;

procedure TForm1.httpbfbvouzFlooderCodingClan1Click(Sender: TObject);
begin
ExecuteFile('http://bfb.vo.uz/','','',SW_SHOW);
end;

procedure TForm1.wwwip1Click(Sender: TObject);
begin
ExecuteFile('www.ip.xss.ru','','',SW_SHOW);
end;

procedure TForm1.IP1Click(Sender: TObject);
begin
ExecuteFile('www.myip.ru','','',SW_SHOW);
end;



procedure TForm1.Name1Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ' '+Name1.caption+'';
end;

procedure TForm1.N80Click(Sender: TObject);
begin
RichEdit1.Text:=RichEdit1.Text + ' '+N80.Caption+'';
end;

procedure TForm1.MDI1Click(Sender: TObject);
var
LOADEDDEN:TSpeedButton;
begin
formcreate2:= Tform.Create(form1);
formcreate2.Parent:=formcreate2;
Formcreate2.Height:=500;
Formcreate2.Width:=500;
Formcreate2.Position:=poDesktopCenter;
Rich:= TrichEdit.Create(formcreate2);
Rich.Align:=alClient;
Rich.Font.Name:='TImes new roman';
Rich.Font.Height:=-15;
Rich.PlainText:=true;
Rich.PopupMenu:=PopupMenu4;
Rich.Parent:=formcreate2;
Rich.ScrollBars:=ssBoth;
Tools := Ttoolbar.Create(formcreate2);
Tools.Align:=alBottom;
Tools.Parent:=Formcreate2;
Loadedden:= TSpeedButton.Create(tools);
Loadedden.Caption:='Çàãðóçèòü';
Loadedden.OnClick:=n83.OnClick;
Loadedden.Width:=58;
Loadedden.Parent:= tools;
SpeedBATON:= Tspeedbutton.Create(Tools);
SpeedBATON.Caption:='Ñîõðàíèòü';
SPEEDBATON.Width:=58;
SPEEDBATON.OnClick:=N82.OnClick;
SpeedBATON.Parent:=tools;
Formcreate2.Show;
end;

procedure TForm1.N82Click(Sender: TObject);
begin
If SaveDialog1.Execute then begin
Rich.PlainText:=true;
RIch.Lines.SaveToFile(SaveDialog1.FileName);
end else exit;
end;

end.
