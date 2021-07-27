unit uRecebimento;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  StdCtrls, DBGrids, DBCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnPesquisa: TButton;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
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
    Label10: TLabel;
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
  Form1: TForm1;

implementation
   uses uzeosglobal;
{$R *.lfm}

{ TForm1 }

procedure TForm1.btnPesquisaClick(Sender: TObject);
begin
    zeosGlobal.sqlRecebimento.Close;
    zeosGlobal.sqlRecebimento.SQL.Clear;
    zeosGlobal.sqlRecebimento.SQL.Add('select * from RECEBIMENTO');
    zeosGlobal.sqlRecebimento.SQL.Add('Where NOMECLIENTE like :cPesquisa');
    zeosGlobal.sqlRecebimento.SQL.Add('order by NOMECLIENTE');
    zeosGlobal.sqlRecebimento.ParamByName('cPesquisa').AsString:='%'+edtPesquisa.Text+'%';
    zeosGlobal.sqlRecebimento.Prepare;
    zeosGlobal.sqlRecebimento.Open;
end;

end.

