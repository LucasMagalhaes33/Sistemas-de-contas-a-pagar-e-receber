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
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
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
   rptRelCli.
   end;

{ TfrmRelCli }
end.

