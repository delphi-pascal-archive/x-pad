unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    RichEdit1: TRichEdit;
    Label2: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
Uses unit1;
{$R *.dfm}
function Search_And_Replace(RichEdit: TRichEdit; SearchText, ReplaceText: string): Boolean;
var
  startpos, Position, endpos: integer; 
begin 
  startpos := 0; 
  with RichEdit do 
  begin 
    endpos := Length(RichEdit.Text);
    Lines.BeginUpdate; 
    while FindText(SearchText, startpos, endpos, [stMatchCase])<>-1 do 
    begin 
      endpos   := Length(RichEdit.Text) - startpos; 
      Position := FindText(SearchText, startpos, endpos, [stMatchCase]); 
      Inc(startpos, Length(SearchText)); 
      SetFocus; 
      SelStart  := Position; 
      SelLength := Length(SearchText); 
      richedit.clearselection; 
      SelText := ReplaceText; 
    end; 
    Lines.EndUpdate; 
  end; 
end; 
function SearchForText_AndSelect(RichEdit: TRichEdit; SearchText: string): Boolean; 
var 
  StartPos, Position, Endpos: Integer; 
begin 
  StartPos := 0; 
  with RichEdit do 
  begin 
    Endpos := Length(RichEdit.Text); 
    Lines.BeginUpdate; 
    while FindText(SearchText, StartPos, Endpos, [stMatchCase])<>-1 do 
    begin 
      Endpos   := Length(RichEdit.Text) - startpos; 
      Position := FindText(SearchText, StartPos, Endpos, [stMatchCase]); 
      Inc(StartPos, Length(SearchText)); 
      SetFocus; 
      SelStart  := Position; 
      SelLength := Length(SearchText); 
    end; 
    Lines.EndUpdate; 
  end; 
end;


procedure TForm2.Label1Click(Sender: TObject);
begin
  Search_And_Replace(Form1.RichEdit1, Edit1.Text, Edit2.Text);

end;

procedure TForm2.Label2Click(Sender: TObject);
begin
  SearchForText_AndSelect(FOrm1.RichEdit1, Edit1.text);

end;

end.
