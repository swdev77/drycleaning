unit Employees.View;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Common.Form, FMX.StdCtrls, FMX.Controls.Presentation,
  Employees.DataModule, Employees.ViewModel, EmployeesReg.View, System.Rtti,
  FMX.Grid.Style, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid,
  FMX.ScrollBox, FMX.Grid, Data.Bind.DBScope, Data.DB, Database.Types;

type
  TEmployeesForm = class(TCommonForm)
    BindSourceDB1: TBindSourceDB;
    GridBindSourceDB1: TGrid;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    tlb1: TToolBar;
    btnNew: TSpeedButton;
    btnEdit: TSpeedButton;
    procedure btnEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
  private
    FViewModel: TEmployeesViewModel;
    procedure RegFormShow;
    { Private declarations }
  public
    property ViewModel: TEmployeesViewModel read FViewModel;
    { Public declarations }
  end;

var
  EmployeesForm: TEmployeesForm;

implementation

{$R *.fmx}

procedure TEmployeesForm.btnEditClick(Sender: TObject);
begin
  inherited;

  FViewModel.Operation := opUpdate;
  RegFormShow;
end;

procedure TEmployeesForm.btnNewClick(Sender: TObject);
begin
  inherited;

  FViewModel.Operation := opInsert;
  RegFormShow;
end;

procedure TEmployeesForm.FormCreate(Sender: TObject);
begin
  inherited;
  FViewModel := TEmployeesViewModel.Create;
end;

procedure TEmployeesForm.RegFormShow;
var
  mr: TModalResult;
begin
  frmEmployeesReg := TfrmEmployeesReg.Create(Self, FViewModel);
  try
    mr := frmEmployeesReg.ShowModal;
    if mr = mrOk then FViewModel.SaveEmployee;
  finally
    frmEmployeesReg.Free;
  end;
end;

initialization
  RegisterClass(TEmployeesForm);

finalization
  UnRegisterClass(TEmployeesForm);


end.
