program PagarReceber;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, zcomponent, uPrincipal, uzeosglobal, uCliente, uFornecedor, uBanco,
  uCartorio, uPlanoConta, uLancamentos, uDespesa, uPagamento, uRecebimento,
  uRemessa, uRelCli
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TzeosGlobal, zeosGlobal);
  Application.CreateForm(TfrmCliente, frmCliente);
  Application.CreateForm(TfrmFornecedor, frmFornecedor);
  Application.CreateForm(TfrmBanco, frmBanco);
  Application.CreateForm(TfrmCartorio, frmCartorio);
  Application.CreateForm(TfrmPlanoConta, frmPlanoConta);
  Application.CreateForm(TfrmLancamento, frmLancamento);
  Application.CreateForm(TfrmDespesas, frmDespesas);
  Application.CreateForm(TfrmPagamento, frmPagamento);
  Application.CreateForm(TfrmRecebimento, frmRecebimento);
  Application.CreateForm(TfrmRemessa, frmRemessa);
  Application.CreateForm(TfrmRelCli, frmRelCli);
  Application.Run;
end.

