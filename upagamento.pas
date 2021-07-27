unit uPagamento;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  StdCtrls, DBGrids, DBCtrls;

type

  { TfrmPagamento }

  TfrmPagamento = class(TForm)
    btnPesquisa: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
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
    Label9: TLabel;
    Panel1: TPanel;
    TABELA: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure btnPesquisaClick(Sender: TObject);
  private

  public

  end;

var
  frmPagamento: TfrmPagamento;

implementation
   uses uzeosglobal;
{$R *.lfm}

{ TfrmPagamento }

procedure TfrmPagamento.btnPesquisaClick(Sender: TObject);
begin
    zeosGlobal.sqlPagamento.Close;
    zeosGlobal.sqlPagamento.SQL.Clear;
    zeosGlobal.sqlPagamento.SQL.Add('select * from PAGAMENTO');
    zeosGlobal.sqlPagamento.SQL.Add('Where FORNECEDOR like :cPesquisa');
    zeosGlobal.sqlPagamento.SQL.Add('order by FORNECEDOR');
    zeosGlobal.sqlPagamento.ParamByName('cPesquisa').AsString:='%'+edtPesquisa.Text+'%';
    zeosGlobal.sqlPagamento.Prepare;
    zeosGlobal.sqlPagamento.Open;
end;

end.

