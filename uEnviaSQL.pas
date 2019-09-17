unit uEnviaSQL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  BI.FuncoesDisponiveis;

type
  TMetodoEnviarConsulta = function(Const ID: String;SQL: String; Conexao: Integer; const Nome: String; const Descricao: String): String of object;
  TMetodoTestarConsulta = function(Const SQL: String): String of object;
  TfrmEnviarSQL = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Memo1: TMemo;
    btnOk: TSpeedButton;
    btnCancelar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    MEMOerro: TMemo;
    SpeedButton2: TSpeedButton;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fID: String;
    fConexao: integer;
    fUltimoNomeValido: String;
    fUltimaDescricaoValida: String;
    fDataSource: TDataSource;
    MetodoEnviarConsulta: TMetodoEnviarConsulta;
    MetodoTestarSQL: TMetodoTestarConsulta;

  public
    function SetMetodoEnviar(M: TMetodoEnviarConsulta): TfrmEnviarSql;
    function SetMetodoTestar(M: TMetodoTestarConsulta): TfrmEnviarSql;
    function SetDatasource(Datasource: TDataSource): TfrmEnviarSql;
    function SetSQL(const Conexao: integer; const ID: String; Const SQL: String; const UltimoNomeValido: String; UltimaDescricaoValida: String): TfrmEnviarSql;
  end;

var
  frmEnviarSQL: TfrmEnviarSQL;

implementation

{$R *.dfm}

procedure TfrmEnviarSQL.btnCancelarClick(Sender: TObject);
begin
  modalResult := mrCancel
end;

procedure TfrmEnviarSQL.btnOkClick(Sender: TObject);


var Resposta: String;
begin
  if Assigned(MetodoEnviarConsulta) then
  begin
    Resposta := MetodoEnviarConsulta(fID, memo1.Lines.Text, fConexao, fUltimoNomeValido, fUltimaDescricaoValida);
    if Resposta <> '' then
        modalresult := mrOk else

        begin
          MEMOerro.text := 'Erro de comunicação'#13 + Resposta + #13'Tente novamente em alguns instantes.';
//          modalresult := mrRetry;
        end;

  end;

end;

procedure TfrmEnviarSQL.FormShow(Sender: TObject);
begin
  MEMOerro.Visible := false;
  MemoErro.Clear;
  btnOk.Enabled := false;
end;

function TfrmEnviarSQL.SetDatasource(Datasource: TDataSource): TfrmEnviarSql;
begin
  fDataSource := DataSource;
  result := self;
end;

function TfrmEnviarSQL.SetMetodoEnviar(M: TMetodoEnviarConsulta): TfrmEnviarSql;
begin
  result := self;
  MetodoEnviarConsulta := M;
end;

function TfrmEnviarSQL.SetMetodoTestar(M: TMetodoTestarConsulta): TfrmEnviarSql;
begin
  result := self;
  MetodoTestarSQL := M;
end;

function TfrmEnviarSQL.SetSQL(const Conexao: integer; const ID: String; Const SQL: String; const UltimoNomeValido: String; UltimaDescricaoValida: String): TfrmEnviarSql;
begin
  fConexao := Conexao;
  fID := ID;
  fUltimoNomeValido := UltimoNomeValido;
  fUltimaDescricaoValida := UltimaDescricaoValida;
  Memo1.Lines.Text := SQL;
  result := self;
end;

procedure TfrmEnviarSQL.SpeedButton1Click(Sender: TObject);
  var Resultado: String;
begin
  if assigned(MetodoTestarSQL) then
    Resultado := MetodoTestarSQL(Memo1.Lines.Text)
  else Exit;

  if resultado = 'OK' then
  begin
    BtnOK.Enabled  := true;
    if Assigned(fDataSource) then
      DBGrid1.DataSource := fDatasource;
  end else
  begin
    MEMOerro.Text := Resultado;
    MEMOerro.Visible := true;
    btnOk.Enabled := false;
  end;
end;

end.
