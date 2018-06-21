unit class_required_field;

interface

uses
   System.SysUtils, Vcl.Dialogs, Data.DB, FireDAC.Comp.DataSet, Vcl.ExtCtrls,
   System.Variants, System.Classes, Vcl.Imaging.jpeg;


 type

  TCampoRequerido = class

  private

  public
   //--Fun��o para validar os campos Requeridos--------
  class function TratarRequerido(const Dataset: TDataset):Boolean;

  //--Fun��o para validar os campos que n�o foi possivel por requerido---
  //--No entanto � necess�rio ser inseridos para n�o ocorrer erros nos item filhos
  class function TratarRequerido_Master_Detail(const Dataset, DataSet2: TDataset):Boolean;


  end;


implementation

uses
  ufrm_dm;

{ TCampoRequequido }


{ TCampoRequequido }

   //--Fun��o para validar os campos Requeridos--------
 class function TCampoRequerido.TratarRequerido(
  const Dataset: TDataset):Boolean;
var
  i :Integer;
  Campos :TStrings;

begin

  try
    Campos := TStringList.Create;

    for i:=0 to Dataset.Fields.Count-1 do
    begin
      if (Dataset.Fields[i].Required) and (Dataset.Fields[i].AsString=EmptyStr) then
          Campos.Add(' - ' + Dataset.Fields[i].DisplayName);
     end;


    if Trim(Campos.Text) <> '' then
     begin
        ShowMessage('Aten��o, o(s) campo(s) : '+#13 + Campos.Text + 'S�o de preenchimento obrigat�rio ! ');
        Abort
     end;

    finally

      Campos.Free;

    end;

end;

  //--Fun��o para validar os campos que n�o foi possivel por requerido---
  //--No entanto � necess�rio ser inseridos para n�o ocorrer erros nos item filhos
 class function TCampoRequerido.TratarRequerido_Master_Detail(const Dataset, DataSet2: TDataset): Boolean;
var
  i :Integer;
  Campos :TStrings;

begin

  try
    Campos := TStringList.Create;

    for i:=0 to Dataset.Fields.Count-1 do
    begin
      if (Dataset.Fields[i].Required) and (Dataset.Fields[i].AsString=EmptyStr) then
          Campos.Add(' - ' + Dataset.Fields[i].DisplayName);
     end;


    if Trim(Campos.Text) <> '' then
     begin
        ShowMessage('Aten��o, o(s) campo(s) : '+#13 + Campos.Text + 'S�o de preenchimento obrigat�rio ! ');
        Abort
     end;

    finally

      Campos.Free;

    end;
end;


end.
