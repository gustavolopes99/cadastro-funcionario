unit classe.vendedor;

{$mode ObjFPC}{$H+}

interface

uses
  Classe.Pessoa;

type

 { TVendedor }

 TVendedor = class(TPessoa)
 private
   FComissao: Currency;
   procedure SetComissao(AValue: Currency);
   public
     property Comissao: Currency read FComissao write SetComissao;
 end;

implementation

{ TVendedor }

procedure TVendedor.SetComissao(AValue: Currency);
begin
  if AValue <= 0 then
     raise Exception.Create('Comissão não pode ser vazia ou menor que zero');
  FComissao:=AValue;
end;

end.

