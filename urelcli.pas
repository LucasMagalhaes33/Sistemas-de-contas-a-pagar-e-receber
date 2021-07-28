unit uRelCli;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, RLReport,
  LR_Class, LR_DBSet;

type

  { TfrmRelCli }

  TfrmRelCli = class(TForm)
    Button1: TButton;
    DsRelCli: TfrDBDataSet;
    rptRelCli: TfrReport;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  frmRelCli: TfrmRelCli;

implementation
   uses uzeosglobal;
{$R *.lfm}

   { TfrmRelCli }

   procedure TfrmRelCli.Button1Click(Sender: TObject);
   begin
        rptRelCli.LoadFromFile('relcli.lrf');
        rptRelCli.PrepareReport;
        rptRelCli.ShowReport;
   end;

{ TfrmRelCli }
end.

