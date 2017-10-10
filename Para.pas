unit Para;
interface
uses SysUtils;
// ver 1.0  1996
Function param (Number :Double):String;


implementation
Function param (Number :Double):String;
var
   Text :Array [0..9,0..1] of String;
   Sy,
   Syt,
   S    :String;
Function Oku(Deg:String):String;
VAR
    B1,B2,B3:String;
    P:Integer;
begin
        try
        B1 := Text[strToInt(copy(Deg, 3, 1)), 0];
        B2 := Text[strToInt(Copy(Deg, 2, 1)), 1];
        P := strToInt(Copy(Deg, 1, 1));
        except
        end;
        IF P > 1 THEN
           b3 := Text[P, 0] + 'Yüz'
           ELSE IF P = 1 THEN b3 := 'Yüz' ELSE b3 := '';
        Oku := b3 + B2 + B1;
end;
begin
   Text[0, 0] :='';
   Text[1, 0] := 'Bir';
   Text[2, 0] := 'Ýki';
   Text[3, 0] := 'Üç';
   Text[4, 0] := 'Dört';
   Text[5, 0] := 'Beþ';
   Text[6, 0] := 'Altý';
   Text[7, 0] := 'Yedi';
   Text[8, 0] := 'Sekiz';
   Text[9, 0] := 'Dokuz';
   Text[1, 1] := 'On';
   Text[2, 1] := 'Yirmi';
   Text[3, 1] := 'Otuz';
   Text[4, 1] := 'Kýrk';
   Text[5, 1] := 'Elli';
   Text[6, 1] := 'Altmýþ';
   Text[7, 1] := 'Yetmiþ';
   Text[8, 1] := 'Seksen';
   Text[9, 1] := 'Doksan';
if Number<=0 then
   begin
   Result:='';
   exit;
   end;
 S := FormatFloat('0',Number);
 S:='000000000000000' + S;
 S := copy(S,length(s)-14,15);
 Sy := '';
 syt := '';
{Boluk$ := MID$(S$, 13, 3):  Bolok Boluk$, Sy$, Text$()}
syt := Oku(copy(S, 13, 3));
IF Oku(copy(S, 10, 3)) <> '' THEN
 IF strToInt(copy(S, 10, 3)) = 1 THEN
   syt := 'Bin' +Syt
 ELSE
    syt := Oku(copy(S, 10, 3))+'Bin' +Syt;
IF Oku(copy(S, 7, 3)) <> '' THEN
   syt := Oku(copy(S, 7, 3))+'Milyon' + Syt;
IF Oku(copy(S, 4, 3)) <> '' THEN
   syt := Oku(copy(S, 4, 3))+'Milyar' + Syt;
IF Oku(copy(S, 1, 3)) <> '' THEN
   syt := Oku(copy(S, 7, 3))+'Trilyon' + Syt;
param := syt;
END;
end.
