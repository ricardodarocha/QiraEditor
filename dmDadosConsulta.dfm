object dmAcessaDadosConsulta: TdmAcessaDadosConsulta
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 495
  Width = 746
  object DWRest: TDWClientREST
    UseSSL = False
    SSLVersions = []
    UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    ContentEncoding = 'multipart/form-data'
    MaxAuthRetries = 0
    ContentType = 'application/json'
    RequestCharset = esUtf8
    ProxyOptions.BasicAuthentication = False
    ProxyOptions.ProxyPort = 0
    RequestTimeOut = 100000
    AllowCookies = False
    HandleRedirects = False
    RedirectMaximum = 1
    VerifyCert = False
    AuthOptions.HasAuthentication = False
    AccessControlAllowOrigin = '*'
    Left = 32
    Top = 24
  end
  object ReqConexoes: TDWResponseTranslator
    ElementAutoReadRootIndex = False
    ElementRootBaseIndex = -1
    ElementRootBaseName = 'RESULT'
    RequestOpen = rtGet
    RequestInsert = rtPost
    RequestEdit = rtPost
    RequestDelete = rtDelete
    RequestOpenUrl = 
      'http://localhost:8082/api/READOBJECT?psQL=select substr(ID,2,36)' +
      ' ID, Codigo, Nome, Database as DB, Driver, Port, BancoDeDados as' +
      ' CodigoBD From conexao  where Publicar = '#39'True'#39'              '
    FieldDefs = <
      item
        FieldName = 'ID'
        ElementName = 'ID'
        ElementIndex = 0
        FieldSize = 37
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'Codigo'
        ElementName = 'Codigo'
        ElementIndex = 1
        FieldSize = 20
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'Nome'
        ElementName = 'Nome'
        ElementIndex = 2
        FieldSize = 20
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'DB'
        ElementName = 'DB'
        ElementIndex = 3
        FieldSize = 20
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'Driver'
        ElementName = 'Driver'
        ElementIndex = 4
        FieldSize = 20
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'Port'
        ElementName = 'Port'
        ElementIndex = 5
        FieldSize = 20
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'CodigoBD'
        ElementName = 'CodigoBD'
        ElementIndex = 6
        FieldSize = 20
        Precision = 0
        DataType = ovString
        Required = False
      end>
    ClientREST = DWRest
    JSONEditor.Strings = (
      
        '{"result" : [{"ID": "{0D74CA62-3B9F-421F-B74D-246E4735E184}", "C' +
        'odigo": "0", "Nome": "Indefinida", "DB": ".", "Driver": "null", ' +
        '"Port": "null", "CodigoBD": "null"}, {"ID": "{E7A99544-9200-4B85' +
        '-B441-400D0554C130}", "Codigo": "1", "Nome": "PARMASOFT", "DB": ' +
        '"C:\\Dados\\Miguel\\Parmasoft.FDB", "Driver": "FB", "Port": "305' +
        '4", "CodigoBD": "1"}, {"ID": "{E8EAB7C0-B0ED-45E7-921E-837CB6868' +
        'A55}", "Codigo": "2", "Nome": "Precifique", "DB": "null", "Drive' +
        'r": "FB", "Port": "null", "CodigoBD": "2"}, {"ID": "{246FD628-F7' +
        '72-4460-A92E-5754DB432C62}", "Codigo": "3", "Nome": "FATURA", "D' +
        'B": "localhost:D:\\Fatura\\Dados\\DBFatura.FDB", "Driver": "FB",' +
        ' "Port": "null", "CodigoBD": "3"}, {"ID": "{E544BB33-BDB6-49E5-A' +
        '4E6-DAA6CB84EB66}", "Codigo": "4", "Nome": "Sollus", "DB": "null' +
        '", "Driver": "FB", "Port": "null", "CodigoBD": "4"}, {"ID": "{0C' +
        'C9DF14-3C1A-4F25-99B8-9A5A9D05FA5E}", "Codigo": "5", "Nome": "DA' +
        'TAC", "DB": "C:\\dados\\Integracao\\dc\\DATACGESTAO.FDB", "Drive' +
        'r": "FB", "Port": "null", "CodigoBD": "5"}, {"ID": "{E7A99544-92' +
        '00-4B85-B441-400D0554C131}", "Codigo": "6", "Nome": "Teksystem",' +
        ' "DB": "192.168.2.200\/3054:d:\\Tek-system\\dados\\DAdosmc.FDB",' +
        ' "Driver": "FB", "Port": "3054", "CodigoBD": "6"}, {"ID": "{10A1' +
        'D70D-7B36-4A24-A504-828752E48579}", "Codigo": "7", "Nome": "Teks' +
        'ystem", "DB": "192.168.0.253\/3054:\/storage\/firebird\/teksyste' +
        'm\/DADOSMC.FDB", "Driver": "FB", "Port": "null", "CodigoBD": "6"' +
        '}, {"ID": "{6F37CE23-00C0-4402-ACA5-B52A2219D5AD}", "Codigo": "8' +
        '", "Nome": "DATAC Demonstra'#231#227'o", "DB": "C:\\dados\\DATAC\\DATACG' +
        'ESTAO.FDB", "Driver": "FB", "Port": "null", "CodigoBD": "5"}, {"' +
        'ID": "{C471CD55-4234-4900-BBE4-E1E79153ABD0}", "Codigo": "51", "' +
        'Nome": "Teksystem local", "DB": "c:\\dados\\dadosmc.fdb", "Drive' +
        'r": "null", "Port": "null", "CodigoBD": "6"}, {"ID": "{314B59E2-' +
        'FBC6-464D-8390-A486CCEA1BFD}", "Codigo": "52", "Nome": "Parmasof' +
        't Local", "DB": "c:\\Dados\\miguel\\Parmasoft.fdb", "Driver": "F' +
        'B", "Port": "null", "CodigoBD": "1"}, {"ID": "{C9D8F067-63DB-4F3' +
        '3-8086-845602E8F619}", "Codigo": "53", "Nome": "Fatura Local", "' +
        'DB": "null", "Driver": "null", "Port": "null", "CodigoBD": "3"},' +
        ' {"ID": "{8064AD61-E69E-4194-9E2D-64CB195797C3}", "Codigo": "54"' +
        ', "Nome": "DATACLocal", "DB": "asda", "Driver": "FB", "Port": "n' +
        'ull", "CodigoBD": "5"}, {"ID": "{A0B82CCB-40A0-45F9-AACB-A5E2E17' +
        '746D8}", "Codigo": "55", "Nome": "DATACGLocal", "DB": "asda", "D' +
        'river": "FB", "Port": "null", "CodigoBD": "5"}, {"ID": "{2462A0C' +
        '9-EF67-47E4-B16E-A29E73CED969}", "Codigo": "56", "Nome": "Backup' +
        ' Dimetal", "DB": "192.168.0.253\/3054:\/storage\/firebird\/teksy' +
        'stem\/DADOSMC.FDB", "Driver": "FB", "Port": "null", "CodigoBD": ' +
        '"6"}] }')
    Left = 72
    Top = 80
  end
  object DataConexoes: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftString
        Size = 38
      end
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DB'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Driver'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Port'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CodigoBD'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    DWResponseTranslator = ReqConexoes
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 144
    Top = 80
  end
  object reqTabelas: TDWResponseTranslator
    ElementAutoReadRootIndex = False
    ElementRootBaseIndex = -1
    ElementRootBaseName = 'RESULT'
    RequestOpen = rtGet
    RequestInsert = rtPost
    RequestEdit = rtPost
    RequestDelete = rtDelete
    RequestOpenUrl = 
      'http://localhost:8083/api/READMETADATA?KIND=:KIND&SCHEMA=:SCHEMA' +
      '&CATALOG=:CATALOG&TABLENAME=:TABLENAME&PATTERN=:PATTERN'
    FieldDefs = <>
    ClientREST = DWRest
    JSONEditor.Strings = (
      '{'
      '    "PARAMS": [],'
      '    "RESULT": ['
      '        {'
      '            "tablename": "AgendamentoIndicadores"'
      '        },'
      '        {'
      '            "tablename": "Agrupamentos"'
      '        },'
      '        {'
      '            "tablename": "BancoDeDados"'
      '        },'
      '        {'
      '            "tablename": "CardPessoa"'
      '        },'
      '        {'
      '            "tablename": "CenarioIndicadores"'
      '        },'
      '        {'
      '            "tablename": "Cenarios"'
      '        },'
      '        {'
      '            "tablename": "CenariosUsuarios"'
      '        },'
      '        {'
      '            "tablename": "Competencias"'
      '        },'
      '        {'
      '            "tablename": "Conexao"'
      '        },'
      '        {'
      '            "tablename": "Conexao_Defaults"'
      '        },'
      '        {'
      '            "tablename": "ConsultaBD"'
      '        },'
      '        {'
      '            "tablename": "ConsultaConexao"'
      '        },'
      '        {'
      '            "tablename": "ConsultaConexao_Detalhe"'
      '        },'
      '        {'
      '            "tablename": "ConsultaPorPessoa"'
      '        },'
      '        {'
      '            "tablename": "Consultas"'
      '        },'
      '        {'
      '            "tablename": "ConsultaUsuario"'
      '        },'
      '        {'
      '            "tablename": "Contrato"'
      '        },'
      '        {'
      '            "tablename": "Custo"'
      '        },'
      '        {'
      '            "tablename": "Departamentos"'
      '        },'
      '        {'
      '            "tablename": "Empresa"'
      '        },'
      '        {'
      '            "tablename": "EmpresasUsuario"'
      '        },'
      '        {'
      '            "tablename": "Familias"'
      '        },'
      '        {'
      '            "tablename": "Filtros"'
      '        },'
      '        {'
      '            "tablename": "GruposIndicadores"'
      '        },'
      '        {'
      '            "tablename": "Icone"'
      '        },'
      '        {'
      '            "tablename": "IndDetalhePorTipoPessoa"'
      '        },'
      '        {'
      '            "tablename": "IndicadorAgrupamentos"'
      '        },'
      '        {'
      '            "tablename": "IndicadorConsultas"'
      '        },'
      '        {'
      '            "tablename": "IndicadorConsultasDetalhe"'
      '        },'
      '        {'
      '            "tablename": "IndicadorDetalhado"'
      '        },'
      '        {'
      '            "tablename": "Indicadores"'
      '        },'
      '        {'
      '            "tablename": "IndicadorFiltros"'
      '        },'
      '        {'
      '            "tablename": "IndicadorPorPessoa"'
      '        },'
      '        {'
      '            "tablename": "IndicadorUsuario"'
      '        },'
      '        {'
      '            "tablename": "IndicadorVariaveis"'
      '        },'
      '        {'
      '            "tablename": "Leituras"'
      '        },'
      '        {'
      '            "tablename": "LeiturasManuais"'
      '        },'
      '        {'
      '            "tablename": "LoteMetas"'
      '        },'
      '        {'
      '            "tablename": "Medicoes"'
      '        },'
      '        {'
      '            "tablename": "Medicoes2"'
      '        },'
      '        {'
      '            "tablename": "MedicoesPorDia"'
      '        },'
      '        {'
      '            "tablename": "MedicoesPorHora"'
      '        },'
      '        {'
      '            "tablename": "MedicoesPorMinuto"'
      '        },'
      '        {'
      '            "tablename": "MedicoesPorPessoa"'
      '        },'
      '        {'
      '            "tablename": "MetasPorPessoa"'
      '        },'
      '        {'
      '            "tablename": "PainelPorPessoa"'
      '        },'
      '        {'
      '            "tablename": "Pessoas"'
      '        },'
      '        {'
      '            "tablename": "RealizacaoPorPessoa"'
      '        },'
      '        {'
      '            "tablename": "teste"'
      '        },'
      '        {'
      '            "tablename": "TipoConsulta"'
      '        },'
      '        {'
      '            "tablename": "TiposFamilia"'
      '        },'
      '        {'
      '            "tablename": "TiposPessoa"'
      '        },'
      '        {'
      '            "tablename": "Usuarios"'
      '        },'
      '        {'
      '            "tablename": "VARIAVEIS"'
      '        },'
      '        {'
      '            "tablename": "VariaveisCruzadas"'
      '        },'
      '        {'
      '            "tablename": "VariaveisDeAmbiente"'
      '        },'
      '        {'
      '            "tablename": "VariavelConexao"'
      '        },'
      '        {'
      '            "tablename": "_Indicadores"'
      '        }'
      '    ]'
      '}')
    Left = 72
    Top = 136
  end
  object DataTabelas: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftString
        Size = 38
      end
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DB'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Driver'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Port'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CodigoBD'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    DWResponseTranslator = reqTabelas
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 144
    Top = 136
  end
  object reqGeral: TDWResponseTranslator
    ElementAutoReadRootIndex = False
    ElementRootBaseIndex = -1
    ElementRootBaseName = 'RESULT'
    RequestOpen = rtGet
    RequestInsert = rtPost
    RequestEdit = rtPost
    RequestDelete = rtDelete
    RequestOpenUrl = 
      'http://localhost:8082/api/READOBJECT?PSQL=select%20id,%20QUERY a' +
      's MinhaSQL%20from%20Consultas%20where%20codigo%20=112'
    FieldDefs = <>
    ClientREST = DWRest
    JSONEditor.Strings = (
      
        '{"PARAMS":[{"ObjectType":"toParam", "Direction":"odINOUT", "Enco' +
        'ded":"true", "ValueType":"ovString", "USER":""}, {"ObjectType":"' +
        'toParam", "Direction":"odINOUT", "Encoded":"true", "ValueType":"' +
        'ovString", "PSW":""}, {"ObjectType":"toParam", "Direction":"odIN' +
        'OUT", "Encoded":"true", "ValueType":"ovString", "DATA":""}, {"Ob' +
        'jectType":"toParam", "Direction":"odINOUT", "Encoded":"true", "V' +
        'alueType":"ovString", "EMPRESA":""}, {"ObjectType":"toParam", "D' +
        'irection":"odINOUT", "Encoded":"true", "ValueType":"ovString", "' +
        'EMPRESAS":""}, {"ObjectType":"toParam", "Direction":"odINOUT", "' +
        'Encoded":"true", "ValueType":"ovString", "CONEXAO":""}, {"Object' +
        'Type":"toParam", "Direction":"odINOUT", "Encoded":"true", "Value' +
        'Type":"ovString", "CONEXOES":""}, {"ObjectType":"toParam", "Dire' +
        'ction":"odINOUT", "Encoded":"true", "ValueType":"ovString", "CON' +
        'TEXTO":""}], "RESULT":[{"ID": "{918DE773-69E5-4AB5-961D-81AF8AF7' +
        '0AE7}", "minhaSql": "select sum(TotalPedido)TotalPedido, (select' +
        ' sum(TotalPedido) from Pedido     \r\ninner join PESSOA on PESSO' +
        'A.CODIGO = PEDIDO.PESSOA\r\nwhere LANCAMENTO between  \"mesatual' +
        '.inicio\" and current_date\r\nand EMISSAO is null and CTR = '#39'V'#39')' +
        ' TotalVenda\r\nfrom Pedido     \r\ninner join PESSOA on PESSOA.C' +
        'ODIGO = PEDIDO.PESSOA\r\nwhere LANCAMENTO between \"mesatual.ini' +
        'cio\" and current_date \r\nand EMISSAO is not null and CTR = '#39'V'#39 +
        '"}]}')
    Left = 72
    Top = 192
  end
  object Data: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftString
        Size = 37
      end
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DB'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Driver'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Port'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CodigoBD'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Query'
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'MinhaSQL'
        DataType = ftString
        Size = 409
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    DWResponseTranslator = reqGeral
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 144
    Top = 192
  end
  object Consultas: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 280
    Top = 24
  end
  object DebugTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 72
    Top = 248
  end
  object dsConsulta: TDataSource
    DataSet = Consultas
    Left = 304
    Top = 96
  end
  object DataQuery: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    DWResponseTranslator = getQuery
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 64
    Top = 384
    object DataQueryminhaSQL: TStringField
      FieldName = 'minhaSQL'
      Size = 9000
    end
  end
  object getQuery: TDWResponseTranslator
    ElementAutoReadRootIndex = False
    ElementRootBaseIndex = -1
    ElementRootBaseName = 'RESULT'
    RequestOpen = rtGet
    RequestInsert = rtPost
    RequestEdit = rtPost
    RequestDelete = rtDelete
    RequestOpenUrl = 
      'http://localhost:8082/api/READOBJECT?PSQL=select%20id,%20QUERY a' +
      's MinhaSQL%20from%20Consultas%20where%20codigo%20=112'
    FieldDefs = <
      item
        FieldName = 'ID'
        ElementName = 'ID'
        ElementIndex = 0
        FieldSize = 38
        Precision = 0
        DataType = ovString
        Required = False
      end
      item
        FieldName = 'MinhaSQL'
        ElementName = 'MinhaSQL'
        ElementIndex = 1
        FieldSize = 2000
        Precision = 0
        DataType = ovString
        Required = False
      end>
    ClientREST = DWRest
    JSONEditor.Strings = (
      
        '{"PARAMS":[{"ObjectType":"toParam", "Direction":"odINOUT", "Enco' +
        'ded":"true", "ValueType":"ovString", "USER":""}, {"ObjectType":"' +
        'toParam", "Direction":"odINOUT", "Encoded":"true", "ValueType":"' +
        'ovString", "PSW":""}, {"ObjectType":"toParam", "Direction":"odIN' +
        'OUT", "Encoded":"true", "ValueType":"ovString", "DATA":""}, {"Ob' +
        'jectType":"toParam", "Direction":"odINOUT", "Encoded":"true", "V' +
        'alueType":"ovString", "EMPRESA":""}, {"ObjectType":"toParam", "D' +
        'irection":"odINOUT", "Encoded":"true", "ValueType":"ovString", "' +
        'EMPRESAS":""}, {"ObjectType":"toParam", "Direction":"odINOUT", "' +
        'Encoded":"true", "ValueType":"ovString", "CONEXAO":""}, {"Object' +
        'Type":"toParam", "Direction":"odINOUT", "Encoded":"true", "Value' +
        'Type":"ovString", "CONEXOES":""}, {"ObjectType":"toParam", "Dire' +
        'ction":"odINOUT", "Encoded":"true", "ValueType":"ovString", "CON' +
        'TEXTO":""}], "RESULT":[{"ID": "{918DE773-69E5-4AB5-961D-81AF8AF7' +
        '0AE7}", "minhaSql": "select sum(TotalPedido)TotalPedido, (select' +
        ' sum(TotalPedido) from Pedido     \r\ninner join PESSOA on PESSO' +
        'A.CODIGO = PEDIDO.PESSOA\r\nwhere LANCAMENTO between  \"mesatual' +
        '.inicio\" and current_date\r\nand EMISSAO is null and CTR = '#39'V'#39')' +
        ' TotalVenda\r\nfrom Pedido     \r\ninner join PESSOA on PESSOA.C' +
        'ODIGO = PEDIDO.PESSOA\r\nwhere LANCAMENTO between \"mesatual.ini' +
        'cio\" and current_date \r\nand EMISSAO is not null and CTR = '#39'V'#39 +
        '"}]}')
    Left = 64
    Top = 320
  end
  object postSQL: TDWResponseTranslator
    ElementAutoReadRootIndex = True
    ElementRootBaseIndex = -1
    RequestOpen = rtGet
    RequestInsert = rtPost
    RequestEdit = rtPost
    RequestDelete = rtDelete
    RequestInsertUrl = 
      'localhost:8082/api/READOBJECT?pTabela=Consultas&pPk=&pRegistro={' +
      'EC763374-3E1D-4906-861C-C3E2A9F01100}&pJson= {'
    FieldDefs = <>
    ClientREST = DWRest
    Left = 144
    Top = 384
  end
end
