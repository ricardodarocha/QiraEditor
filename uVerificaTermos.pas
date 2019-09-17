unit uVerificaTermos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    btnOk: TSpeedButton;
    btnCancelar: TSpeedButton;
    Edit1: TEdit;
    Label2: TLabel;
    procedure CheckBox1Click(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCancelarClick(Sender: TObject);
begin
modalResult := mrCancel
end;

procedure TForm1.btnOkClick(Sender: TObject);
begin
  modalresult := mrOk
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  btnOk.enabled := CheckBox1.Checked;
end;

end.
