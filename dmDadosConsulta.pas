unit dmDadosConsulta;

interface

uses
  System.SysUtils, System.Classes, uDWAbout, uDWResponseTranslator,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDWConstsData,
  uRESTDWPoolerDB, VCL.Dialogs, IniFiles, assis.strings, uDWConsts;

type
  TdmAcessaDadosConsulta = class(TDataModule)
    DWRest: TDWClientREST;
    ReqConexoes: TDWResponseTranslator;
    DataConexoes: TRESTDWClientSQL;
    reqTabelas: TDWResponseTranslator;
    DataTabelas: TRESTDWClientSQL;
    reqGeral: TDWResponseTranslator;
    Data: TRESTDWClientSQL;
    Consultas: TFDMemTable;
    DebugTable: TFDMemTable;
    dsConsulta: TDataSource;
    DataQuery: TRESTDWClientSQL;
    DataQueryminhaSQL: TStringField;
    getQuery: TDWResponseTranslator;
    postSQL: TDWResponseTranslator;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);

  private
    Servidor1: String;
    Servidor2: String;
    Porta1: String;
    Porta2: String;
    ConexaoPadrao: String;
    function GetConexaoPadrao: Integer;
    procedure ResetData;
  public
    procedure getMetadata(Const Kind: String; TABLANAME: String = '' ; Schema: String = ''; Catalog: String = '' );
    procedure GetData(const SQL: String; const servidor: String);

    function TestarSQL(Const SQL: String): string;


    procedure GET_LISTACONSULTAS(Conexao: Integer);
    function GET_CONSULTASQL(Const ID: String; Conexao: Integer): String;
    function POST_CONSULTASQL(Const ID: String;SQL: String; Conexao: Integer; const Nome: String; const Descricao: String): String;


    /// <summary>
    ///   Realiza uma requisição no HUB LOCAL e retorna todas as conexões de bancos de dados cadastrados para o usuário atual
    /// </summary>
    function GetConexoes: TRestDwClientSql;

    /// <summary>
    ///   Lista as tabelas catalogadas nos metadados atuais
    /// </summary>
    function GetTabelas: TRestDwClientSql;

    /// <summary>
    ///   Lista os campos da tabela atual
    /// </summary>
    function GetCampos(Const TABELA: String): TRestDwClientSql;

    property Conexao: Integer read GetConexaoPadrao;
  end;

var
  dmAcessaDadosConsulta: TdmAcessaDadosConsulta;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmAcessaDadosConsulta }

procedure TdmAcessaDadosConsulta.DataModuleCreate(Sender: TObject);
  var IniFile: TIniFile;
begin
  IniFile   := TIniFile.Create(extractFilePath(paramstr(0))+ 'Config_editor.ini');
  try
  Servidor1 := IniFile.ReadString('Regras','Ip','localhost' );
  Porta1    := IniFile.ReadString('Regras','Porta','8082' );
  ConexaoPadrao := IniFile.ReadString('Regras','Conexao Padrao','9' );
  Servidor2 := IniFile.ReadString('Api','Ip','localhost' );
  Porta2    := IniFile.ReadString('Api','Porta','8083' );
  finally

  freeAndNil(iniFile);
  end;
end;

procedure TdmAcessaDadosConsulta.DataModuleDestroy(Sender: TObject);

  var IniFile: TIniFile;
begin

  IniFile   := TIniFile.Create(extractFilePath(paramstr(0))+ 'Config_editor.ini');
  try
    IniFile.WriteString('Regras','Ip',Servidor1 );
    IniFile.WriteString('Regras','Porta',Porta1);
    IniFile.WriteString('Servidor','Ip',Servidor2 );
    IniFile.WriteString('Servidor','Porta', Porta2);
    IniFile.WriteString('Regras','Conexao Padrao',ConexaoPadrao);
  finally
    freeAndNil(iniFile);
  end;
end;

function TdmAcessaDadosConsulta.GetConexaoPadrao: Integer;
begin
  result := StrToIntDef(ConexaoPadrao, 1);
end;

function TdmAcessaDadosConsulta.GetConexoes: TRestDwClientSql;
begin
  try
    ReqConexoes.RequestOpenUrl := 'http://<HUB>:<PORTA>/api/READOBJECT?psQL=select substr(ID,2,36) ID, Codigo, Nome, Database as DB, Driver, Port, BancoDeDados as CodigoBD From conexao  where Publicar = ''True'' '
      .template('<HUB>', dmAcessaDadosConsulta.SERVIDOR1)
      .template('<PORTA>', dmAcessaDadosConsulta.Porta1);
    DataConexoes.Open;
    DataConexoes.First;
    Result := DataConexoes;
  except
     Result := nil;
  end;
end;

procedure TdmAcessaDadosConsulta.GetData(const SQL: String; const servidor: String);
const REQ = 'http://%s/api/READOBJECT?psQL=%s';
begin
  ResetData;
  reqGERAL.RequestOpenUrl := Format(REQ,[servidor,SQL])
    .template('{', '_abrechave_')
    .template('}', '_fechachave_');
  Data.Open;
  if Data.Active then
  begin
    DebugTable.Close;
    DebugTable.Data := data.Data;
  end;
end;

procedure TdmAcessaDadosConsulta.getMetadata(const Kind: String; TABLANAME,
  Schema, Catalog: String);

  const
//    JSONCONEXAO = 'Conexao={"database":"C:\Dados\Miguel\Parmasoft.FDB","senha":"masterkey","usuario":"SYSDBA","driver":"FB", "vendorhome": "c:\dados\", "vendorlib": "c:\dados\fbclient.dll"}';
    GetMetadata = 'http://%s:%s/api/READMETADATA?KIND=:KIND&SCHEMA=:SCHEMA&CATALOG=:CATALOG&TABLENAME=:TABLENAME&PATTERN=:PATTERN';
  var Step: String;
begin
  if DataTabelas.Active then
    DataTabelas.Close;

  Step := StringReplace( GetMetadata, ':SCHEMA', Schema, []);
    Step := StringReplace( Step, ':CATALOG', Catalog, []);
    Step := StringReplace( Step, ':TABLENAME', TABLANAME, []);
    Step := StringReplace( Step, ':PATTERN', '', []);
    Step := StringReplace( Step, ':KIND', Kind, []);
  reqTabelas.RequestOpenUrl :=  format(Step, [servidor2, porta2]) {+ '&'  + JSONCONEXAO};
  DataTabelas.Open;


end;

function TdmAcessaDadosConsulta.GetTabelas: TRestDwClientSql;
begin
  try
    dmAcessaDadosConsulta.getMetadata('T');
    DataTabelas.First;
    Result := DataTabelas;
  except
     Result := nil;
  end;
end;

function TdmAcessaDadosConsulta.GetCampos(Const TABELA: String): TRestDwClientSql;
begin
  try
    dmAcessaDadosConsulta.getMetadata('F', TABELA);
    DataTabelas.First;
    Result := DataTabelas;
  except
     Result := nil;
  end;
end;

procedure TdmAcessaDadosConsulta.ResetData;
begin
  if Data.Active then
    Data.Close;
  Data.Fields.Clear;
  Data.FieldDefs.Clear;
  reqGEral.FieldDefs.Clear;
end;

function TdmAcessaDadosConsulta.GET_CONSULTASQL(const ID: String;
  Conexao: Integer): String;
    Const SQL = 'select Consultas.QUERY as MinhaSQL from Consultas where ID = ''%s'' and conexao = %d';
    const REQ = 'http://%s/api/READOBJECT?psQL=%s   ';
begin
  ResetData;
  getQuery.RequestOpenUrl := Format(REQ,[servidor1 + ':' + porta1, format(SQL,[ID, Conexao])])
    .template('{', '_abrechave_')
    .template('}', '_fechachave_');
  DataQuery.Open;

  if DataQuery.RecordCount > 0 then
    result := DataQuery.FieldByName('MinhaSQL').AsString
  else
    result := 'Consulta '+'{'+ID+'}'+' desconhecida [conexão: '+inttostr(Conexao)+']';

end;

procedure TdmAcessaDadosConsulta.GET_LISTACONSULTAS(Conexao: Integer);
    Const SQL = 'select Consultas.ID, Consultas.Nome, Consultas.Descricao from Consultas where conexao = %d';
begin
  ResetData;
  GetData(format(SQL,[Conexao]), servidor1 + ':' + porta1);
  if Data.RecordCount > 0 then
  begin
    Consultas.Close;
    Consultas.Data := Data.Data;

    if not Consultas.Active then
    exit;

    Consultas.IndexFieldNames := 'Nome';
    {$REGION 'Popula Lista de consultas'}
//    Consultas.First;
//    while not Consultas.Eof do
//    begin
//      Consultas.Next
//    end;
    {$ENDREGION}
  end
  else
    Showmessage('Nenhuma consulta encontrada');

end;

function TdmAcessaDadosConsulta.POST_CONSULTASQL(Const ID: String;SQL: String; Conexao: Integer; const Nome: String; const Descricao: String): String;
    const P = 'http://<SERVIDOR>/api/READOBJECT?pTabela=Consultas&pPk=<CAMPOS>&pRegistro=<REGISTROS>&pJson={"Query": "<SQL>","Nome": "<Nome>","Descricao": "<Descricao>"}';
begin
  postSQL.RequestEditUrl :=
  P.template('<SERVIDOR>', servidor1 + ':' + porta1)
  .template('<CAMPOS>', 'Conexao|ID')
  .template('<REGISTROS>', IntToStr(Conexao)+'|'+quotedStr(ID))
  .template('<SQL>', SQL)
  .template('<Nome>', SQL)
  .template('<Descricao>', SQL)
  .template(#13, '\n')
  .template(#10, '');

  result := postSQL.Open(rtPost, postSQL.RequestEditUrl);
end;

function TdmAcessaDadosConsulta.TestarSQL(Const SQL: String): string;
begin
  try
    getData(SQL.template(#$A, ' '),  servidor2 + ':' + porta2);
    Result := 'OK';
  except
  on E: Exception do
    Result := e.Message
  end;
end;

end.
