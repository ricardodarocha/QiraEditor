object frmWizardAmbiente: TfrmWizardAmbiente
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Ajuda interativa do QIRA - Novo ambiente'
  ClientHeight = 371
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    618
    371)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 618
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 36
    ExplicitTop = 8
    object Shape1: TShape
      Left = 572
      Top = 12
      Width = 26
      Height = 23
      Brush.Color = 16777088
    end
    object Label4: TLabel
      Left = 582
      Top = 13
      Width = 14
      Height = 19
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object BitBtn1: TBitBtn
    Left = 535
    Top = 338
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Fechar'
    TabOrder = 1
    ExplicitLeft = 422
    ExplicitTop = 198
  end
  object BitBtn2: TBitBtn
    Left = 454
    Top = 338
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Avan'#231'ar'
    TabOrder = 2
    ExplicitLeft = 341
    ExplicitTop = 198
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 296
    Width = 529
    Height = 233
    ActivePage = tabConfig
    TabOrder = 3
    object tabModelos: TTabSheet
      Caption = 'Modelos...'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object ListView1: TListView
        Left = 13
        Top = 24
        Width = 491
        Height = 166
        Columns = <>
        Items.ItemData = {
          059A0000000400000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
          000345005200500000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF00000000
          084600690072006500620069007200640000000000FFFFFFFFFFFFFFFF000000
          00FFFFFFFF0000000009530051004C0053006500720076006500720000000000
          FFFFFFFFFFFFFFFF00000000FFFFFFFF000000000545007800630065006C00}
        LargeImages = ImageList1
        TabOrder = 0
      end
    end
    object tabConfig: TTabSheet
      Caption = 'Configura'#231#245'es'
      ImageIndex = 1
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Label1: TLabel
        Left = 88
        Top = 51
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'banco de dados'
      end
      object Label2: TLabel
        Left = 123
        Top = 78
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'conex'#227'o'
      end
      object Label3: TLabel
        Left = 124
        Top = 105
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'usu'#225'rios'
      end
      object Label5: TLabel
        Left = 22
        Top = 136
        Width = 102
        Height = 13
        Alignment = taRightJustify
        Caption = 'disponibilizar modelos'
      end
      object Bevel1: TBevel
        Left = 130
        Top = 143
        Width = 359
        Height = 2
      end
      object ComboBox1: TComboBox
        Left = 170
        Top = 48
        Width = 145
        Height = 21
        TabOrder = 0
        Items.Strings = (
          'Novo...')
      end
      object ComboBox2: TComboBox
        Left = 170
        Top = 75
        Width = 145
        Height = 21
        TabOrder = 1
        Items.Strings = (
          'Novo...')
      end
      object ComboBox3: TComboBox
        Left = 170
        Top = 102
        Width = 145
        Height = 21
        TabOrder = 2
        Items.Strings = (
          'Novo...')
      end
      object ComboBox4: TComboBox
        Left = 170
        Top = 155
        Width = 145
        Height = 21
        TabOrder = 3
        Text = 'diversos bancos'
        Items.Strings = (
          'Novo...')
      end
    end
  end
  object ListBox1: TListBox
    Left = 88
    Top = 104
    Width = 393
    Height = 145
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Titillium Web'
    Font.Style = []
    ItemHeight = 19
    Items.Strings = (
      'Configurar uma empresa'
      'Conex'#227'o do banco de dados'
      'Tabelas e entidades'
      'Lista de Fun'#231#245'es'
      '____________________________________________________'
      'Criar uma nova consulta SQL')
    ParentFont = False
    TabOrder = 4
  end
  object ImageList1: TImageList
    Height = 64
    Width = 64
    Left = 168
    Top = 296
  end
end
