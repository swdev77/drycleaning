unit Employees.Classes;

interface

uses
  System.SysUtils;

type
  TEmployee = class
  private
    FID: Integer;
    FLastName: string;
    FBirthday: TDate;
    FIsActive: Boolean;
    FUpdTm: TDateTime;
    FRegTm: TDateTime;
    FDepartmentID: Integer;
    FMiddleName: string;
    FFirstName: string;
    procedure SetID(const Value: Integer);
    procedure SetLastName(const Value: string);
    procedure SetBirthday(const Value: TDate);
    procedure SetIsActive(const Value: Boolean);
    procedure SetRegTm(const Value: TDateTime);
    procedure SetUpdTm(const Value: TDateTime);
    procedure SetDepartmentID(const Value: Integer);
    procedure SetMiddleName(const Value: string);
    procedure SetFirstName(const Value: string);
    function GetIsValid: Boolean;
  public
    property ID: Integer read FID write SetID;
    property FirstName: string read FFirstName write SetFirstName;
    property LastName: string read FLastName write SetLastName;
    property MiddleName: string read FMiddleName write SetMiddleName;
    property Birthday: TDate read FBirthday write SetBirthday;
    property IsActive: Boolean read FIsActive write SetIsActive;
    property RegTm: TDateTime read FRegTm write SetRegTm;
    property UpdTm: TDateTime read FUpdTm write SetUpdTm;
    property DepartmentID: Integer read FDepartmentID write SetDepartmentID;

    property IsValid: Boolean read GetIsValid;

    constructor Create; overload;
    constructor Create(
          AnID: Integer;
          AFirstName, ALastName, AMiddleName: string;
          ABirthday: TDate;
          AnIsActive: Boolean;
          ADepartmentID: Integer
      ); overload;
  end;

implementation

{ TEmployee }

constructor TEmployee.Create;
begin
  inherited Create;
end;

constructor TEmployee.Create(AnID: Integer; AFirstName, ALastName,
  AMiddleName: string; ABirthday: TDate; AnIsActive: Boolean;
  ADepartmentID: Integer);
begin
  inherited Create;
  FID := AnID;
  FLastName := ALastName;
  FFirstName := AFirstName;
  FMiddleName := AMiddleName;
  FBirthday := ABirthday;
  FDepartmentID := ADepartmentID;
end;

function TEmployee.GetIsValid: Boolean;
begin
  Result := (Trim(FLastName) <> '') or (Trim(FFirstName) <> '') or (Trim(FMiddleName) <> '');
end;

procedure TEmployee.SetBirthday(const Value: TDate);
begin
  FBirthday := Value;
end;

procedure TEmployee.SetDepartmentID(const Value: Integer);
begin
  FDepartmentID := Value;
end;

procedure TEmployee.SetFirstName(const Value: string);
begin
  FFirstName := Value;
end;

procedure TEmployee.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TEmployee.SetIsActive(const Value: Boolean);
begin
  FIsActive := Value;
end;

procedure TEmployee.SetLastName(const Value: string);
begin
  FLastName := Value;
end;

procedure TEmployee.SetMiddleName(const Value: string);
begin
  FMiddleName := Value;
end;

procedure TEmployee.SetRegTm(const Value: TDateTime);
begin
  FRegTm := Value;
end;

procedure TEmployee.SetUpdTm(const Value: TDateTime);
begin
  FUpdTm := Value;
end;

end.
