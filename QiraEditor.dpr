program QiraEditor;

uses
  Vcl.Forms,
  uSQLWizard in 'uSQLWizard.pas' {frmSQLWizard},
  uWizardAmbiente in 'uWizardAmbiente.pas' {frmWizardAmbiente},
  uSQLBuilder in 'uSQLBuilder.pas' {frmSqlBuilder},
  dmDadosConsulta in 'dmDadosConsulta.pas' {dmAcessaDadosConsulta: TDataModule},
  dmSynEditComponents in 'dmSynEditComponents.pas' {DmSynComp: TDataModule},
  BI.FuncoesDisponiveis in '..\Classes\bi\BI.FuncoesDisponiveis.pas',
  assis.strings in '..\..\utils\assis.strings.pas',
  uEnviaSQL in 'uEnviaSQL.pas' {frmEnviarSQL},
  uDWConsts in '..\..\componentes\RestDW\CORE\Source\libs\uDWConsts.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSqlBuilder, frmSqlBuilder);
  Application.CreateForm(TfrmSQLWizard, frmSQLWizard);
  Application.CreateForm(TfrmWizardAmbiente, frmWizardAmbiente);
  Application.CreateForm(TdmAcessaDadosConsulta, dmAcessaDadosConsulta);
  Application.CreateForm(TDmSynComp, DmSynComp);
  Application.CreateForm(TfrmEnviarSQL, frmEnviarSQL);
  Application.Run;
end.
