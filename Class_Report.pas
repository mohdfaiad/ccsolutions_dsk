unit Class_Report;

interface

 uses
    System.SysUtils, Vcl.Dialogs, Data.DB, FireDAC.Comp.DataSet, Vcl.ExtCtrls,
    System.Variants, System.Classes, Vcl.Imaging.jpeg, ufrm_dm,FireDAC.Comp.Client;


 type

  TReport = class

  private

  public

  class function Save_Report(const Contrato: Integer; const Name, Report, Param: string; DataSet: TFDQuery): Boolean;
  class function Read_Report(const Name, Param: string; DataSet: TFDQuery): TMemoryStream;


  end;



implementation

{ TReport }


class function TReport.Read_Report(const Name, Param: string; DataSet: TFDQuery): TMemoryStream;
 var
   vStream:TMemoryStream;
begin

     DataSet.Close;
     DataSet.Open;      
     DataSet.Locate(DataSet.Fields[3].FieldName,Name,[loCaseInsensitive, loPartialKey]);
     vStream :=TMemoryStream.Create;
     TBlobField(DataSet.fieldbyname(Param)).savetostream( vStream );
     vStream.Position :=0;
     Result := vStream;

end;

class function TReport.Save_Report(const Contrato: Integer; const Name, Report, Param: string; DataSet: TFDQuery): Boolean;
var
   i :Integer;
   sArq:TStream;
   mMem:TMemoryStream;
begin       
  try       
    mMem:=TMemoryStream.Create;
    sArq:= TFileStream.Create(Report,fmOpenRead);
    sArq.Position:=0;

    mMem.LoadFromStream(sArq);

    DataSet.Open;
    DataSet.Append;

    for i:=0 to DataSet.Fields.Count-1 do
     begin
      if (DataSet.Fields[i].Index = 1) then
         (DataSet.Fields[i].Value := Contrato);
      if (DataSet.Fields[i].Index = 2) then
         (DataSet.Fields[i].Value := Name); 
     end;

    TBlobField(DataSet.FieldByName(Param)).LoadFromStream(mMem);

    DataSet.Post;
    DataSet.ApplyUpdates(0);

    ShowMessage('Relatório salvo com sucesso !');

   finally
    FreeAndNil(mMem);
    FreeAndNil(sArq);
   end;  
end;

end.
