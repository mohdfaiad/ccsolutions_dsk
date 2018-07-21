unit uclass_frm_close;

interface

uses
  Vcl.Forms, System.Classes;

type
  TCloseForm = class(TComponent)
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    procedure closeFrm(frm: TForm);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { published declarations }
  end;

implementation

uses
  System.SysUtils;

{ TCloseForm }

procedure TCloseForm.closeFrm(frm: TForm);
begin
  FreeAndNil(frm);
end;

constructor TCloseForm.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TCloseForm.Destroy;
begin

  inherited;
end;

end.
