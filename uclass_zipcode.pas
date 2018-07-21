unit uclass_zipcode;

interface

uses
  System.Classes;

type
  TZipCode = class(TComponent)
  private
    FStreet: string;
    FState: string;
    FZipCode: string;
    FComplement: string;
    FCity: string;
    FAddress: string;
    procedure SetAddress(const Value: string);
    procedure SetCity(const Value: string);
    procedure SetComplement(const Value: string);
    procedure SetState(const Value: string);
    procedure SetStreet(const Value: string);
    procedure SetZipCode(const Value: string);
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property ZipCode: string read FZipCode write SetZipCode;
    property Address: string read FAddress write SetAddress;
    property Street: string read FStreet write SetStreet;
    property Complement: string read FComplement write SetComplement;
    property City: string read FCity write SetCity;
    property State: string read FState write SetState;
  published
    { published declarations }
  end;

  TZipCodeBR = class(TZipCode)
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
  published
    { published declarations }
  end;

implementation

{ TZipCode }

{ TZipCode }

constructor TZipCode.Create;
begin

end;

destructor TZipCode.Destroy;
begin

  inherited;
end;

procedure TZipCode.SetAddress(const Value: string);
begin
  FAddress := Value;
end;

procedure TZipCode.SetCity(const Value: string);
begin
  FCity := Value;
end;

procedure TZipCode.SetComplement(const Value: string);
begin
  FComplement := Value;
end;

procedure TZipCode.SetState(const Value: string);
begin
  FState := Value;
end;

procedure TZipCode.SetStreet(const Value: string);
begin
  FStreet := Value;
end;

procedure TZipCode.SetZipCode(const Value: string);
begin
  FZipCode := Value;
end;

end.
