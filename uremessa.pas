unit uRemessa;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  StdCtrls, DBGrids, DBCtrls;

type

  { TfrmRemessa }

  TfrmRemessa = class(TForm)
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
  frmRemessa: TfrmRemessa;

implementation
   uses uzeosglobal;
{$R *.lfm}

{ TfrmRemessa }

procedure TfrmRemessa.btnPesquisaClick(Sender: TObject);
begin
    zeosGlobal.sqlRemessa.Close;
    zeosGlobal.sqlRemessa.SQL.Clear;
    zeosGlobal.sqlRemessa.SQL.Add('select * from REMESSA');
    zeosGlobal.sqlRemessa.SQL.Add('Where REMESSA like :cPesquisa');
    zeosGlobal.sqlRemessa.SQL.Add('order by REMESSA');
    zeosGlobal.sqlRemessa.ParamByName('cPesquisa').AsString:='%'+edtPesquisa.Text+'%';
    zeosGlobal.sqlRemessa.Prepare;
    zeosGlobal.sqlRemessa.Open;
end;

end.

