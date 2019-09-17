object frmSQLWizard: TfrmSQLWizard
  Left = 0
  Top = 0
  Caption = 'Editor SQL'
  ClientHeight = 595
  ClientWidth = 950
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 754
    Top = 0
    Height = 595
    Align = alRight
    ExplicitLeft = 846
    ExplicitTop = -16
    ExplicitHeight = 467
  end
  object Splitter2: TSplitter
    Left = 185
    Top = 0
    Height = 595
    ExplicitLeft = 692
    ExplicitTop = -56
    ExplicitHeight = 467
  end
  object PnLateral: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 595
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object pnAmbiente: TPanel
      Left = 0
      Top = 0
      Width = 185
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        Left = 167
        Top = 35
        Width = 12
        Height = 13
        Caption = '...'
      end
      object Label1: TLabel
        Left = 16
        Top = 13
        Width = 45
        Height = 13
        Caption = 'Ambiente'
      end
      object cbAmbiente: TComboBox
        Left = 16
        Top = 32
        Width = 145
        Height = 21
        TabOrder = 0
        OnChange = cbAmbienteChange
        Items.Strings = (
          'Novo...'
          'Desenvolvimento'
          'Implanta'#231#227'o'
          'Experimental')
      end
    end
    object pnRecenteSQL: TPanel
      Left = 0
      Top = 64
      Width = 185
      Height = 124
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 1
      Visible = False
      object btnConsulta5: TSpeedButton
        AlignWithMargins = True
        Left = 1
        Top = 99
        Width = 183
        Height = 22
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Ambiente'
        Flat = True
        ExplicitLeft = 80
        ExplicitTop = 8
        ExplicitWidth = 23
      end
      object btnConsulta4: TSpeedButton
        AlignWithMargins = True
        Left = 1
        Top = 77
        Width = 183
        Height = 22
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Ambiente'
        Flat = True
        ExplicitLeft = 2
        ExplicitTop = 9
      end
      object btnConsulta3: TSpeedButton
        AlignWithMargins = True
        Left = 1
        Top = 55
        Width = 183
        Height = 22
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Ambiente'
        Flat = True
        ExplicitLeft = 2
        ExplicitTop = 9
      end
      object btnConsulta2: TSpeedButton
        AlignWithMargins = True
        Left = 1
        Top = 33
        Width = 183
        Height = 22
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Ambiente'
        Flat = True
        ExplicitLeft = 2
        ExplicitTop = 9
      end
      object btnConsulta1: TSpeedButton
        AlignWithMargins = True
        Left = 1
        Top = 11
        Width = 183
        Height = 22
        Margins.Left = 0
        Margins.Top = 10
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Ambiente'
        Flat = True
        ExplicitLeft = 2
        ExplicitTop = 9
      end
      object SpeedButton10: TSpeedButton
        Left = 162
        Top = -2
        Width = 23
        Height = 21
        Caption = 'x'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object mPrompt: TMemo
      Left = 0
      Top = 285
      Width = 185
      Height = 310
      Align = alClient
      ParentColor = True
      TabOrder = 2
    end
    object ListBox1: TListBox
      Left = 0
      Top = 188
      Width = 185
      Height = 97
      Align = alTop
      ItemHeight = 13
      Items.Strings = (
        'shortcut1'
        'shortcut2'
        'shortcut3'
        'shortcut4')
      PopupMenu = PopupMenu1
      TabOrder = 3
      Visible = False
    end
  end
  object pnClient: TPanel
    Left = 188
    Top = 0
    Width = 566
    Height = 595
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      566
      595)
    object lbNOmeconsulta: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 10
      Width = 560
      Height = 29
      Margins.Top = 10
      Align = alTop
      Alignment = taCenter
      Caption = 'Nome da consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Titillium Web'
      Font.Style = []
      ParentFont = False
      OnClick = lbNOmeconsultaClick
      ExplicitWidth = 145
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 20
      Top = 45
      Width = 543
      Height = 16
      Margins.Left = 20
      Align = alTop
      Caption = 'Ambiente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Titillium Web'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 46
    end
    object SpeedButton2: TSpeedButton
      Left = 496
      Top = 30
      Width = 67
      Height = 32
      Anchors = [akTop, akRight]
      Caption = 'ajuda'
      Flat = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 523
      Top = 3
      Width = 23
      Height = 21
      Anchors = [akTop, akRight]
      Caption = 'x'
    end
    object SpeedButton4: TSpeedButton
      Left = 497
      Top = 3
      Width = 23
      Height = 21
      Anchors = [akTop, akRight]
      Caption = 's'
    end
    object Label5: TLabel
      Left = 176
      Top = 224
      Width = 150
      Height = 13
      Caption = 'selecione uma consulta recente'
      OnClick = ExibirConsultasRecentes
    end
    object Splitter3: TSplitter
      Left = 0
      Top = 472
      Width = 566
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 64
      ExplicitWidth = 283
    end
    object SpeedButton11: TSpeedButton
      Left = 468
      Top = 30
      Width = 23
      Height = 32
      Anchors = [akTop, akRight]
      Caption = '>'
      Flat = True
    end
    object SynEdit2: TSynEdit
      Left = 0
      Top = 64
      Width = 566
      Height = 408
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      TabOrder = 0
      CodeFolding.CollapsedLineColor = clGrayText
      CodeFolding.FolderBarLinesColor = clGrayText
      CodeFolding.ShowCollapsedLine = True
      CodeFolding.IndentGuidesColor = clGray
      CodeFolding.IndentGuides = True
      UseCodeFolding = False
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWindowText
      Gutter.Font.Height = -11
      Gutter.Font.Name = 'Courier New'
      Gutter.Font.Style = []
      Highlighter = DmSynComp.SynSQLSyn1
      Lines.Strings = (
        
          '"select e.PRODUTO, p.NOME, p.GRUPO, g.NOME NOMEGRUPO, e.TOTALBRU' +
          'TO , e.*, e.produto, p.nome, p.posicao, pd.numero, pd.nf'
        'from estoque e'
        'left join produto p on (p.codigo=e.produto)'
        'left join pedido pd on (pd.id=e.linkid)'
        'left join produtogrp g on (g.codigo = p.grupo)'
        'where e.data = current_date and e.es='#39'S'#39
        'and LINKCTR = '#39'V'#39
        'order by e.PRODUTO"')
      SearchEngine = DmSynComp.SynEditSearch1
      WantTabs = True
      FontSmoothing = fsmNone
    end
    object edtNomeConsulta: TEdit
      Left = 6
      Top = 7
      Width = 51
      Height = 32
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Titillium Web'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'edtNomeConsulta'
      Visible = False
      OnExit = edtNomeConsultaExit
      OnKeyPress = edtNomeConsultaKeyPress
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 475
      Width = 566
      Height = 120
      Align = alBottom
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel1: TPanel
    Left = 757
    Top = 0
    Width = 193
    Height = 595
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
    object Label6: TLabel
      Left = 0
      Top = 26
      Width = 193
      Height = 38
      Margins.Left = 20
      Align = alTop
      AutoSize = False
      Caption = 'Ambiente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Titillium Web'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 193
      Height = 26
      Align = alTop
      TabOrder = 0
      DesignSize = (
        193
        26)
      object SpeedButton1: TSpeedButton
        Left = 162
        Top = 0
        Width = 24
        Height = 23
        Anchors = [akTop, akRight]
        Caption = '...'
        Flat = True
      end
      object ComboBox2: TComboBox
        Left = 1
        Top = 1
        Width = 155
        Height = 21
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        Items.Strings = (
          'Novo...')
      end
    end
    object SynEdit1: TSynEdit
      Left = 0
      Top = 64
      Width = 193
      Height = 531
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      TabOrder = 1
      CodeFolding.CollapsedLineColor = clGrayText
      CodeFolding.FolderBarLinesColor = clGrayText
      CodeFolding.ShowCollapsedLine = True
      CodeFolding.IndentGuidesColor = clGray
      CodeFolding.IndentGuides = True
      UseCodeFolding = False
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWindowText
      Gutter.Font.Height = -11
      Gutter.Font.Name = 'Courier New'
      Gutter.Font.Style = []
      Highlighter = DmSynComp.SynSQLSyn1
      Lines.Strings = (
        
          '"select e.PRODUTO, p.NOME, p.GRUPO, g.NOME NOMEGRUPO, e.TOTALBRU' +
          'TO , e.*, e.produto, p.nome, p.posicao, pd.numero, pd.nf'
        'from estoque e'
        'left join produto p on (p.codigo=e.produto)'
        'left join pedido pd on (pd.id=e.linkid)'
        'left join produtogrp g on (g.codigo = p.grupo)'
        'where e.data = current_date and e.es='#39'S'#39
        'and LINKCTR = '#39'V'#39
        'order by e.PRODUTO"')
      ReadOnly = True
      FontSmoothing = fsmNone
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 80
    Top = 288
    object Editar1: TMenuItem
      Caption = 'Editar'
    end
    object Abrircomomodelo1: TMenuItem
      Caption = 'Abrir como modelo...'
    end
  end
  object MainMenu1: TMainMenu
    Left = 472
    Top = 304
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
    end
  end
end
