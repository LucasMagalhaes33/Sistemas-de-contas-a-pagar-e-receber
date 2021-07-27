unit uPlanoConta;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  StdCtrls, DBGrids, DBCtrls;

type

  { TfrmPlanoConta }

  TfrmPlanoConta = class(TForm)
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
  frmPlanoConta: TfrmPlanoConta;

implementation
   uses uzeosglobal;
{$R *.lfm}

{ TfrmPlanoConta }

procedure TfrmPlanoConta.btnPesquisaClick(Sender: TObject);
begin
    zeosGlobal.sqlPlanoConta.Close;
    zeosGlobal.sqlPlanoConta.SQL.Clear;
    zeosGlobal.sqlPlanoConta.SQL.Add('select * from PLANOCONTA');
    zeosGlobal.sqlPlanoConta.SQL.Add('Where DATA like :cPesquisa');
    zeosGlobal.sqlPlanoConta.SQL.Add('order by DATA');
    zeosGlobal.sqlPlanoConta.ParamByName('cPesquisa').AsString:='%'+edtPesquisa.Text+'%';
    zeosGlobal.sqlPlanoConta.Prepare;
    zeosGlobal.sqlPlanoConta.Open;
end;

end.

