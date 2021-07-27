unit uzeosglobal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ZConnection,
  ZDataset;

type

  { TzeosGlobal }

  TzeosGlobal = class(TForm)
    DszRemessa: TDataSource;
    DszRecebimento: TDataSource;
    DszDespesa: TDataSource;
    DszLancamento: TDataSource;
    DszPlanoConta: TDataSource;
    DszCartorio: TDataSource;
    DszBanco: TDataSource;
    DszFornecedor: TDataSource;
    DszCliente: TDataSource;
    sqlBancoAGENCIA: TStringField;
    sqlBancoCIDADE: TStringField;
    sqlBancoCODIGO: TLongintField;
    sqlBancoENDERECO: TStringField;
    sqlBancoGERENTE: TStringField;
    sqlBancoNOME: TStringField;
    sqlBancoTELEFONE: TStringField;
    sqlCartorioCODIGO: TLongintField;
    sqlCartorioGERENTE: TStringField;
    sqlCartorioNOME: TStringField;
    sqlCartorioTELEFONE: TStringField;
    sqlClienteBAIRRO: TStringField;
    sqlClienteCEP: TStringField;
    sqlClienteCIDADE: TStringField;
    sqlClienteCODIGO: TLongintField;
    sqlClienteENDERECO: TStringField;
    sqlClienteNOME: TStringField;
    sqlClienteTELEFONE: TStringField;
    sqlClienteUF: TStringField;
    sqlDespesaCODIGO: TLongintField;
    sqlDespesaDATALANCAMENTO: TStringField;
    sqlDespesaDATAPREVISTA: TStringField;
    sqlDespesaDESCRICAO: TStringField;
    sqlDespesaLANCAMENTO: TStringField;
    sqlDespesaPAGAMENTO: TStringField;
    sqlDespesaVALORPREVISTO: TStringField;
    sqlFornecedorBAIRRO: TStringField;
    sqlFornecedorCEP: TStringField;
    sqlFornecedorCIDADE: TStringField;
    sqlFornecedorCODIGO: TLongintField;
    sqlFornecedorENDERECO: TStringField;
    sqlFornecedorNOME: TStringField;
    sqlFornecedorTELEFONE: TStringField;
    sqlFornecedorUF: TStringField;
    sqlLancamentoCODIGO: TLongintField;
    sqlLancamentoCONTACREDITO: TStringField;
    sqlLancamentoCONTADEBITO: TStringField;
    sqlLancamentoDESCRICAO: TStringField;
    sqlLancamentoVALOR: TStringField;
    sqlPlanoContaCODIGO: TLongintField;
    sqlPlanoContaCREDITO: TStringField;
    sqlPlanoContaDATA: TStringField;
    sqlPlanoContaDEBITO: TStringField;
    sqlPlanoContaDESCRICAO: TStringField;
    sqlPlanoContaSTATUS: TStringField;
    sqlPlanoContaVALOR: TStringField;
    sqlRecebimentoCODIGO: TLongintField;
    sqlRecebimentoDATAEMISSAO: TStringField;
    sqlRecebimentoDATARECEBIMENTO: TStringField;
    sqlRecebimentoDATAVENCIMENTO: TStringField;
    sqlRecebimentoNOMECLIENTE: TStringField;
    sqlRecebimentoNOMETITULO: TStringField;
    sqlRecebimentoVALIDADEDESC: TStringField;
    sqlRecebimentoVALIDADETITULO: TStringField;
    sqlRecebimentoVALORACRES: TStringField;
    sqlRecebimentoVALORDESC: TStringField;
    sqlRemessaBAIXA: TStringField;
    sqlRemessaCARTORIO: TStringField;
    sqlRemessaCODIGO: TLongintField;
    sqlRemessaNUMEROTITULO: TStringField;
    sqlRemessaPROTESTO: TStringField;
    sqlRemessaREMESSA: TStringField;
    sqlRemessaTELEFONE: TStringField;
    zConexao: TZConnection;
    sqlCliente: TZQuery;
    sqlFornecedor: TZQuery;
    sqlBanco: TZQuery;
    sqlCartorio: TZQuery;
    sqlPlanoConta: TZQuery;
    sqlLancamento: TZQuery;
    sqlDespesa: TZQuery;
    sqlRecebimento: TZQuery;
    sqlRemessa: TZQuery;
  private

  public

  end;

var
  zeosGlobal: TzeosGlobal;

implementation

{$R *.lfm}

end.

