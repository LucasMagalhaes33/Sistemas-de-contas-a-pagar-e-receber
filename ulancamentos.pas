unit uLancamentos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  StdCtrls, DBGrids, DBCtrls;

type

  { TfrmLancamento }

  TfrmLancamento = class(TForm)
    btnPesquisa: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    edtPesquisa: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    TABELA: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure btnPesquisaClick(Sender: TObject);
  private

  public

  end;

var
  frmLancamento: TfrmLancamento;

implementation
   uses uZeosGlobal;
{$R *.lfm}

{ TfrmLancamento }

procedure TfrmLancamento.btnPesquisaClick(Sender: TObject);
begin
    zeosGlobal.sqlLancamento.Close;
    zeosGlobal.sqlLancamento.SQL.Clear;
    zeosGlobal.sqlLancamento.SQL.Add('select * from LANCAMENTOCONTABIL');
    zeosGlobal.sqlLancamento.SQL.Add('Where CODIGO like :cPesquisa');
    zeosGlobal.sqlLancamento.SQL.Add('order by CODIGO');
    zeosGlobal.sqlLancamento.ParamByName('cPesquisa').AsString:='%'+edtPesquisa.Text+'%';
    zeosGlobal.sqlLancamento.Prepare;
    zeosGlobal.sqlLancamento.Open;
end;

end.

