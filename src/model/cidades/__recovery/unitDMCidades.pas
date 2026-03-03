unit unitDMCidades;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmCidades = class(TDataModule)
    qryCidadeCadastro: TFDQuery;
    qryCidadeBusca: TFDQuery;
    dsCidadeCadastro: TDataSource;
    dsCidadeBusca: TDataSource;
    qryCidadeCadastroID: TIntegerField;
    qryCidadeCadastroNOME: TStringField;
    qryCidadeCadastroUF: TStringField;
    qryCidadeCadastroCODIGO_IBGE: TIntegerField;
    qryCidadeBuscaID: TIntegerField;
    qryCidadeBuscaNOME: TStringField;
    qryCidadeBuscaUF: TStringField;
    qryCidadeBuscaCODIGO_IBGE: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCidades: TdmCidades;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unitDMConexao;

{$R *.dfm}

end.
