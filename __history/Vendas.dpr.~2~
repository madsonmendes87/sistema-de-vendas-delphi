program Vendas;

uses
  Vcl.Forms,
  unitPrincipal in 'src\view\unitPrincipal.pas' {Form1},
  unitDMConexao in 'src\model\conexao\unitDMConexao.pas' {dmConexao: TDataModule},
  unitDMCidades in 'src\model\cidades\unitDMCidades.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
