unit uWizardAmbiente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, System.ImageList, Vcl.ImgList;

type
  TfrmWizardAmbiente = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    tabModelos: TTabSheet;
    tabConfig: TTabSheet;
    ImageList1: TImageList;
    ListView1: TListView;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    Label4: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    ComboBox4: TComboBox;
    Bevel1: TBevel;
    ListBox1: TListBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWizardAmbiente: TfrmWizardAmbiente;

implementation

{$R *.dfm}

end.
