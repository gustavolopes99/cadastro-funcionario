unit View.Principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Classe.Pessoa, classe.vendedor, classe.administrativo;

type
  TEnumFuncao = (tpAdministrativo, tpVendedor, tpFuncionario);

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    edtSalario: TEdit;
    cbFuncao: TComboBox;
    edtNome: TEdit;
    edtBonus: TEdit;
    Label1: TLabel;
    LabelNome: TLabel;
    LabelSalario: TLabel;
    LabelBonus: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public
    Funcionario : Array[1..100] of TPessoa;
    QtdFunc : Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  try
    case TEnumFuncao(cbFuncao.ItemIndex) of
     tpAdministrativo :
       begin
         Funcionario[QtdFunc] := TAdministrativo.Create;
          TAdministrativo(Funcionario[QtdFunc]).Bonus := StrToCurr(edtBonus.Text);
          TAdministrativo(Funcionario[QtdFunc]).Nome := edtNome.Text;
          TAdministrativo(Funcionario[QtdFunc]).Salario := StrToCurr(edtSalario.Text);
       end;
     tpVendedor :
       begin
         Funcionario[QtdFunc] := TVendedor.Create;
          TVendedor(Funcionario[QtdFunc]).Comissao := StrToCurr(edtBonus.Text);
          TVendedor(Funcionario[QtdFunc]).Nome := edtNome.Text;
          TVendedor(Funcionario[QtdFunc]).Salario := StrToCurr(edtSalario.Text);
       end;
     tpFuncionario :
       begin
         Funcionario[QtdFunc] := TPessoa.Create;
          Funcionario[QtdFunc].Nome := edtNome.Text;
          Funcionario[QtdFunc].Salario := StrToCurr(edtSalario.Text);
       end;
    end;
    Inc(QtdFunc);
  except
    raise Exception.Create('Erro ao cadastrar funcionario');
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  QtdFunc := 0;
end;

end.

