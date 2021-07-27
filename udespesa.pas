unit uDespesa;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  StdCtrls, DBGrids, DBCtrls;

type

  { TfrmDespesas }

  TfrmDespesas = class(TForm)
    btnPesquisa: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
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
    Panel1: TPanel;
    TABELA: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure btnPesquisaClick(Sender: TObject);
  private

  public

  end;

var
  frmDespesas: TfrmDespesas;

implementation
   uses uzeosglobal;
{$R *.lfm}

{ TfrmDespesas }

procedure TfrmDespesas.btnPesquisaClick(Sender: TObject);
begin
    zeosGlobal.sqlDespesa.Close;
    zeosGlobal.sqlDespesa.SQL.Clear;
    zeosGlobal.sqlDespesa.SQL.Add('select * from DESPESAS');
    zeosGlobal.sqlDespesa.SQL.Add('Where LANCAMENTO like :cPesquisa');
    zeosGlobal.sqlDespesa.SQL.Add('order by LANCAMENTO');
    zeosGlobal.sqlDespesa.ParamByName('cPesquisa').AsString:='%'+edtPesquisa.Text+'%';
    zeosGlobal.sqlDespesa.Prepare;
    zeosGlobal.sqlDespesa.Open;
end;

end.

