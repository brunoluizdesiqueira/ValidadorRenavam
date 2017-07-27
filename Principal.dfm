object frmPrincipal: TfrmPrincipal
  Left = 860
  Top = 293
  Width = 234
  Height = 141
  Caption = 'Validador de renavam'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 5
    Width = 46
    Height = 13
    Caption = 'Renavam'
  end
  object lblValidacao: TLabel
    Left = 10
    Top = 84
    Width = 106
    Height = 13
    Caption = 'Valida'#231#227'o do renavam'
  end
  object btnValidar: TButton
    Left = 57
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Validar'
    TabOrder = 0
    OnClick = btnValidarClick
  end
  object edtRenavam: TEdit
    Left = 7
    Top = 25
    Width = 205
    Height = 21
    TabOrder = 1
  end
  object btnCancelar: TButton
    Left = 137
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = btnCancelarClick
  end
end
