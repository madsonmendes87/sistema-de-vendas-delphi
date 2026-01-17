program Vendas;

uses
  Vcl.Forms,
  unitPrincipal in 'src\view\unitPrincipal.pas' {formPrincipal},
  unitDMConexao in 'src\model\conexao\unitDMConexao.pas' {dmConexao: TDataModule},
  unitDMCidades in 'src\model\cidades\unitDMCidades.pas' {dmCidades: TDataModule},
  unitCidades in 'src\view\unitCidades.pas' {formCidades};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TdmCidades, dmCidades);
  Application.Run;
end.
