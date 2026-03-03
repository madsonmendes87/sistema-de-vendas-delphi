unit unitCadastrarCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TformCadastrarCidades = class(TForm)
    labID: TLabel;
    editID: TEdit;
    labelNome: TLabel;
    editNome: TEdit;
    labUF: TLabel;
    Edit3: TEdit;
    labCodIBGE: TLabel;
    DBLookUF: TDBLookupComboBox;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnResetarUF: TSpeedButton;
    qryComboUF: TFDQuery;
    dsComboUF: TDataSource;
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnResetarUFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadastrarCidades: TformCadastrarCidades;

implementation

{$R *.dfm}

uses unitDMConexao;

procedure TformCadastrarCidades.btnGravarClick(Sender: TObject);
begin
    if(Trim(editNome.Text).IsEmpty)then
    begin
        editNome.SetFocus;
        //raise Exception.Create('Campo nome está vazio');
        Application.MessageBox('Campo nome está vazio', 'Cadastrar Cidades',MB_OK + MB_ICONERROR);
        exit;
    end;
end;

procedure TformCadastrarCidades.btnResetarUFClick(Sender: TObject);
begin
    DBLookUF.KeyValue :=Null;
end;

procedure TformCadastrarCidades.FormShow(Sender: TObject);
begin
    qryComboUF.Active   :=true;

end;

end.
