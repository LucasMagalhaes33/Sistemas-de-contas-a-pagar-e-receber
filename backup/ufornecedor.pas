unit uFornecedor;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  StdCtrls, DBGrids, DBCtrls;

type

  { TfrmFornecedor }

  TfrmFornecedor = class(TForm)
    btnPesquisa: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    edtPesquisa: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    TABELA: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure btnPesquisaClick(Sender: TObject);
  private

  public

  end;

var
  frmFornecedor: TfrmFornecedor;

implementation
   uses uzeosglobal;
{$R *.lfm}

{ TfrmFornecedor }

procedure TfrmFornecedor.btnPesquisaClick(Sender: TObject);
begin
    zeosGlobal.sqlFornecedor.Close;
    zeosGlobal.sqlFornecedor.SQL.Clear;
    zeosGlobal.sqlFornecedor.SQL.Add('select * from FORNECEDORES');
    zeosGlobal.sqlFornecedor.SQL.Add('Where NOME like :cPesquisa');
    zeosGlobal.sqlFornecedor.SQL.Add('order by NOME');
    zeosGlobal.sqlFornecedor.ParamByName('cPesquisa').AsString:='%'+edtPesquisa.Text+'%';
    zeosGlobal.sqlFornecedor.Prepare;
    zeosGlobal.sqlFornecedor.Open;
end;

end.

