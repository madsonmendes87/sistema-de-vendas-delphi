unit unitCadastrarCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadastrarCidades: TformCadastrarCidades;

implementation

{$R *.dfm}

end.
