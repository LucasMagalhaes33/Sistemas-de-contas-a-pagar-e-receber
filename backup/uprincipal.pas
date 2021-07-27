unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation
   uses uCliente, uFornecedor, uBanco, uCartorio, uPlanoConta, uLancamentos, uDespesa, uPagamento, uRecebimento, uRemessa;
{$R *.lfm}

   { TfrmPrincipal }

   procedure TfrmPrincipal.MenuItem2Click(Sender: TObject);
   begin
     frmCliente.ShowModal;
   end;

procedure TfrmPrincipal.MenuItem10Click(Sender: TObject);
begin
   frmDespesas.ShowModal;
end;

procedure TfrmPrincipal.MenuItem11Click(Sender: TObject);
begin
   frmPagamento.ShowModal;
end;

procedure TfrmPrincipal.MenuItem13Click(Sender: TObject);
begin
   frmRecebimento.ShowModal;
end;

procedure TfrmPrincipal.MenuItem14Click(Sender: TObject);
begin

end;

procedure TfrmPrincipal.MenuItem3Click(Sender: TObject);
begin
   frmFornecedor.ShowModal;
end;

procedure TfrmPrincipal.MenuItem4Click(Sender: TObject);
begin
  frmBanco.ShowModal;
end;

procedure TfrmPrincipal.MenuItem5Click(Sender: TObject);
begin
   frmCartorio.ShowModal;
end;

procedure TfrmPrincipal.MenuItem7Click(Sender: TObject);
begin
  frmPlanoConta.ShowModal;
end;

procedure TfrmPrincipal.MenuItem8Click(Sender: TObject);
begin
   frmLancamento.ShowModal;
end;

end.

