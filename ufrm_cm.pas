unit ufrm_cm;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSClientRest;

type
  Tfrm_cm = class(TDataModule)
    dsrestconn: TDSRestConnection;
  private
    FInstanceOwner: Boolean;
    FmethodsClient: methodsClient;
    function GetmethodsClient: methodsClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property methodsClient: methodsClient read GetmethodsClient write FmethodsClient;

end;

var
  frm_cm: Tfrm_cm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

constructor Tfrm_cm.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor Tfrm_cm.Destroy;
begin
  FmethodsClient.Free;
  inherited;
end;

function Tfrm_cm.GetmethodsClient: methodsClient;
begin
  if FmethodsClient = nil then
    FmethodsClient:= methodsClient.Create(dsrestconn, FInstanceOwner);
  Result := FmethodsClient;
end;

end.
