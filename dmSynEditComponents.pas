unit dmSynEditComponents;

interface

uses
  System.SysUtils, System.Classes, SynEditMiscClasses, SynEditSearch,
  SynEditHighlighter, SynHighlighterSQL, SynCompletionProposal, SynEdit;

type
  TDmSynComp = class(TDataModule)
    SynEditSearch1: TSynEditSearch;
    SynCompletionProposal1: TSynCompletionProposal;
    SynSQLSyn1: TSynSQLSyn;
  private
    { Private declarations }
  public
    procedure addEditor(Ed: TSynEdit) ;
  end;

var
  DmSynComp: TDmSynComp;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDmSynComp }

procedure TDmSynComp.addEditor(Ed: TSynEdit);
  var
    I: Integer;
    Encontrou: Boolean;

begin
  {$REGION 'Proposalcompletion'}

         Encontrou := false;
          for I := 0 to SynCompletionProposal1.EditorsCount-1 do
          begin
             if SynCompletionProposal1.Editors[I] = Ed then
             begin
               encontrou := true;
               break;
             end;
          end;
         if not encontrou then
           SynCompletionProposal1.AddEditor(ed);

  {$ENDREGION}

  end;

  end.
