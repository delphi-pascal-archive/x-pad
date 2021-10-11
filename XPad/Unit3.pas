unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    seN: TSpinEdit;
    btEncode: TButton;
    btDecode: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure btEncodeClick(Sender: TObject);
    procedure btDecodeClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure Encode(bCode: boolean; n: integer);
    procedure Code(var text: string; password: string;
  decode: boolean);
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  s: string;

implementation
uses unit1;

{$R *.dfm}
procedure TForm3.Encode(bCode: boolean; n: integer);
const
  sMsgRangeErr = '�������� ���� ������ ���� �� %d �� %d!';

  // ������� ������� ��� �����������
  chBigFirstLetter: char = '�';
  chBigLastLetter: char = '�';

  chFirstLetter: char = '�';
  chLastLetter: char = '�';
var
  iMinOrd: integer; // ��� ������� � ���������� �����
  iMaxOrd: integer; // ��� ������� � ���������� �����
  i: integer; // ��� �����
  iTempOrd: integer; // ��� �������������� �������
  ch: char; // ������ ������ ������
  s: string; // ������������� �����
begin
  // �������� ���� �� �������� ���������� ��������
  if (n > Ord(chBigLastLetter) - Ord(chBigFirstLetter)) or (n < 1) then
  begin
    MessageDlg(Format(sMsgRangeErr, [1, Ord(chBigLastLetter) - Ord(chBigFirstLetter)]), mtError, [mbOk], 0);
    Exit;
  end;

  s := Trim(form1.RichEdit1.Text);
  if s <> '' then // ���� ���� �����
    for i := 1 to Length(s) do // �������� ������ ������
    begin
      ch := s[i];

      // ���� ��������� ������ ����� ����������
      if ch in [chBigFirstLetter .. chBigLastLetter] then // ��������� �����
      begin
        iMinOrd := Ord(chBigFirstLetter);
        iMaxOrd := Ord(chBigLastLetter);
      end
      else
      if ch in [chFirstLetter .. chLastLetter] then // �������� �����
      begin
        iMinOrd := Ord(chFirstLetter);
        iMaxOrd := Ord(chLastLetter);
      end
      else // ������ ���������� �� �����
        continue;

      if bCode then // ������������
      begin
        iTempOrd := Ord(ch) + n; // �������� ������������� �������
        if iMaxOrd - iTempOrd < 0 then // ���� ������ ����� �� ������� �����������
          ch := Chr(iMinOrd + abs(iMaxOrd - iTempOrd) - 1) // ������� ������ � ������� ����� �����
        else // ���� ���..
          ch := chr(iTempOrd); //..��� ���������
      end
      else // �������������
      begin
        iTempOrd := Ord(ch) - n; // �������� ������������� �������
        if iMinOrd - iTempOrd > 0 then // ���� ������ ����� �� ������� �����������
          ch := Chr(iMaxOrd - (iMinOrd - iTempOrd - 1)) // ������� ������ � ������� ����� �����
        else // ���� ���..
          ch := chr(iTempOrd); //..��� ���������
      end;

      s[i] := ch;
    end;
  form1.RichEdit1.Text := s;
end;

procedure tform3.Code(var text: string; password: string;
  decode: boolean);
var
  i, PasswordLength: integer;
  sign: shortint;
begin
  PasswordLength := length(password);
  if PasswordLength = 0 then Exit;
  if decode
    then sign := -1
    else sign := 1;
  for i := 1 to Length(text) do
    text[i] := chr(ord(text[i]) + sign *
      ord(password[i mod PasswordLength + 1]));
end;


procedure TForm3.btEncodeClick(Sender: TObject);
begin
  Encode(boolean((Sender as TButton).Tag), seN.Value);
end;

procedure TForm3.btDecodeClick(Sender: TObject);
begin
  Encode(boolean((Sender as TButton).Tag), seN.Value);
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  s := FOrm1.RichEdit1.Text;
  code(s, Edit1.Text, false);
  Form1.RichEdit1.Text := s;

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  code(s, Edit1.Text, true);
  FOrm1.RichEdit1.Text := s;

end;

end.
