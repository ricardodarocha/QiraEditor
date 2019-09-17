object DmSynComp: TDmSynComp
  OldCreateOrder = False
  Height = 436
  Width = 654
  object SynEditSearch1: TSynEditSearch
    Left = 87
    Top = 104
  end
  object SynCompletionProposal1: TSynCompletionProposal
    Options = [scoLimitToMatchedText, scoUsePrettyText, scoUseBuiltInTimer, scoEndCharCompletion, scoCompleteWithTab, scoCompleteWithEnter]
    ItemList.Strings = (
      'current_date'
      'periodo'
      'hoje'
      'hoje.dia'
      'hoje.mes'
      'hoje.ano'
      'ontem'
      'ontem.dia'
      'ontem.mes'
      'ontem.ano'
      'amanha'
      'amanha.dia'
      'amanha.mes'
      'amanha.ano'
      'anoatual.ano'
      'anoquevem.ano'
      'anopassado.ano'
      'mesatual.inicio'
      'mesatual.termino'
      'mesatual.dias'
      'mesatual.diasuteis'
      'proximomes.inicio'
      'proximomes.termino'
      'proximomes.dias'
      'proximomes.diasuteis'
      'mesanterior.inicio'
      'mesanterior.termino'
      'mesanterior.dias'
      'mesanterior.diasuteis'
      
        'hoje.mes-hoje.dia-hoje.ano --data no formato americano mm-dd-yyy' +
        'y'
      
        'hoje.dia.hoje.mes.hoje.ano --data no formato brasileiro dd.mm.yy' +
        'yy'
      'periodoanterior'
      'proximoperiodo'
      'mesanterior.inicio'
      'mesanterior.final'
      'mesanterior.termino'
      'mesanterior.dias'
      'mesanterior.diasuteis '
      'semanaatual.inicio'
      'semanaatual.termino'
      'semanapassada.inicio'
      'semanapassada.termino'
      'proximasemana.inicio'
      'proximasemana.termino'
      'anoatual.inicio'
      'anoatual.final'
      'anopassado.inicio'
      'anopassado.final'
      'anoquevem.inicio'
      'anoquevem.final'
      '_dia(01)'
      '_dia(02)'
      '_dia(03)'
      '_dia(04)'
      '_dia(05)'
      '_dia(06)'
      '_dia(07)'
      '_dia(08)'
      '_dia(09)'
      '_dia(10)'
      '_dia(11)'
      '_dia(12)'
      '_dia(28)'
      '_dia(29)'
      '_dia(30)'
      '_dia(31)'
      'EXTRACT (MONTH FROM ?) '
      'EXTRACT (YEAR FROM ?) '
      'EXTRACT (DAY FROM ?) '
      'EXTRACT (WEEK FROM ?) '
      'SELECT FIRST 1 * FROM '
      'SELECT DISTINCT '
      'COALESCE('
      'BETWEEN periodo '
      'BETWEEN mesatual.inicio and mesatual.termino '
      'BETWEEN anoatual.inicio and anotual.termino '
      'BETWEEN anoatual.inicio and anotual.termino '
      'BETWEEN mesanterior. and anotual.termino ')
    InsertList.Strings = (
      'teste')
    NbLinesInWindow = 20
    EndOfTokenChr = '()[]. '
    TriggerChars = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Consolas'
    Font.Style = []
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBtnText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <>
    ItemHeight = 16
    ShortCut = 16416
    TimerInterval = 300
    Left = 87
    Top = 182
  end
  object SynSQLSyn1: TSynSQLSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    CommentAttri.Foreground = clTeal
    DefaultPackageAttri.Foreground = clHighlight
    FunctionAttri.Foreground = clHotLight
    IdentifierAttri.Foreground = 7340255
    KeyAttri.Foreground = 14248960
    NumberAttri.Foreground = 2239709
    PLSQLAttri.Foreground = clTeal
    SpaceAttri.Foreground = clHotLight
    SQLPlusAttri.Foreground = clHotLight
    StringAttri.Foreground = 5163034
    SymbolAttri.Foreground = 3488234
    SymbolAttri.Style = [fsBold]
    Left = 80
    Top = 48
  end
end
