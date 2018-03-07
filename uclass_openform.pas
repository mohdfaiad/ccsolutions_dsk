unit uclass_openform;

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
    procedure createForm(frm: TForm; size: TBevel);
    procedure createFrm<F: TForm>;
  published
    { published declarations }
  end;

implementation

{ TOpenForm }

procedure TOpenForm.createForm(frm: TForm; size: TBevel);
begin
  if not Assigned(frm) then
  begin
    frm := frm.Create(frm);
    frm.Height := size.Height;
    frm.Width := size.Width;
    frm.Show;
  end
  else
  begin
    frm.WindowState := wsNormal;
  end;
end;

procedure TOpenForm.createFrm<F>;
var
  frm: F;
begin
  Application.createForm(F, frm);
  try
    frm.Show;
  finally
    frm.Release;
  end;
end;

end.
