unit class_required_field;

interface

uses
   System.SysUtils, Vcl.Dialogs, Data.DB, FireDAC.Comp.DataSet, Vcl.ExtCtrls,
   System.Variants, System.Classes, Vcl.Imaging.jpeg;


 type

  TCampoRequerido = class

  private

  public
   //--Função para validar os campos Requeridos--------
  class function TratarRequerido(const Dataset: TDataset):Boolean;

  //--Função para validar os campos que não foi possivel por requerido---
  //--No entanto é necessário ser inseridos para não ocorrer erros nos item filhos
  class function TratarRequerido_Master_Detail(const Dataset, DataSet2: TDataset):Boolean;


  end;


implementation

uses
  ufrm_dm;

{ TCampoRequequido }


{ TCampoRequequido }

   //--Função para validar os campos Requeridos--------
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
        ShowMessage('Atenção, o(s) campo(s) : '+#13 + Campos.Text + 'São de preenchimento obrigatório ! ');
        Abort
     end;

    finally

      Campos.Free;

    end;

end;

  //--Função para validar os campos que não foi possivel por requerido---
  //--No entanto é necessário ser inseridos para não ocorrer erros nos item filhos
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
        ShowMessage('Atenção, o(s) campo(s) : '+#13 + Campos.Text + 'São de preenchimento obrigatório ! ');
        Abort
     end;

    finally

      Campos.Free;

    end;
end;


end.
