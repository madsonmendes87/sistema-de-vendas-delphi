unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TformPrincipal = class(TForm)
    menuPrincipal: TMainMenu;
    Cadastro1: TMenuItem;
    Movimentaes1: TMenuItem;
    Financeiro1: TMenuItem;
    Fiscal1: TMenuItem;
    Empresas1: TMenuItem;
    Cidades1: TMenuItem;
    Pessoas1: TMenuItem;
    Subgrupodeprodutos1: TMenuItem;
    Produtos1: TMenuItem;
    Vendas1: TMenuItem;
    ContasaReceber1: TMenuItem;
    Configuraes1: TMenuItem;
    NFCe1: TMenuItem;
    procedure Cidades1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses unitCidades;


procedure TformPrincipal.Cidades1Click(Sender: TObject);

var
   formCidades: TformCidades;

begin
    formCidades :=TformCidades.Create(nil);

    try
        formCidades.ShowModal;
    finally
        FreeAndNil(formCidades);
    end;


//    application.CreateForm(TformCidades, formCidades);
//    formCidades.ShowModal;
end;

end.
