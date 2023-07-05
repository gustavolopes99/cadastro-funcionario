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
    function calcularSalario : Currency; override;
  end;

implementation

{ TAdministrativo }

procedure TAdministrativo.SetBonus(AValue: Currency);
begin
  if FBonus=AValue then Exit;
  FBonus:=AValue;
end;

function TAdministrativo.calcularSalario: Currency;
begin
  Result := Salario + Bonus;
end;

end.

