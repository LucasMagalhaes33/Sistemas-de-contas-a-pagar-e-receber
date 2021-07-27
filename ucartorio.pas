unit uCartorio;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  StdCtrls, DBGrids, DBCtrls;

type

  { TfrmCartorio }

  TfrmCartorio = class(TForm)
    btnPesquisa: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    edtPesquisa: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    TABELA: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure btnPesquisaClick(Sender: TObject);
  private

  public

  end;

var
  frmCartorio: TfrmCartorio;

implementation
   uses uzeosGlobal;
{$R *.lfm}

{ TfrmCartorio }

procedure TfrmCartorio.btnPesquisaClick(Sender: TObject);
begin
    zeosGlobal.sqlCartorio.Close;
    zeosGlobal.sqlCartorio.SQL.Clear;
    zeosGlobal.sqlCartorio.SQL.Add('select * from CARTORIO');
    zeosGlobal.sqlCartorio.SQL.Add('Where NOME like :cPesquisa');
    zeosGlobal.sqlCartorio.SQL.Add('order by NOME');
    zeosGlobal.sqlCartorio.ParamByName('cPesquisa').AsString:='%'+edtPesquisa.Text+'%';
    zeosGlobal.sqlCartorio.Prepare;
    zeosGlobal.sqlCartorio.Open;
end;

end.

