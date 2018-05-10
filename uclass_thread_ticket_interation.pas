unit uclass_thread_ticket_interation;

interface

uses
  System.Classes, FireDAC.Comp.Client;

type
  TTicket_Interaction = class(TThread)
  private

  protected
    procedure Execute; override;
  public

  published

  end;

implementation

{ TTicket_Interaction }

procedure TTicket_Interaction.Execute;
begin
  inherited;
  Priority := tpLower;
end;

end.
