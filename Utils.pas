unit Utils;

interface

function StrZero( Valor : string; Len: integer ): string;
function Replicate(Txt: string; Len: integer): string;

implementation

function StrZero( Valor : string; Len: integer ): string;
var
  I : Integer;
  lInvalidCharFound : Boolean;
  lResult						: string;

begin
  lResult := Valor;

  if Valor <> '' then
  begin
    i := 1;
    repeat
      lInvalidCharFound := not(Valor[i] in ['0','1','2','3','4','5','6','7','8','9']);
      i := i + 1;
    until (lInvalidCharFound) or (i > Length(Valor));

    if not lInvalidCharFound then
      while Length(lResult) < Len do
        lResult := '0' + lResult;
  end;

  Result := lResult;
end;

function Replicate(Txt: string; Len: integer): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Len do Result := Result + Txt;
end;

end.
