unit uSQLBuilder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, SynEdit, Vcl.Buttons, SynEditHighlighter,
  SynHighlighterSQL, dmDadosConsulta, SynCompletionProposal, SynEditMiscClasses,
  SynEditSearch, SynEditPlugins, SynMacroRecorder, SynHighlighterURI,
  SynURIOpener, dmSynEditComponents, assis.strings, BI.FuncoesDisponiveis,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins,
  dxSkinsCore, dxSkinsDefaultPainters, dxRibbonCustomizationForm,
  cxFontNameComboBox, cxDropDownEdit, dxRichEdit.Actions, dxActions, dxPrinting,
  dxBar, dxRibbon, dxGallery, dxRibbonGallery, dxRibbonColorGallery,
  cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, cxImageList, dxCore, dxCoreClasses, dxGDIPlusAPI,
  dxGDIPlusClasses, dxRichEdit.NativeApi, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxRichEdit.Control.SpellChecker,
  dxRichEdit.Dialogs.EventArgs, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, dxRichEdit.Control.Core,
  Vcl.DBCGrids,
  Vcl.DBCtrls;

type
  TfrmSqlBuilder = class(TForm)
    Panel1: TPanel;
    TreeView1: TTreeView;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Splitter4: TSplitter;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Splitter5: TSplitter;
    Panel5: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Splitter6: TSplitter;
    Panel6: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Splitter7: TSplitter;
    Label10: TLabel;
    Panel7: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Splitter8: TSplitter;
    Panel8: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Splitter9: TSplitter;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    TreeView2: TTreeView;
    TreeView3: TTreeView;
    DataSource1: TDataSource;
    Splitter10: TSplitter;
    chMencionarTabela: TCheckBox;
    Timer1: TTimer;
    Panel9: TPanel;
    lbNOmeconsulta: TLabel;
    SynEdit1: TSynEdit;
    SynEdit2: TSynEdit;
    CheckBox1: TCheckBox;
    DBGrid2: TDBGrid;
    Splitter11: TSplitter;
    Splitter12: TSplitter;
    edtNomeConsulta: TEdit;
    dxRibbon1: TdxRibbon;
    dxBarManager1: TdxBarManager;
    ActionList1: TActionList;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    dxRichEditControlNewDocument: TdxRichEditControlNewDocument;
    dxRibbonTabFile: TdxRibbonTab;
    dxBarCommon: TdxBar;
    dxBarLargeButtonNew: TdxBarLargeButton;
    dxRichEditControlLoadDocument: TdxRichEditControlLoadDocument;
    dxBarLargeButtonOpen: TdxBarLargeButton;
    dxRichEditControlSaveDocument: TdxRichEditControlSaveDocument;
    dxBarLargeButtonSave: TdxBarLargeButton;
    dxRichEditControlSaveDocumentAs: TdxRichEditControlSaveDocumentAs;
    dxBarLargeButtonSaveAs: TdxBarLargeButton;
    dxRichEditControlPasteSelection: TdxRichEditControlPasteSelection;
    dxRibbonTabHome: TdxRibbonTab;
    dxBarClipboard: TdxBar;
    dxBarLargeButtonPaste: TdxBarLargeButton;
    dxRichEditControlCutSelection: TdxRichEditControlCutSelection;
    dxBarButtonCut: TdxBarButton;
    dxRichEditControlCopySelection: TdxRichEditControlCopySelection;
    dxBarButtonCopy: TdxBarButton;
    dxRichEditControlSelectAll: TdxRichEditControlSelectAll;
    dxBarButtonSelectAll: TdxBarButton;
    dxRichEditControlChangeFontName: TdxRichEditControlChangeFontName;
    dxBarFont: TdxBar;
    cxBarEditItemFont: TcxBarEditItem;
    dxRichEditControlChangeFontSize: TdxRichEditControlChangeFontSize;
    cxBarEditItemFontSize: TcxBarEditItem;
    dxRichEditControlIncreaseFontSize: TdxRichEditControlIncreaseFontSize;
    dxBarButtonGrowFont: TdxBarButton;
    dxRichEditControlDecreaseFontSize: TdxRichEditControlDecreaseFontSize;
    dxBarButtonShrinkFont: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxRichEditControlTextUpperCase: TdxRichEditControlTextUpperCase;
    dxBarLargeButtonUPPERCASE: TdxBarLargeButton;
    dxRichEditControlTextLowerCase: TdxRichEditControlTextLowerCase;
    dxBarLargeButtonlowercase: TdxBarLargeButton;
    dxRichEditControlToggleTextCase: TdxRichEditControlToggleTextCase;
    dxBarLargeButtontOGGLEcASE: TdxBarLargeButton;
    dxRichEditControlToggleFontBold: TdxRichEditControlToggleFontBold;
    dxBarButtonBold: TdxBarButton;
    dxRichEditControlToggleFontItalic: TdxRichEditControlToggleFontItalic;
    dxBarButtonItalic: TdxBarButton;
    dxRichEditControlToggleFontUnderline: TdxRichEditControlToggleFontUnderline;
    dxBarButtonUnderline: TdxBarButton;
    dxRichEditControlToggleFontDoubleUnderline: TdxRichEditControlToggleFontDoubleUnderline;
    dxBarButtonDoubleUnderline: TdxBarButton;
    dxRichEditControlToggleFontStrikeout: TdxRichEditControlToggleFontStrikeout;
    dxBarButtonStrikethrough: TdxBarButton;
    dxRichEditControlToggleFontDoubleStrikeout: TdxRichEditControlToggleFontDoubleStrikeout;
    dxBarButtonDoubleStrikethrough: TdxBarButton;
    dxRichEditControlToggleFontSubscript: TdxRichEditControlToggleFontSubscript;
    dxBarButtonSubscript: TdxBarButton;
    dxRichEditControlToggleFontSuperscript: TdxRichEditControlToggleFontSuperscript;
    dxBarButtonSuperscript: TdxBarButton;
    dxRichEditControlTextHighlight: TdxRichEditControlTextHighlight;
    dxRibbonColorGalleryItemTextHighlightColor: TdxRibbonColorGalleryItem;
    dxRichEditControlChangeFontColor: TdxRichEditControlChangeFontColor;
    dxRibbonColorGalleryItemFontColor: TdxRibbonColorGalleryItem;
    dxRichEditControlToggleBulletedList: TdxRichEditControlToggleBulletedList;
    dxBarParagraph: TdxBar;
    dxBarButtonBullets: TdxBarButton;
    dxRichEditControlToggleSimpleNumberingList: TdxRichEditControlToggleSimpleNumberingList;
    dxBarButtonNumbering: TdxBarButton;
    dxRichEditControlToggleMultiLevelList: TdxRichEditControlToggleMultiLevelList;
    dxBarButtonMultilevellist: TdxBarButton;
    dxRichEditControlDecrementIndent: TdxRichEditControlDecrementIndent;
    dxBarButtonDecreaseIndent: TdxBarButton;
    dxRichEditControlIncrementIndent: TdxRichEditControlIncrementIndent;
    dxBarButtonIncreaseIndent: TdxBarButton;
    dxRichEditControlToggleShowWhitespace: TdxRichEditControlToggleShowWhitespace;
    dxBarButtonShowHide: TdxBarButton;
    dxRichEditControlToggleParagraphAlignmentLeft: TdxRichEditControlToggleParagraphAlignmentLeft;
    dxBarButtonAlignTextLeft: TdxBarButton;
    dxRichEditControlToggleParagraphAlignmentCenter: TdxRichEditControlToggleParagraphAlignmentCenter;
    dxBarButtonCenter: TdxBarButton;
    dxRichEditControlToggleParagraphAlignmentRight: TdxRichEditControlToggleParagraphAlignmentRight;
    dxBarButtonAlignTextRight: TdxBarButton;
    dxRichEditControlToggleParagraphAlignmentJustify: TdxRichEditControlToggleParagraphAlignmentJustify;
    dxBarButtonJustify: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxRichEditControlSetSingleParagraphSpacing: TdxRichEditControlSetSingleParagraphSpacing;
    dxBarLargeButton10: TdxBarLargeButton;
    dxRichEditControlSetSesquialteralParagraphSpacing: TdxRichEditControlSetSesquialteralParagraphSpacing;
    dxBarLargeButton15: TdxBarLargeButton;
    dxRichEditControlSetDoubleParagraphSpacing: TdxRichEditControlSetDoubleParagraphSpacing;
    dxBarLargeButton20: TdxBarLargeButton;
    dxRichEditControlShowParagraphForm: TdxRichEditControlShowParagraphForm;
    dxBarLargeButtonParagraph: TdxBarLargeButton;
    dxRichEditControlQuickStylesGallery: TdxRichEditControlQuickStylesGallery;
    dxBarStyles: TdxBar;
    dxRibbonGalleryItemQuickStyles: TdxRibbonGalleryItem;
    dxRibbonGalleryItemQuickStylesGroup1: TdxRibbonGalleryGroup;
    dxRichEditControlSearchFind: TdxRichEditControlSearchFind;
    dxBarEditing: TdxBar;
    dxBarButtonFind: TdxBarButton;
    dxRichEditControlSearchReplace: TdxRichEditControlSearchReplace;
    dxBarButtonReplace: TdxBarButton;
    dxRichEditControlUndo: TdxRichEditControlUndo;
    dxBarLargeButtonUndo: TdxBarLargeButton;
    dxRichEditControlRedo: TdxRichEditControlRedo;
    dxBarLargeButtonRedo: TdxBarLargeButton;
    dxRichEditControlInsertPageBreak: TdxRichEditControlInsertPageBreak;
    dxRibbonTabInsert: TdxRibbonTab;
    dxBarPages: TdxBar;
    dxBarLargeButtonPage: TdxBarLargeButton;
    dxRichEditControlShowInsertTableForm: TdxRichEditControlShowInsertTableForm;
    dxBarTables: TdxBar;
    dxBarLargeButtonTable: TdxBarLargeButton;
    dxRichEditControlInsertPicture: TdxRichEditControlInsertPicture;
    dxBarIllustrations: TdxBar;
    dxBarLargeButtonInlinePicture: TdxBarLargeButton;
    dxRichEditControlInsertFloatingObjectPicture: TdxRichEditControlInsertFloatingObjectPicture;
    dxBarLargeButtonPicture: TdxBarLargeButton;
    dxRichEditControlShowBookmarkForm: TdxRichEditControlShowBookmarkForm;
    dxBarLinks: TdxBar;
    dxBarLargeButtonBookmark: TdxBarLargeButton;
    dxRichEditControlShowHyperlinkForm: TdxRichEditControlShowHyperlinkForm;
    dxBarLargeButtonHyperlink: TdxBarLargeButton;
    dxRichEditControlEditPageHeader: TdxRichEditControlEditPageHeader;
    dxBarHeaderFooter: TdxBar;
    dxBarLargeButtonHeader: TdxBarLargeButton;
    dxRichEditControlEditPageFooter: TdxRichEditControlEditPageFooter;
    dxBarLargeButtonFooter: TdxBarLargeButton;
    dxRichEditControlInsertPageNumberField: TdxRichEditControlInsertPageNumberField;
    dxBarLargeButtonPageNumber: TdxBarLargeButton;
    dxRichEditControlInsertPageCountField: TdxRichEditControlInsertPageCountField;
    dxBarLargeButtonPageCount: TdxBarLargeButton;
    dxRichEditControlInsertTextBox: TdxRichEditControlInsertTextBox;
    dxBarText: TdxBar;
    dxBarLargeButtonTextBox: TdxBarLargeButton;
    dxRichEditControlShowSymbolForm: TdxRichEditControlShowSymbolForm;
    dxBarSymbols: TdxBar;
    dxBarLargeButtonSymbol: TdxBarLargeButton;
    dxRichEditControlPageMarginsGallery: TdxRichEditControlPageMarginsGallery;
    dxRibbonTabPageLayout: TdxRibbonTab;
    dxBarPageSetup: TdxBar;
    dxRibbonGalleryItemMargins: TdxRibbonGalleryItem;
    dxRibbonGalleryItemMarginsGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemMarginsGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMarginsGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMarginsGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMarginsGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRichEditControlShowPageMarginsSetupForm: TdxRichEditControlShowPageMarginsSetupForm;
    dxBarLargeButtonCustomMargins: TdxBarLargeButton;
    dxBarSubItem3: TdxBarSubItem;
    dxRichEditControlSetPortraitPageOrientation: TdxRichEditControlSetPortraitPageOrientation;
    dxBarLargeButtonPortrait: TdxBarLargeButton;
    dxRichEditControlSetLandscapePageOrientation: TdxRichEditControlSetLandscapePageOrientation;
    dxBarLargeButtonLandscape: TdxBarLargeButton;
    dxRichEditControlPaperSizeGallery: TdxRichEditControlPaperSizeGallery;
    dxRibbonGalleryItemSize: TdxRibbonGalleryItem;
    dxRibbonGalleryItemSizeGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemSizeGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRichEditControlShowPagePaperSetupForm: TdxRichEditControlShowPagePaperSetupForm;
    dxBarLargeButtonMorePaperSizes: TdxBarLargeButton;
    dxBarSubItem4: TdxBarSubItem;
    dxRichEditControlSetSectionOneColumn: TdxRichEditControlSetSectionOneColumn;
    dxBarLargeButtonOne: TdxBarLargeButton;
    dxRichEditControlSetSectionTwoColumns: TdxRichEditControlSetSectionTwoColumns;
    dxBarLargeButtonTwo: TdxBarLargeButton;
    dxRichEditControlSetSectionThreeColumns: TdxRichEditControlSetSectionThreeColumns;
    dxBarLargeButtonThree: TdxBarLargeButton;
    dxRichEditControlShowColumnsSetupForm: TdxRichEditControlShowColumnsSetupForm;
    dxBarLargeButtonMoreColumns: TdxBarLargeButton;
    dxBarSubItem5: TdxBarSubItem;
    dxRichEditControlInsertColumnBreak: TdxRichEditControlInsertColumnBreak;
    dxBarLargeButtonColumn: TdxBarLargeButton;
    dxRichEditControlInsertSectionBreakNextPage: TdxRichEditControlInsertSectionBreakNextPage;
    dxBarLargeButtonSectionNextPage: TdxBarLargeButton;
    dxRichEditControlInsertSectionBreakEvenPage: TdxRichEditControlInsertSectionBreakEvenPage;
    dxBarLargeButtonSectionEvenPage: TdxBarLargeButton;
    dxRichEditControlInsertSectionBreakOddPage: TdxRichEditControlInsertSectionBreakOddPage;
    dxBarLargeButtonSectionOddPage: TdxBarLargeButton;
    dxBarSubItem6: TdxBarSubItem;
    dxRichEditControlSetSectionLineNumberingNone: TdxRichEditControlSetSectionLineNumberingNone;
    dxBarLargeButtonNone: TdxBarLargeButton;
    dxRichEditControlSetSectionLineNumberingContinuous: TdxRichEditControlSetSectionLineNumberingContinuous;
    dxBarLargeButtonContinuous: TdxBarLargeButton;
    dxRichEditControlSetSectionLineNumberingRestartNewPage: TdxRichEditControlSetSectionLineNumberingRestartNewPage;
    dxBarLargeButtonRestartEachPage: TdxBarLargeButton;
    dxRichEditControlSetSectionLineNumberingRestartNewSection: TdxRichEditControlSetSectionLineNumberingRestartNewSection;
    dxBarLargeButtonRestartEachSection: TdxBarLargeButton;
    dxRichEditControlShowLineNumberingForm: TdxRichEditControlShowLineNumberingForm;
    dxBarLargeButtonLineNumberingOptions: TdxBarLargeButton;
    dxRichEditControlChangePageColor: TdxRichEditControlChangePageColor;
    dxBarBackground: TdxBar;
    dxRibbonColorGalleryItemPageColor: TdxRibbonColorGalleryItem;
    dxRichEditControlInsertTableOfContents: TdxRichEditControlInsertTableOfContents;
    dxRibbonTabReferences: TdxRibbonTab;
    dxBarTableofContents: TdxBar;
    dxBarLargeButtonTableofContents: TdxBarLargeButton;
    dxRichEditControlUpdateTableOfContents: TdxRichEditControlUpdateTableOfContents;
    dxBarLargeButtonUpdateTable: TdxBarLargeButton;
    dxRichEditControlAddParagraphsToTableOfContentsPlaceholder: TdxRichEditControlAddParagraphsToTableOfContentsPlaceholder;
    dxBarLargeButtonAddText: TdxBarLargeButton;
    dxRibbonPopupMenu1: TdxRibbonPopupMenu;
    dxRichEditControlTableOfContentsSetParagraphBodyTextLevel: TdxRichEditControlTableOfContentsSetParagraphBodyTextLevel;
    dxBarLargeButtonDoNotShowinTableofContents: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading1Level: TdxRichEditControlTableOfContentsSetParagraphHeading1Level;
    dxBarLargeButtonLevel1: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading2Level: TdxRichEditControlTableOfContentsSetParagraphHeading2Level;
    dxBarLargeButtonLevel2: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading3Level: TdxRichEditControlTableOfContentsSetParagraphHeading3Level;
    dxBarLargeButtonLevel3: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading4Level: TdxRichEditControlTableOfContentsSetParagraphHeading4Level;
    dxBarLargeButtonLevel4: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading5Level: TdxRichEditControlTableOfContentsSetParagraphHeading5Level;
    dxBarLargeButtonLevel5: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading6Level: TdxRichEditControlTableOfContentsSetParagraphHeading6Level;
    dxBarLargeButtonLevel6: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading7Level: TdxRichEditControlTableOfContentsSetParagraphHeading7Level;
    dxBarLargeButtonLevel7: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading8Level: TdxRichEditControlTableOfContentsSetParagraphHeading8Level;
    dxBarLargeButtonLevel8: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading9Level: TdxRichEditControlTableOfContentsSetParagraphHeading9Level;
    dxBarLargeButtonLevel9: TdxBarLargeButton;
    dxRichEditControlInsertCaptionPlaceholder: TdxRichEditControlInsertCaptionPlaceholder;
    dxBarCaptions: TdxBar;
    dxBarLargeButtonInsertCaption: TdxBarLargeButton;
    dxRibbonPopupMenu2: TdxRibbonPopupMenu;
    dxRichEditControlInsertFigureCaption: TdxRichEditControlInsertFigureCaption;
    dxBarLargeButtonFiguresCaption: TdxBarLargeButton;
    dxRichEditControlInsertTableCaption: TdxRichEditControlInsertTableCaption;
    dxBarLargeButtonTablesCaption: TdxBarLargeButton;
    dxRichEditControlInsertEquationCaption: TdxRichEditControlInsertEquationCaption;
    dxBarLargeButtonEquationsCaption: TdxBarLargeButton;
    dxRichEditControlInsertTableOfFiguresPlaceholder: TdxRichEditControlInsertTableOfFiguresPlaceholder;
    dxBarLargeButtonInsertTableofFigures: TdxBarLargeButton;
    dxRibbonPopupMenu3: TdxRibbonPopupMenu;
    dxRichEditControlInsertTableOfFigures: TdxRichEditControlInsertTableOfFigures;
    dxBarLargeButtonTableofFigures: TdxBarLargeButton;
    dxRichEditControlInsertTableOfTables: TdxRichEditControlInsertTableOfTables;
    dxBarLargeButtonTableofTables: TdxBarLargeButton;
    dxRichEditControlInsertTableOfEquations: TdxRichEditControlInsertTableOfEquations;
    dxBarLargeButtonTableofEquations: TdxBarLargeButton;
    dxRichEditControlUpdateTableOfFigures: TdxRichEditControlUpdateTableOfFigures;
    dxBarLargeButtonUpdateTable1: TdxBarLargeButton;
    dxRichEditControlShowInsertMergeFieldForm: TdxRichEditControlShowInsertMergeFieldForm;
    dxRibbonTabMailMerge: TdxRibbonTab;
    dxBarMailMerge: TdxBar;
    dxBarLargeButtonInsertMergeField: TdxBarLargeButton;
    dxRichEditControlShowAllFieldCodes: TdxRichEditControlShowAllFieldCodes;
    dxBarLargeButtonShowAllFieldCodes: TdxBarLargeButton;
    dxRichEditControlShowAllFieldResults: TdxRichEditControlShowAllFieldResults;
    dxBarLargeButtonShowAllFieldResults: TdxBarLargeButton;
    dxRichEditControlToggleViewMergedData: TdxRichEditControlToggleViewMergedData;
    dxBarLargeButtonViewMergedData: TdxBarLargeButton;
    dxRichEditControlCheckSpelling: TdxRichEditControlCheckSpelling;
    dxRibbonTabReview: TdxRibbonTab;
    dxBarProofing: TdxBar;
    dxBarLargeButtonSpelling: TdxBarLargeButton;
    dxRichEditControlProtectDocument: TdxRichEditControlProtectDocument;
    dxBarProtect: TdxBar;
    dxBarLargeButtonProtectDocument: TdxBarLargeButton;
    dxRichEditControlUnprotectDocument: TdxRichEditControlUnprotectDocument;
    dxBarLargeButtonUnprotectDocument: TdxBarLargeButton;
    dxRichEditControlShowRangeEditingPermissions: TdxRichEditControlShowRangeEditingPermissions;
    dxBarLargeButtonRangeEditingPermissions: TdxBarLargeButton;
    dxRichEditControlEncryptDocument: TdxRichEditControlEncryptDocument;
    dxBarLargeButtonEncryptwithPassword: TdxBarLargeButton;
    dxRichEditControlSwitchToSimpleView: TdxRichEditControlSwitchToSimpleView;
    dxRibbonTabView: TdxRibbonTab;
    dxBarDocumentViews: TdxBar;
    dxBarLargeButtonSimpleView: TdxBarLargeButton;
    dxRichEditControlSwitchToDraftView: TdxRichEditControlSwitchToDraftView;
    dxBarLargeButtonDraftView: TdxBarLargeButton;
    dxRichEditControlSwitchToPrintLayoutView: TdxRichEditControlSwitchToPrintLayoutView;
    dxBarLargeButtonPrintLayout: TdxBarLargeButton;
    dxRichEditControlToggleShowHorizontalRuler: TdxRichEditControlToggleShowHorizontalRuler;
    dxBarShow: TdxBar;
    dxBarLargeButtonHorizontalRuler: TdxBarLargeButton;
    dxRichEditControlToggleShowVerticalRuler: TdxRichEditControlToggleShowVerticalRuler;
    dxBarLargeButtonVerticalRuler: TdxBarLargeButton;
    dxRichEditControlZoomOut: TdxRichEditControlZoomOut;
    dxBarZoom: TdxBar;
    dxBarLargeButtonZoomOut: TdxBarLargeButton;
    dxRichEditControlZoomIn: TdxRichEditControlZoomIn;
    dxBarLargeButtonZoomIn: TdxBarLargeButton;
    dxRichEditControlGoToPageHeader: TdxRichEditControlGoToPageHeader;
    dxRibbonTabHeaderFooterDesign: TdxRibbonTab;
    dxBarNavigation: TdxBar;
    dxBarLargeButtonGotoHeader: TdxBarLargeButton;
    dxRichEditControlGoToPageFooter: TdxRichEditControlGoToPageFooter;
    dxBarLargeButtonGotoFooter: TdxBarLargeButton;
    dxRichEditControlGoToNextPageHeaderFooter: TdxRichEditControlGoToNextPageHeaderFooter;
    dxBarLargeButtonShowNext: TdxBarLargeButton;
    dxRichEditControlGoToPreviousPageHeaderFooter: TdxRichEditControlGoToPreviousPageHeaderFooter;
    dxBarLargeButtonShowPrevious: TdxBarLargeButton;
    dxRichEditControlToggleHeaderFooterLinkToPrevious: TdxRichEditControlToggleHeaderFooterLinkToPrevious;
    dxBarLargeButtonLinktoPrevious: TdxBarLargeButton;
    dxRichEditControlToggleDifferentFirstPage: TdxRichEditControlToggleDifferentFirstPage;
    dxBarOptions: TdxBar;
    dxBarLargeButtonDifferentFirstPage: TdxBarLargeButton;
    dxRichEditControlToggleDifferentOddAndEvenPages: TdxRichEditControlToggleDifferentOddAndEvenPages;
    dxBarLargeButtonDifferentOddEvenPages: TdxBarLargeButton;
    dxRichEditControlClosePageHeaderFooter: TdxRichEditControlClosePageHeaderFooter;
    dxBarClose: TdxBar;
    dxBarLargeButtonCloseHeaderandFooter: TdxBarLargeButton;
    dxRichEditControlToggleShowTableGridLines: TdxRichEditControlToggleShowTableGridLines;
    dxRibbonTabTableLayout: TdxRibbonTab;
    dxBarTable: TdxBar;
    dxBarLargeButtonViewGridlines: TdxBarLargeButton;
    dxRichEditControlShowTablePropertiesForm: TdxRichEditControlShowTablePropertiesForm;
    dxBarLargeButtonTableProperties: TdxBarLargeButton;
    dxBarRowColumns: TdxBar;
    dxBarSubItem7: TdxBarSubItem;
    dxRichEditControlShowDeleteTableCellsForm: TdxRichEditControlShowDeleteTableCellsForm;
    dxBarLargeButtonDeleteCells: TdxBarLargeButton;
    dxRichEditControlDeleteTableColumns: TdxRichEditControlDeleteTableColumns;
    dxBarLargeButtonDeleteColumns: TdxBarLargeButton;
    dxRichEditControlDeleteTableRows: TdxRichEditControlDeleteTableRows;
    dxBarLargeButtonDeleteRows: TdxBarLargeButton;
    dxRichEditControlDeleteTable: TdxRichEditControlDeleteTable;
    dxBarLargeButtonDeleteTable: TdxBarLargeButton;
    dxRichEditControlInsertTableRowAbove: TdxRichEditControlInsertTableRowAbove;
    dxBarLargeButtonInsertAbove: TdxBarLargeButton;
    dxRichEditControlInsertTableRowBelow: TdxRichEditControlInsertTableRowBelow;
    dxBarLargeButtonInsertBelow: TdxBarLargeButton;
    dxRichEditControlInsertTableColumnToTheLeft: TdxRichEditControlInsertTableColumnToTheLeft;
    dxBarLargeButtonInsertLeft: TdxBarLargeButton;
    dxRichEditControlInsertTableColumnToTheRight: TdxRichEditControlInsertTableColumnToTheRight;
    dxBarLargeButtonInsertRight: TdxBarLargeButton;
    dxRichEditControlMergeTableCells: TdxRichEditControlMergeTableCells;
    dxBarMerge: TdxBar;
    dxBarLargeButtonMergeCells: TdxBarLargeButton;
    dxRichEditControlShowSplitTableCellsForm: TdxRichEditControlShowSplitTableCellsForm;
    dxBarLargeButtonSplitCells: TdxBarLargeButton;
    dxRichEditControlSplitTable: TdxRichEditControlSplitTable;
    dxBarLargeButtonSplitTable: TdxBarLargeButton;
    dxBarCellSize: TdxBar;
    dxBarSubItem8: TdxBarSubItem;
    dxRichEditControlToggleTableAutoFitContents: TdxRichEditControlToggleTableAutoFitContents;
    dxBarLargeButtonAutoFitContents: TdxBarLargeButton;
    dxRichEditControlToggleTableAutoFitWindow: TdxRichEditControlToggleTableAutoFitWindow;
    dxBarLargeButtonAutoFitWindow: TdxBarLargeButton;
    dxRichEditControlToggleTableFixedColumnWidth: TdxRichEditControlToggleTableFixedColumnWidth;
    dxBarLargeButtonFixedColumnWidth: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsTopLeftAlignment: TdxRichEditControlToggleTableCellsTopLeftAlignment;
    dxBarAlignment: TdxBar;
    dxBarButtonAlignTopLeft: TdxBarButton;
    dxRichEditControlToggleTableCellsTopCenterAlignment: TdxRichEditControlToggleTableCellsTopCenterAlignment;
    dxBarButtonAlignTopCenter: TdxBarButton;
    dxRichEditControlToggleTableCellsTopRightAlignment: TdxRichEditControlToggleTableCellsTopRightAlignment;
    dxBarButtonAlignTopRight: TdxBarButton;
    dxRichEditControlToggleTableCellsMiddleLeftAlignment: TdxRichEditControlToggleTableCellsMiddleLeftAlignment;
    dxBarButtonAlignCenterLeft: TdxBarButton;
    dxRichEditControlToggleTableCellsMiddleCenterAlignment: TdxRichEditControlToggleTableCellsMiddleCenterAlignment;
    dxBarButtonAlignCenter: TdxBarButton;
    dxRichEditControlToggleTableCellsMiddleRightAlignment: TdxRichEditControlToggleTableCellsMiddleRightAlignment;
    dxBarButtonAlignCenterRight: TdxBarButton;
    dxRichEditControlToggleTableCellsBottomLeftAlignment: TdxRichEditControlToggleTableCellsBottomLeftAlignment;
    dxBarButtonAlignBottomLeft: TdxBarButton;
    dxRichEditControlToggleTableCellsBottomCenterAlignment: TdxRichEditControlToggleTableCellsBottomCenterAlignment;
    dxBarButtonAlignBottomCenter: TdxBarButton;
    dxRichEditControlToggleTableCellsBottomRightAlignment: TdxRichEditControlToggleTableCellsBottomRightAlignment;
    dxBarButtonAlignBottomRight: TdxBarButton;
    dxRichEditControlTableStylesGallery: TdxRichEditControlTableStylesGallery;
    dxRibbonTabTableDesign: TdxRibbonTab;
    dxBarTableStyles: TdxBar;
    dxRibbonGalleryItemTableStyles: TdxRibbonGalleryItem;
    dxRibbonGalleryItemTableStylesGroup1: TdxRibbonGalleryGroup;
    dxBarSubItem9: TdxBarSubItem;
    dxRichEditControlToggleTableCellsBottomBorder: TdxRichEditControlToggleTableCellsBottomBorder;
    dxBarLargeButtonBottomBorder: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsTopBorder: TdxRichEditControlToggleTableCellsTopBorder;
    dxBarLargeButtonTopBorder: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsLeftBorder: TdxRichEditControlToggleTableCellsLeftBorder;
    dxBarLargeButtonLeftBorder: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsRightBorder: TdxRichEditControlToggleTableCellsRightBorder;
    dxBarLargeButtonRightBorder: TdxBarLargeButton;
    dxRichEditControlResetTableCellsBorders: TdxRichEditControlResetTableCellsBorders;
    dxBarLargeButtonNoBorder: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsAllBorders: TdxRichEditControlToggleTableCellsAllBorders;
    dxBarLargeButtonAllBorders: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsOutsideBorder: TdxRichEditControlToggleTableCellsOutsideBorder;
    dxBarLargeButtonOutsideBorders: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsInsideBorder: TdxRichEditControlToggleTableCellsInsideBorder;
    dxBarLargeButtonInsideBorders: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsInsideHorizontalBorder: TdxRichEditControlToggleTableCellsInsideHorizontalBorder;
    dxBarLargeButtonInsideHorizontalBorder: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsInsideVerticalBorder: TdxRichEditControlToggleTableCellsInsideVerticalBorder;
    dxBarLargeButtonInsideVerticalBorder: TdxBarLargeButton;
    dxRichEditControlChangeFloatingObjectFillColor: TdxRichEditControlChangeFloatingObjectFillColor;
    dxRibbonTabFormat: TdxRibbonTab;
    dxBarShapeStyles: TdxBar;
    dxRibbonColorGalleryItemShapeFill: TdxRibbonColorGalleryItem;
    dxRichEditControlChangeFloatingObjectOutlineColor: TdxRichEditControlChangeFloatingObjectOutlineColor;
    dxRibbonColorGalleryItemShapeOutline: TdxRibbonColorGalleryItem;
    dxBarArrange: TdxBar;
    dxBarSubItem10: TdxBarSubItem;
    dxRichEditControlSetFloatingObjectSquareTextWrapType: TdxRichEditControlSetFloatingObjectSquareTextWrapType;
    dxBarLargeButtonSquare: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectTightTextWrapType: TdxRichEditControlSetFloatingObjectTightTextWrapType;
    dxBarLargeButtonTight: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectThroughTextWrapType: TdxRichEditControlSetFloatingObjectThroughTextWrapType;
    dxBarLargeButtonThrough: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectTopAndBottomTextWrapType: TdxRichEditControlSetFloatingObjectTopAndBottomTextWrapType;
    dxBarLargeButtonTopandBottom: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectBehindTextWrapType: TdxRichEditControlSetFloatingObjectBehindTextWrapType;
    dxBarLargeButtonBehindText: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectInFrontOfTextWrapType: TdxRichEditControlSetFloatingObjectInFrontOfTextWrapType;
    dxBarLargeButtonInFrontofText: TdxBarLargeButton;
    dxBarSubItem11: TdxBarSubItem;
    dxRichEditControlSetFloatingObjectTopLeftAlignment: TdxRichEditControlSetFloatingObjectTopLeftAlignment;
    dxBarLargeButtonTopLeft: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectTopCenterAlignment: TdxRichEditControlSetFloatingObjectTopCenterAlignment;
    dxBarLargeButtonTopCenter: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectTopRightAlignment: TdxRichEditControlSetFloatingObjectTopRightAlignment;
    dxBarLargeButtonTopRight: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectMiddleLeftAlignment: TdxRichEditControlSetFloatingObjectMiddleLeftAlignment;
    dxBarLargeButtonMiddleLeft: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectMiddleCenterAlignment: TdxRichEditControlSetFloatingObjectMiddleCenterAlignment;
    dxBarLargeButtonMiddleCenter: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectMiddleRightAlignment: TdxRichEditControlSetFloatingObjectMiddleRightAlignment;
    dxBarLargeButtonMiddleRight: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectBottomLeftAlignment: TdxRichEditControlSetFloatingObjectBottomLeftAlignment;
    dxBarLargeButtonBottomLeft: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectBottomCenterAlignment: TdxRichEditControlSetFloatingObjectBottomCenterAlignment;
    dxBarLargeButtonBottomCenter: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectBottomRightAlignment: TdxRichEditControlSetFloatingObjectBottomRightAlignment;
    dxBarLargeButtonBottomRight: TdxBarLargeButton;
    dxBarSubItem12: TdxBarSubItem;
    dxRichEditControlFloatingObjectBringForward: TdxRichEditControlFloatingObjectBringForward;
    dxBarLargeButtonBringForward: TdxBarLargeButton;
    dxRichEditControlFloatingObjectBringToFront: TdxRichEditControlFloatingObjectBringToFront;
    dxBarLargeButtonBringtoFront: TdxBarLargeButton;
    dxRichEditControlFloatingObjectBringInFrontOfText: TdxRichEditControlFloatingObjectBringInFrontOfText;
    dxBarLargeButtonBringinFrontofText: TdxBarLargeButton;
    dxBarSubItem13: TdxBarSubItem;
    dxRichEditControlFloatingObjectSendBackward: TdxRichEditControlFloatingObjectSendBackward;
    dxBarLargeButtonSendBackward: TdxBarLargeButton;
    dxRichEditControlFloatingObjectSendToBack: TdxRichEditControlFloatingObjectSendToBack;
    dxBarLargeButtonSendtoBack: TdxBarLargeButton;
    dxRichEditControlFloatingObjectSendBehindText: TdxRichEditControlFloatingObjectSendBehindText;
    dxBarLargeButtonSendBehindText: TdxBarLargeButton;
    dxRichEditControlShowPrintForm: TdxRichEditControlShowPrintForm;
    dxBarPrint: TdxBar;
    dxBarLargeButtonPrint: TdxBarLargeButton;
    dxRichEditControlShowPrintPreviewForm: TdxRichEditControlShowPrintPreviewForm;
    dxBarLargeButtonPrintPreview: TdxBarLargeButton;
    dxRichEditControlShowPageSetupForm: TdxRichEditControlShowPageSetupForm;
    dxBarLargeButtonPageSetup: TdxBarLargeButton;
    dxRichEditControl1: TdxRichEditControl;
    Splitter13: TSplitter;
    SpeedButton3: TSpeedButton;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    pnBuscarConsulta: TPanel;
    edtBuscaConsulta: TEdit;
    SpeedButton9: TSpeedButton;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Image1: TImage;
    SpeedButton10: TSpeedButton;
    btnLocalizarconsulta: TSpeedButton;
    lbIDCOnsulta: TLabel;
    SpeedButton11: TSpeedButton;
    ImageList1: TImageList;
    lbVersao: TLabel;
    procedure FormShow(Sender: TObject);
    procedure TreeView2Click(Sender: TObject);
    procedure SynEdit1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure SynEdit1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure EnviaCamposSelecionados;
    procedure EnviaTabelaAtual;
    procedure TreeView3DblClick(Sender: TObject);
    procedure DBGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure SynEdit1StatusChange(Sender: TObject; Changes: TSynStatusChanges);
    procedure SynEdit1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure lbNOmeconsultaClick(Sender: TObject);
    procedure edtNomeConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeConsultaExit(Sender: TObject);
    procedure Splitter11Moved(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure btnLocalizarconsultaClick(Sender: TObject);
    procedure edtBuscaConsultaChange(Sender: TObject);
    procedure pnBuscarConsultaResize(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBCtrlGrid1DblClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure edtNomeConsultaChange(Sender: TObject);
  private
    fUltimoNomeValido: String;
    fUltimaDescricaoValida: String;

    {Todo: Evoluir para Dicionarios}
    fMapaDeConexoes: ListaDeStrings;
    fCodigoDeconexoes: ListaDeNumeros;

    procedure AbrirConsulta(Consulta: String; Conexao: integer);

    /// <summary>
    ///   Iterate throught a list of dataset connections available for current user
    /// </summary>
    procedure DesenhaListaConexoes;

    /// <summary>
    ///   Iterate throught a list of TABLES connections available for current SERVER CONNECTION
    /// </summary>
    procedure DesenhaListaTabelas;

    /// <summary>
    ///   Iterate throught a list of FIELDS of current TABLE
    /// </summary>
    procedure MontarListaCampos(const TABELA: String);

    procedure AdicionarAoAutoCOmplete(Const Info: String);
  public
    { Public declarations }
  end;

var
  frmSqlBuilder: TfrmSqlBuilder;

implementation

{$R *.dfm}

uses uEnviaSQL;

procedure TfrmSqlBuilder.AbrirConsulta(Consulta: String; Conexao: integer);
begin
  SynEdit1.Lines.Text := dmAcessaDadosConsulta.GET_CONSULTASQL(Consulta, Conexao);
  if CheckBox1.Checked then
    Timer1Timer(self);
  lbNOmeconsulta.Caption := dmAcessaDadosConsulta.Consultas.FieldByName('Nome').AsString;
  fUltimoNomeValido := dmAcessaDadosConsulta.Consultas.FieldByName('Nome').AsString;

  if dmAcessaDadosConsulta.Consultas.FieldByName('Descricao').AsString = 'Insere uma consulta em branco' then
    fUltimaDescricaoValida := ''
  else
    fUltimaDescricaoValida := dmAcessaDadosConsulta.Consultas.FieldByName('Descricao').AsString;

  lbIDCOnsulta.Caption := dmAcessaDadosConsulta.Consultas.FieldByName('ID').AsString ;
end;

procedure TfrmSqlBuilder.AdicionarAoAutoCOmplete(const Info: String);
begin
  if DmSynComp.SynCompletionProposal1.ItemList.IndexOf(Info)=-1 then
  begin
    DmSynComp.SynCompletionProposal1.ItemList.Add(info);
  end;
end;

procedure TfrmSqlBuilder.btnLocalizarconsultaClick(Sender: TObject);
begin
  pnBuscarConsulta.Visible := true;
  pnBuscarConsulta.Top := 27;
  dmAcessaDadosConsulta.GET_LISTACONSULTAS(dmAcessaDadosConsulta.Conexao);
  dmAcessaDadosConsulta.Consultas.Insert;
  dmAcessaDadosConsulta.Consultas.FieldByName('Nome').AsString := '+ Nova consulta';
  dmAcessaDadosConsulta.Consultas.FieldByName('Descricao').AsString := 'Insere uma consulta em branco';
  dmAcessaDadosConsulta.Consultas.Post;
  dmAcessaDadosConsulta.Consultas.Locate('ID',lbIDConsulta.Caption,[]);
  edtBuscaConsulta.text := '';
  edtBuscaConsulta.Setfocus;

end;

procedure TfrmSqlBuilder.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  Timer1Timer(sender);
end;

procedure TfrmSqlBuilder.DBCtrlGrid1DblClick(Sender: TObject);
begin
  AbrirConsulta(dmAcessaDadosConsulta.Consultas.FieldByName('ID').AsString, dmAcessaDadosConsulta.Conexao);
  pnBuscarConsulta.Visible := false;
end;

procedure TfrmSqlBuilder.DBGrid2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (X < 20) and (Y < 20) then

end;

procedure TfrmSqlBuilder.edtBuscaConsultaChange(Sender: TObject);
begin
  dmAcessaDadosConsulta.Consultas.Filter := '(Upper(Nome) like '''  +  uppercase(edtBuscaConsulta.Text) + '%'') or (Upper(Nome) like ''%'  +  uppercase(edtBuscaConsulta.Text) + '%'') or (Upper(Nome) like ''%'  +  uppercase(edtBuscaConsulta.Text) + ''') or (upper(Descricao) like '''  +  uppercase(edtBuscaConsulta.Text) + '%'') or(upper(Descricao) like ''%'  +  uppercase(edtBuscaConsulta.Text )+ '%'') or (upper(Descricao) like ''%'  +  uppercase(edtBuscaConsulta.Text )+ ''')';
  dmAcessaDadosConsulta.Consultas.Filtered := true;
end;

procedure TfrmSqlBuilder.edtNomeConsultaChange(Sender: TObject);
begin
  fUltimoNomeValido := coalesce([edtNomeConsulta.Text, fUltimoNomeValido]);
end;

procedure TfrmSqlBuilder.edtNomeConsultaExit(Sender: TObject);
begin

  edtNomeCOnsulta.Visible := false;
  lbNOmeconsulta.Caption := edtNomeConsulta.Text;
end;

procedure TfrmSqlBuilder.edtNomeConsultaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    perform(WM_NEXTDLGCTL, 0,0);
end;

procedure TfrmSqlBuilder.EnviaTabelaAtual;
var
  FieldName: String;
begin
  if (TreeView2.Selected <> nil) then
    FieldName := TreeView2.Selected.text
  else
    FieldName := '';

  if FieldName <> '' then
    SynEdit1.SelText := FieldName;

end;

procedure TfrmSqlBuilder.EnviaCamposSelecionados;
  var I : Integer; FieldName: String; Content: String;
begin


    if (TreeView2.selected <> nil) and ( chMencionarTabela.Checked) then
      FieldName := TreeView2.Selected.Text + '.'
    else
      FieldName := '';


    if  TreeView3.SelectionCount > 0 then
    begin
      for I := 0 to TreeView3.SelectionCount-1 do
      begin
        Content := content + FieldName+TreeView3.Selections[I].Text + ', ' + #13;
      end;

        SynEdit1.SelText :=  Content;
        SynEdit1.SetFocus ;
    end;

end;

procedure TfrmSqlBuilder.FormActivate(Sender: TObject);
begin
  DmSynComp.SynCompletionProposal1.Editor :=SynEdit1;
end;

procedure TfrmSqlBuilder.FormShow(Sender: TObject);
begin
  try
    DesenhaListaConexoes;
    DesenhaListaTabelas;
    panel1.Visible := true;
  finally

  end;
end;

procedure TfrmSqlBuilder.lbNOmeconsultaClick(Sender: TObject);
begin
  edtNomeCOnsulta.Visible := true;
  edtNomeConsulta.Text := lbNOmeconsulta.Caption;
  edtNomeConsulta.setFocus;

end;


procedure TfrmSqlBuilder.DesenhaListaConexoes;
/// Desenha o treeview1
begin
  {$REGION 'Inicialization'}
  TreeView1.Items.Clear;
  fMapaDeConexoes.Clear;
  fCodigoDeconexoes.Clear;
  {$ENDREGION}
  try
    with dmAcessaDadosConsulta.getConexoes do while not Eof do
    begin
      TreeView1.Items.add (Nil, FieldByName('Nome').AsString);
      fMapadeConexoes.Add(FieldByName('Nome').AsString);
      fCodigoDeconexoes.Add(FieldByName('Codigo').AsInteger);
      Next;
      if recordCount = 0 then
        Exit;
    end;
  except
    {Todo: To register that couldn't get some Valid Dataset Connection}
  end;
end;

procedure TfrmSqlBuilder.DesenhaListaTabelas;
begin
  {$REGION 'Inicialization'}
  TreeView2.Items.Clear;
  {$ENDREGION}
  try
    with dmAcessaDadosConsulta.getTabelas do while not Eof do
    begin
      if recordCount = 0 then
        Exit;
      TreeView2.Items.add (Nil, FieldByName('tablename').AsString);
      AdicionarAoAutoCOmplete( FieldByName('tablename').AsString);
      Next;
    end;
  except
    {Todo: To register that couldn't get some Valid Dataset Connection}
  end;
end;

procedure TfrmSqlBuilder.MontarListaCampos(const TABELA: String);
  var TabelaComCampo: String;
begin
  {$REGION 'Inicialization'}
  TreeView3.Items.Clear;
  {$ENDREGION}
  try
    with dmAcessaDadosConsulta.getCampos(TABELA) do while not Eof do
    begin
      TreeView3.Items.add (Nil, FieldByName('fieldname').AsString);
      AdicionarAoAutoCOmplete( FieldByName('fieldname').AsString);
      if TreeView2.Selected <> nil then
      begin
        TabelaComCampo := TreeView2.Selected.text + '.' + FieldByName('fieldname').AsString;
        AdicionarAoAutoCOmplete(TabelaComCampo);
      end;
      Next;
      if recordCount = 0 then
        Exit;
    end;
  except
    {Todo: To register that couldn't get some Valid Fields For Current Table, or doesn't exist a valid tablename}
  end;

end;

procedure TfrmSqlBuilder.pnBuscarConsultaResize(Sender: TObject);
begin
  DBCtrlGrid1.RowCount := (pnBuscarConsulta.Height - dbctrlGrid1.Top) div (dbctrlGrid1.PanelHeight +1);
end;

procedure TfrmSqlBuilder.SpeedButton10Click(Sender: TObject);
begin
  pnBuscarConsulta.Visible := false;
  AbrirConsulta(dmAcessaDadosConsulta.Consultas.FieldByName('ID').AsString, dmAcessaDadosConsulta.Conexao);
end;

procedure TfrmSqlBuilder.SpeedButton11Click(Sender: TObject);
begin
  //;
  frmEnviarSQL.SetSQL(dmAcessaDadosConsulta.Conexao, lbIDCOnsulta.Caption, SynEdit1.Text, fUltimoNomeValido, fUltimaDescricaoValida)
    .SetMetodoEnviar(dmAcessaDadosConsulta.POST_CONSULTASQL)
    .SetMetodoTestar(dmAcessaDadosConsulta.TestarSQL)
    .SetDatasource(DataSource1)
    .showmodal;
end;

procedure TfrmSqlBuilder.SpeedButton3Click(Sender: TObject);
begin
  dxRichEditControl1.Height := 200;
end;

procedure TfrmSqlBuilder.SpeedButton7Click(Sender: TObject);
begin
  dmAcessaDadosConsulta.TestarSQL( BI.FuncoesDisponiveis.Preprocessar(SynEdit1.Text , now).template(#13,' '));
end;

procedure TfrmSqlBuilder.SpeedButton8Click(Sender: TObject);
begin
  panel10.Height := 200;
end;

procedure TfrmSqlBuilder.SpeedButton9Click(Sender: TObject);
begin
  pnBuscarConsulta.Visible := false
end;

procedure TfrmSqlBuilder.Splitter11Moved(Sender: TObject);
begin
  if SynEdit2.Width > 550 then
    synedit2.ScrollBars := System.UITypes.TScrollStyle.ssBoth
  else
    synedit2.ScrollBars := System.UITypes.TScrollStyle.ssNone;


end;

procedure TfrmSqlBuilder.SynEdit1Change(Sender: TObject);
begin
  Timer1.Enabled := false;
  Timer1.Enabled := CheckBox1.Checked;
end;

procedure TfrmSqlBuilder.SynEdit1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if Source = TreeView3 then
  begin
    EnviaCamposSelecionados
  end else
  if Source = TreeView2 then
  begin
    EnviaTabelaAtual
  end;
end;

procedure TfrmSqlBuilder.SynEdit1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  accept := true
end;

procedure TfrmSqlBuilder.SynEdit1StatusChange(Sender: TObject;
  Changes: TSynStatusChanges);
begin;

end;

procedure TfrmSqlBuilder.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  if CheckBox1.Checked then
    SynEdit2.Text := BI.FuncoesDisponiveis.Preprocessar(SynEdit1.Text , now)
end;

procedure TfrmSqlBuilder.TreeView2Click(Sender: TObject);
begin
  if  TreeView2.Selected <> nil then
    MontarListaCampos(TreeView2.Selected.Text);
end;

procedure TfrmSqlBuilder.TreeView3DblClick(Sender: TObject);
begin
EnviaCamposSelecionados
end;

end.
