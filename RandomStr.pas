program RandomStr(input, output, stdErr);

{$MODE OBJFPC}{$H+}{$J-}

uses 
SysUtils, Character;

Function RandomString(bNumbers, bSpecialChars, bUpCase, bLowCase: Boolean; iStringLength: Integer):AnsiString;

var 
  iLen, i   : Integer;
  //sRanStr: AnsiString;
  sTable : AnsiString = '';
begin
  Result := '';

  if bNumbers then
    Begin
      i := 48;
      While i <= 57 do
        Begin
          sTable := ConCat(sTable, Chr(i));
          inc(i);
        end;
    end;

  if bSpecialChars then
    Begin
      i := 33;
      While i <= 47 do
        Begin
          sTable := ConCat(sTable, Chr(i));
          inc(i);
        end;
      i := 58;
      While i <= 64 do
        Begin
          sTable := ConCat(sTable, Chr(i));
          inc(i);
        end;
      i := 91;
      While i <= 96 do
        Begin
          sTable := ConCat(sTable, Chr(i));
          inc(i);
        end;
      i := 123;
      While i <= 126 do
        Begin
          sTable := ConCat(sTable, Chr(i));
          inc(i);
        end;
    end;


  if bUpCase then
    Begin
      i := 65;
      While i <= 90 do
        Begin
          sTable := ConCat(sTable, Chr(i));
          inc(i);
        end;
    end;

  if bLowCase then
    Begin
      i := 97;
      While i <= 122 do
        Begin
          sTable := ConCat(sTable, Chr(i));
          inc(i);
        end;
    end;

  Randomize;
  iLen := 0;
  While iLen < iStringLength do
    Begin
      Result := ConCat(Result, sTable[Random(Length(sTable)) + 1]);
      inc(iLen);
    End;
end;



Var 
  i : Longint;
  bNumbers: Boolean = False;
  bSpecialChars: Boolean = False;
  bUpCase: Boolean = False;
  bLowCase: Boolean = False;
  iStrLen: Integer = 0;
begin
  For i:=1 to ParamCount do
    begin
      if pos('num', lowercase(ParamStr(i))) > 0 then
        bNumbers := True
      else if pos('special', lowercase(ParamStr(i))) > 0 then
             bSpecialChars := True
      else if pos('upper', lowercase(ParamStr(i))) > 0 then
             bUpCase := True
      else if pos('low', lowercase(ParamStr(i))) > 0 then
             bLowCase := True
      else if IsNumber(ParamStr(i),1) then
             iStrLen := StrToInt(ParamStr(i))
    end;
  WriteLn(RandomString(bNumbers, bSpecialChars, bUpCase, bLowCase, iStrLen));
end.
