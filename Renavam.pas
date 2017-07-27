unit Renavam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StrUtils, Math, Utils;

type
  TRenavam = class
  private

  public
    class function ValidaRenavam(pRenavam: String): Boolean;
  end;

implementation

class function TRenavam.ValidaRenavam(pRenavam: String): Boolean;
var
  i                       : Integer;
  soma                    : Integer;
  algarismo               : Integer;
  multiplicador           : Integer;
  ultimoDigitoCalculado   : Integer;
  digitoRealInformado     : Integer;
  renavamSemVerificador   : String;
  renavamReversoSemDigito : String;
begin
   // Pegando como exemplo o renavam = 639884962
  try
    // Se o renavam esta no formato antigo com 9 digitos, complento com zero esquerda 00639884962
    if (Length(pRenavam) = 9) then
      pRenavam := strZero(pRenavam, 11);

    // Se o renavam não tiver 11 digitos, retorno como incorreto.
    if (Length(pRenavam) <> 11) then
      abort;

    // Verifico se o número de renavam é 00000000000, 11111111111... e retorno como incorreto.
    for i := 0 to 8 do
      if (pRenavam = Replicate(IntToStr(i), 11)) then
        abort;

    // Multiplica os primeiros 8 de 10 digitos do número reverso do renavam pelos números multiplicadores.
    // Exemplo: Renavam reverso sem digito = 6948893600
    // 6, 9, 4, 8, 8, 9, 3, 6
    // * * * * * * * *
    // 2, 3, 4, 5, 6, 7, 8, 9 (números multiplicadores - sempre os mesmos [fixo])
    // 12 + 27 + 16 + 40 + 48 + 63 + 24 + 54
    // soma = 284
    renavamSemVerificador   := Copy(pRenavam, 0, 10);
    renavamReversoSemDigito := ReverseString(renavamSemVerificador);

    soma := 0;

    for i := 0 to 7 do
    begin
      algarismo     := StrToInt(renavamReversoSemDigito[i + 1]);
      multiplicador := i + 2;
      soma          := soma + (algarismo * multiplicador);
    end;

    soma := soma + StrToInt(renavamReversoSemDigito[9])  * 2;
    soma := soma + StrToInt(renavamReversoSemDigito[10]) * 3;

    // Faz-se a conta 11 (valor fixo) - mod11 = 11 - 9 = 2
    ultimoDigitoCalculado := 11 - (soma mod 11);

    // ultimoDigito = Caso o valor calculado anteriormente seja 10 ou 11, transformo ele em 0 caso contrario, é o próprio número.
    ultimoDigitoCalculado := IfThen((ultimoDigitoCalculado >= 10), 0, ultimoDigitoCalculado);

    // Pego o último digito do renavam original (para confrontar com o calculado).
    digitoRealInformado := StrToInt(pRenavam[Length(pRenavam)]);

    // Comparando os digitos calculado e informado.
    Result := (ultimoDigitoCalculado = digitoRealInformado);

  except
    Result := False;
  end;
end;

end.
