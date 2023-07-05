unit Classe.Pessoa;

{$mode ObjFPC}{$H+}

interface

 uses
   SysUtils;

 type

   { TPessoa }

   TPessoa = class
   private
     FNome: String;
     FSalario: Currency;
     procedure SetNome(AValue: String);
     procedure SetSalario(AValue: Currency);
   public
     property Nome: String read FNome write SetNome;
     property Salario: Currency read FSalario write SetSalario;
     function calcularSalario : Currency; virtual;
   end;

implementation

{ TPessoa }

procedure TPessoa.SetNome(AValue: String);
begin
  if AValue = '' then
     raise Exception.Create('Nome não pode ser vazio');
  FNome := AValue;
end;

procedure TPessoa.SetSalario(AValue: Currency);
begin
  if AValue <= 0 then
     raise Exception.Create('Salario não pode ser menor ou igual a zero');
  FSalario := AValue;
end;

function TPessoa.calcularSalario: Currency;
begin
  Result := Salario;
end;

end.

