unit uBanco;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  StdCtrls, DBGrids, DBCtrls;

type

  { TfrmBanco }

  TfrmBanco = class(TForm)
    btnPesquisa: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
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
  frmBanco: TfrmBanco;

implementation
     uses uzeosglobal;
{$R *.lfm}

{ TfrmBanco }

procedure TfrmBanco.btnPesquisaClick(Sender: TObject);
begin
    zeosGlobal.sqlBanco.Close;
    zeosGlobal.sqlBanco.SQL.Clear;
    zeosGlobal.sqlBanco.SQL.Add('select * from BANCO');
    zeosGlobal.sqlBanco.SQL.Add('Where NOME like :cPesquisa');
    zeosGlobal.sqlBanco.SQL.Add('order by NOME');
    zeosGlobal.sqlBanco.ParamByName('cPesquisa').AsString:='%'+edtPesquisa.Text+'%';
    zeosGlobal.sqlBanco.Prepare;
    zeosGlobal.sqlBanco.Open;
end;

end.

