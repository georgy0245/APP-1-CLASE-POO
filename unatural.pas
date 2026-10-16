unit unatural;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;
type

  { Natural }

  Natural=class
  private
    valor:integer;
  public
    constructor crear();     //k
    procedure SetValor(val:integer);
    function  GetValor():integer;
    function  digCant():integer;
    function  digSum():integer;
    function eliminar(dig:integer):integer;
    function pares():integer;
    function impares():integer;
    function primos():integer;
    function mayor():integer;
    function menor():integer;
    function invertir():integer;
    function capicua():boolean;
    function par():boolean;
    function impar():boolean;
    function primo():boolean;
    function binario():string;
    function octal():string;
    function hexadecimal():string;
    function baseN(base:integer):string;
    function romano():string;
    function literalNum():string;

end;

implementation

{ TNatural }

constructor Natural.crear();
begin
valor:=0;
end;

procedure Natural.SetValor(val: integer);
begin
valor:=val;
end;

function Natural.GetValor(): integer;
begin
result:=valor;
end;

function Natural.digCant(): integer;
var
cd,aux,dig:integer;
begin
cd:=0;
aux:= valor;
while(aux<>0)do
  begin
    dig:=aux mod 10;
    aux:=aux div 10;
    cd:=cd+1;
  end;
result:=cd;
end;

function Natural.digSum(): integer;
var
sum,aux,dig:integer;
begin
sum:=0;
aux:= valor;
while(aux<>0)do
  begin
    dig:=aux mod 10;
    aux:=aux div 10;
    sum:=sum+dig;
  end;
result:=sum;
end;

function Natural.eliminar(dig: integer): integer;
var
  aux,num,pot,d:integer;
begin
  aux:=valor;
  num:=0;
  pot:=1;
  while(aux<>0)do
    begin
      d:=aux mod 10;
      if(d<>dig)then
        begin
          num:=num+(d*pot);
          pot:=pot*10;
        end;
      aux:=aux div 10;
    end;
  result:=num;
end;

function Natural.pares(): integer;
var
  aux,d,cp:integer;
begin
  aux:=valor;
  cp:=0;
  while(aux<>0)do
    begin
      d:=aux mod 10;
      if(d mod 2=0)then
        cp:=cp+1;
      aux:=aux div 10;
    end;
  result:=cp;
end;

function Natural.impares(): integer;
var
  aux,d,ci:integer;
begin
  aux:=valor;
  ci:=0;
  while(aux<>0)do
    begin
      d:=aux mod 10;
      if(d mod 2<>0)then
        ci:=ci+1;
      aux:=aux div 10;
    end;
  result:=ci;
end;

function Natural.primos(): integer;
var
  aux,d,cp,i,c:integer;
begin
  aux:=valor;
  cp:=0;
  while(aux<>0)do
    begin
      d:=aux mod 10;
      c:=0;
      for i:=1 to d do
        begin
          if(d mod i=0)then
            c:=c+1;
        end;
      if(c=2)then
        cp:=cp+1;
      aux:=aux div 10;
    end;
  result:=cp;
end;

function Natural.mayor(): integer;
var
  aux,d,may:integer;
begin
  aux:=valor;
  may:=0;
  while(aux<>0)do
    begin
      d:=aux mod 10;
      if(d>may)then
        may:=d;
      aux:=aux div 10;
    end;
  result:=may;
end;

function Natural.menor(): integer;
var
  aux,d,men:integer;
begin
  aux:=valor;
  men:=9;
  while(aux<>0)do
    begin
      d:=aux mod 10;
      if(d<men)then
        men:=d;
      aux:=aux div 10;
    end;
  result:=men;
end;

function Natural.invertir(): integer;
var
  aux,inv,d:integer;
begin
  aux:=valor;
  inv:=0;
  while(aux<>0)do
    begin
      d:=aux mod 10;
      inv:=inv*10+d;
      aux:=aux div 10;
    end;
  result:=inv;
end;

function Natural.capicua(): boolean;
begin
  result:=valor=invertir();
end;

function Natural.par(): boolean;
begin
  result:=valor mod 2=0;
end;

function Natural.impar(): boolean;
begin
  result:=valor mod 2<>0;
end;

function Natural.primo(): boolean;
var
  i,c:integer;
begin
  c:=0;
  for i:=1 to valor do
    begin
      if(valor mod i=0)then
        c:=c+1;
    end;
  result:=c=2;
end;

function Natural.binario(): string;
begin
  result:=baseN(2);
end;

function Natural.octal(): string;
begin
  result:=baseN(8);
end;

function Natural.hexadecimal(): string;
begin
  result:=baseN(16);
end;

function Natural.baseN(base: integer): string;
const
  letras='0123456789ABCDEF';
var
  aux,res:string;
  num,r:integer;
begin
  num:=valor;
  res:='';
  while(num<>0)do
    begin
      r:=num mod base;
      res:=letras[r+1]+res;
      num:=num div base;
    end;
  result:=res;
end;

function Natural.romano(): string;
var
  num:integer;
  res:string;
begin
  num:=valor;
  res:='';
  while(num>=1000)do
    begin
      res:=res+'M';
      num:=num-1000;
    end;
  while(num>=900)do
    begin
      res:=res+'CM';
      num:=num-900;
    end;
  while(num>=500)do
    begin
      res:=res+'D';
      num:=num-500;
    end;
  while(num>=400)do
    begin
      res:=res+'CD';
      num:=num-400;
    end;
  while(num>=100)do
    begin
      res:=res+'C';
      num:=num-100;
    end;
  while(num>=90)do
    begin
      res:=res+'XC';
      num:=num-90;
    end;
  while(num>=50)do
    begin
      res:=res+'L';
      num:=num-50;
    end;
  while(num>=40)do
    begin
      res:=res+'XL';
      num:=num-40;
    end;
  while(num>=10)do
  begin
    res:=res+'X';
    num:=num-10;
  end;

  while(num>=9)do
    begin
      res:=res+'IX';
      num:=num-9;
    end;
  while(num>=5)do
    begin
      res:=res+'V';
      num:=num-5;
    end;
  while(num>=4)do
    begin
      res:=res+'IV';
      num:=num-4;
    end;
  while(num>=1)do
    begin
      res:=res+'I';
      num:=num-1;
    end;
  result:=res;
end;

function Natural.literalNum(): string;
begin
  case valor of
    0:result:='CERO';
    1:result:='UNO';
    2:result:='DOS';
    3:result:='TRES';
    4:result:='CUATRO';
    5:result:='CINCO';
    6:result:='SEIS';
    7:result:='SIETE';
    8:result:='OCHO';
    9:result:='NUEVE';
    10:result:='DIEZ';
  else
    result:='Numero fuera de rango';
  end;
end;

end.
