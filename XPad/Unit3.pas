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
  sMsgRangeErr = 'Значение шага должно быть от %d до %d!';

  // Крайние символы для кодирования
  chBigFirstLetter: char = 'А';
  chBigLastLetter: char = 'Я';

  chFirstLetter: char = 'а';
  chLastLetter: char = 'я';
var
  iMinOrd: integer; // Код символа с наименьшим кодом
  iMaxOrd: integer; // Код символа с наибольшим кодом
  i: integer; // Для фикла
  iTempOrd: integer; // Код подставляемого символа
  ch: char; // Каждый символ текста
  s: string; // Преобразуемый текст
begin
  // Проверка шага на диапазон допустимых значений
  if (n > Ord(chBigLastLetter) - Ord(chBigFirstLetter)) or (n < 1) then
  begin
    MessageDlg(Format(sMsgRangeErr, [1, Ord(chBigLastLetter) - Ord(chBigFirstLetter)]), mtError, [mbOk], 0);
    Exit;
  end;

  s := Trim(form1.RichEdit1.Text);
  if s <> '' then // Если есть текст
    for i := 1 to Length(s) do // Проходит каждый символ
    begin
      ch := s[i];

      // Если очередной символ нужно кодировать
      if ch in [chBigFirstLetter .. chBigLastLetter] then // Заглавные буквы
      begin
        iMinOrd := Ord(chBigFirstLetter);
        iMaxOrd := Ord(chBigLastLetter);
      end
      else
      if ch in [chFirstLetter .. chLastLetter] then // Строчные буквы
      begin
        iMinOrd := Ord(chFirstLetter);
        iMaxOrd := Ord(chLastLetter);
      end
      else // Символ кодировать не нужно
        continue;

      if bCode then // Закодировать
      begin
        iTempOrd := Ord(ch) + n; // Получаем потенциальную позицию
        if iMaxOrd - iTempOrd < 0 then // Если символ зашел за границу предельного
          ch := Chr(iMinOrd + abs(iMaxOrd - iTempOrd) - 1) // Возьмем символ с другого конца круга
        else // Если нет..
          ch := chr(iTempOrd); //..все нормально
      end
      else // Раскодировать
      begin
        iTempOrd := Ord(ch) - n; // Получаем потенциальную позицию
        if iMinOrd - iTempOrd > 0 then // Если символ зашел за границу предельного
          ch := Chr(iMaxOrd - (iMinOrd - iTempOrd - 1)) // Возьмем символ с другого конца круга
        else // Если нет..
          ch := chr(iTempOrd); //..все нормально
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
