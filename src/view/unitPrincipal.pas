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
    procedure IniciaTransacao;
    procedure ComitaTransacao;
    procedure DesfazTransacao;
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses unitCidades, unitDMConexao;


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
end;

procedure TformPrincipal.ComitaTransacao;
begin
    if dmConexao.Conexao.InTransaction then
    begin
        try

            dmConexao.Conexao.Commit;

        except
            on E: Exception do
            begin
              ShowMessage('Erro ao comitar transação: ' + E.Message);
              raise;
            end;
        end;
    end;
end;

procedure TformPrincipal.DesfazTransacao;
begin
    if dmConexao.Conexao.InTransaction then
    begin
        try

            dmConexao.Conexao.Rollback;

        except
            on E: Exception do
            begin
              ShowMessage('Erro ao desfazer transação: ' + E.Message);
              raise;
            end;
        end;
    end;
end;

procedure TformPrincipal.IniciaTransacao;
begin
    // Verifica se a conexão esta ativa
    if not dmConexao.Conexao.Connected then
    begin
        try

          dmConexao.Conexao.Connected :=True;

        except
            on E: Exception do
            begin
              ShowMessage('Erro ao conectar ao banco de dados: ' + E.Message);
              raise;
            end;
        end;
    end;

  // Inicia a transação se não estiver ativa
    if not dmConexao.Conexao.InTransaction then
    begin
        try

          dmConexao.Conexao.StartTransaction;

        except
            on E: Exception do
            begin
              ShowMessage('Erro ao iniciar transação: ' + E.Message);
              raise;
            end;
        end;
    end;
end;

end.
