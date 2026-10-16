unit fnatural;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, unatural;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button23: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    V: TEdit;
    D: TEdit;
    P: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure VChange(Sender: TObject);
  private
    N: Natural;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.VChange(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  N:=Natural.crear();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  N.SetValor(StrToInt(D.Text));
  D.Text:='';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  D.Text:=IntToStr(N.GetValor());
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   D.Text:=IntToStr(N.digCant());
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   D.Text:=IntToStr(N.digSum());
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Close();
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  D.Text:=IntToStr(N.eliminar(StrToInt(P.Text)));
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  D.Text:=IntToStr(N.pares());
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  D.Text:=IntToStr(N.impares());
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  D.Text:=IntToStr(N.primos());
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  D.Text:=IntToStr(N.mayor());
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  D.Text:=IntToStr(N.menor());
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  D.Text:=IntToStr(N.invertir());
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  if(N.capicua())then
    D.Text:='Es Capicua'
  else
    D.Text:='No es Capicua';
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  if(N.par())then
    D.Text:='Es Par'
  else
    D.Text:='No es Par';
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  if(N.impar())then
    D.Text:='Es Impar'
  else
    D.Text:='No es Impar';
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  if(N.primo())then
    D.Text:='Es Primo'
  else
    D.Text:='No es Primo';
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  D.Text:=N.binario();
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  D.Text:=N.octal();
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
  D.Text:=N.hexadecimal();
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  D.Text:=N.romano();
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  D.Text:=N.literalNum();
end;

end.

