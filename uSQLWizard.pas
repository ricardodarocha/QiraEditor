unit uSQLWizard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  SynEdit, SynEditHighlighter, SynHighlighterSQL, Vcl.Menus, Data.DB, Vcl.Grids,
  Vcl.DBGrids, SynCompletionProposal, dmSynEditComponents, uSQLBuilder;

type

  TAmbiente = class
    ID: String;                   //
    Nome: String;                 //  --> cadastro de ambientes
    Descricao: String;            //
    Empresa: Integer;             {FK --> Cadastro de empresas}
    UsuarioCodigo: Integer;       {FK --> Cadastro de usuários}
    UsuarioID: String;            {FK --> ID do usuário}
    UsuarioNome: String;
    ConexaoNome: String;          
    ConexaoCodigo: String;        {FK --> Cadastro de conexao}
    BD: Integer;                  {FK --> Cadastro de bancos de dados}
    Alias: String;
  end;

  TfrmSQLWizard = class(TForm)
    PnLateral: TPanel;
    pnClient: TPanel;
    Splitter1: TSplitter;
    lbNOmeconsulta: TLabel;
    Label4: TLabel;
    pnAmbiente: TPanel;
    Label2: TLabel;
    cbAmbiente: TComboBox;
    Label1: TLabel;
    Panel1: TPanel;
    Label6: TLabel;
    Splitter2: TSplitter;
    Panel2: TPanel;
    ComboBox2: TComboBox;
    SpeedButton1: TSpeedButton;
    SynEdit1: TSynEdit;
    SynEdit2: TSynEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    pnRecenteSQL: TPanel;
    btnConsulta5: TSpeedButton;
    btnConsulta4: TSpeedButton;
    btnConsulta3: TSpeedButton;
    btnConsulta2: TSpeedButton;
    btnConsulta1: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Label5: TLabel;
    edtNomeConsulta: TEdit;
    mPrompt: TMemo;
    ListBox1: TListBox;
    PopupMenu1: TPopupMenu;
    Editar1: TMenuItem;
    Abrircomomodelo1: TMenuItem;
    DBGrid1: TDBGrid;
    Splitter3: TSplitter;
    SpeedButton11: TSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    procedure ExibirConsultasRecentes(Sender: TObject);
    procedure cbAmbienteChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure lbNOmeconsultaClick(Sender: TObject);
    procedure edtNomeConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeConsultaExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure CriarNovoAmbiente;
    procedure AbrirAmbienteDesenv;
    procedure AbrirAmbienteImplantação;
    procedure  AbrirAmbienteTestes;
  public
    { Public declarations }
  end;

var
  frmSQLWizard: TfrmSQLWizard;

implementation

{$R *.dfm}

procedure TfrmSQLWizard.AbrirAmbienteDesenv;
begin
  
end;

procedure TfrmSQLWizard.AbrirAmbienteImplantação;
begin

end;

procedure TfrmSQLWizard.AbrirAmbienteTestes;
begin

end;

procedure TfrmSQLWizard.cbAmbienteChange(Sender: TObject);
begin
  case cbAmbiente.ItemIndex of
    0: {Novo} CriarNovoAmbiente;
    1: {Desenvolvimento} AbrirAmbienteDesenv;
    2: {Implantação} AbrirAmbienteImplantação;
    3: {Experimental} AbrirAmbienteTestes;
  end;
end;

procedure TfrmSQLWizard.CriarNovoAmbiente;
begin

end;

procedure TfrmSQLWizard.edtNomeConsultaExit(Sender: TObject);
begin
  edtNomeConsulta.Visible := False;
end;

procedure TfrmSQLWizard.edtNomeConsultaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13  then
    Perform(WM_NEXTDLGCTL,0,0)
  
end;

procedure TfrmSQLWizard.ExibirConsultasRecentes(Sender: TObject);
begin
  pnRecenteSQL.Visible := true;
end;

procedure TfrmSQLWizard.FormActivate(Sender: TObject);
begin
  DmSynComp.SynCompletionProposal1.Editor :=SynEdit1;
end;

procedure TfrmSQLWizard.lbNOmeconsultaClick(Sender: TObject);
begin
edtNomeconsulta.Visible := true;
edtNomeConsulta.Text := lbNOmeconsulta.Caption;
edtNomeConsulta.Width := lbNOmeconsulta.Width - 50;
edtNomeConsulta.SetFocus;
end;

procedure TfrmSQLWizard.SpeedButton2Click(Sender: TObject);
begin
  frmSqlBuilder.SynEdit1.Text := SynEdit1.Text;
  frmSqlBuilder.Show;
end;

end.
