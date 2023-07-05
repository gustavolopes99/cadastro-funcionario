unit classe.administrativo;

{$mode ObjFPC}{$H+}

interface

uses
    Classe.Pessoa;

type

  { TAdministrativo }

  TAdministrativo = class(TPessoa)
  private
    FBonus: Currency;
    procedure SetBonus(AValue: Currency);
  public
    property Bonus: Currency read FBonus write SetBonus;
  end;

implementation

{ TAdministrativo }

procedure TAdministrativo.SetBonus(AValue: Currency);
begin
  if FBonus=AValue then Exit;
  FBonus:=AValue;
end;

end.

