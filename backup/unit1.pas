unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    TrackBar1: TTrackBar;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  zahl1, i:double;

begin
    zahl1:=strtofloat(edit1.text);
    if zahl1 >=1000 then
    begin
    label2.caption:='Sicherheit: sehr leicht';
    trackbar1.position:=1;
    label2.Font.Color:=clred;
    end;

    if zahl1 >=10000 then
    begin
    label2.caption:='Sicherheit: leicht';
    trackbar1.position:=3;
    label2.Font.Color:=clgreen;
    end;
    if zahl1 >=1000000 then
    begin
    label2.caption:='Sicherheit: Mittel';
    trackbar1.position:=5;
    label2.Font.Color:=$000080FF;
    end;
    if zahl1 >=10000000000 then
    begin
    label2.caption:='Sicherheit: Schwer';
    trackbar1.position:=8;
    label2.Font.Color:=clblack;
    end;
    if zahl1 >=10000000000000000 then
    begin
    label2.caption:='Sicherheit: Sehr Schwer';
    trackbar1.position:=11;
    label2.Font.Color:=clblue;
    end;
    if zahl1 >=1000000000000000000000000 then
    begin
    label2.caption:=' "Impossible"';
    trackbar1.position:=15;
    label2.Font.Color:=clpurple;
     end;
end;

end.

