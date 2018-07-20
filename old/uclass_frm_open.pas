unit uclass_frm_open;

interface

uses
  Vcl.Forms, Vcl.ExtCtrls, System.Classes;

type
  TOpenForm = class(TComponent)
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    procedure openFrm(classFrm: TFormClass; frm: TForm; size: TBevel);
  published
    { published declarations }
  end;

implementation

{ TOpenForm }

procedure TOpenForm.openFrm(classFrm: TFormClass; frm: TForm; size: TBevel);
begin
  if not Assigned(frm) then
  begin
    frm := classFrm.Create(frm);
    frm.Height := size.Height;
    frm.Width := size.Width;
    frm.Show;
  end
  else
  begin
    frm.WindowState := wsNormal;
  end;
end;

end.
