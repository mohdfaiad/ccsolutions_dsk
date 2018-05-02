unit Casse.CamposRequerido;

interface

uses
   System.SysUtils, Vcl.Dialogs, Data.DB, FireDAC.Comp.DataSet;

 type

  TCampoRequerido = class

  private

  public

//  class  function TrataRequired(const Que:TDataSet):Boolean;

  class function TratarRequerido(const Dataset: TDataset) :Boolean;

  end;


implementation

uses
  ufrm_dm, System.Variants, System.Classes;

{ TCampoRequequido }


{ TCampoRequequido }


 class function TCampoRequerido.TratarRequerido(
  const Dataset: TDataset): Boolean;
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

      if (Campos.Text<>EmptyStr) then
       begin
         Campos.Insert(0, EmptyStr);
         result := false;
       end
       else
       result := true;

    end;
    if Result = false then
     begin
        ShowMessage('Atenção, o(s) campo(s) : ' + Campos.Text + ' São de preenchimento obrigatório ! ');
        Abort
     end;

    finally

      Campos.Free;

    end;

end;


//---------------------------------------------------------------------

{
class function TCampoRequerido.TrataRequired(const Que: TDataSet): Boolean;
var j:Byte;
    Msg:String;
begin
   Msg:='';
   Result:=False;
   with Que do
   begin
         for j:=0 to FieldCount -1 do
            if  ((Fields[j].Required = True) and  (Fields[j].Value = Null)) then
            begin
                 if Msg <> '' then
                 Msg:=Msg+' - ';
                 Msg:=Msg+Fields[j].DisplayLabel;
            end;
   end;
   if Msg <> '' then
   begin
       ShowMessage('Atenção, o(s) campo(s) :'+ #13+Msg+#13+'Não pode(m)                                                               ficar sem preenchimento');
       Abort;
   end
   else
     Result:=True;
end;   }

end.
