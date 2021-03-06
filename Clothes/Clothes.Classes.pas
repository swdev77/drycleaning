unit Clothes.Classes;

interface

type
  TClothesType = class
  private
    FName: string;
    FID: Integer;
    FOrderNo: Integer;
    procedure SetID(const Value: Integer);
    procedure SetName(const Value: string);
    procedure SetOrderNo(const Value: Integer);
  public
    property ID: Integer read FID write SetID;
    property Name: string read FName write SetName;
    property OrderNo: Integer read FOrderNo write SetOrderNo;
    constructor Create(const AnID: Integer; const AName: string; const AnOrderNo: Integer);
  end;

  TClothes = class
  private
    FName: string;
    FID: Integer;
    FSN: string;
    FClothesType: TClothesType;
    procedure SetID(const Value: Integer);
    procedure SetName(const Value: string);
    procedure SetSN(const Value: string);
  public
    property ID: Integer read FID write SetID;
    property SN: string read FSN write SetSN;
    property Name: string read FName write SetName;
    property ClothesType: TClothesType read FClothesType write FClothesType;


    constructor Create(const AID: Integer; const AName: string; const ASN: string; AClothesType: TClothesType);
  end;

implementation

{ ClotheType }

constructor TClothesType.Create(const AnID: Integer; const AName: string; const AnOrderNo: Integer);
begin
  inherited Create;
  FID       := AnID;
  FName     := AName;
  FOrderNo  := AnOrderNo;
end;

procedure TClothesType.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TClothesType.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TClothesType.SetOrderNo(const Value: Integer);
begin
  FOrderNo := Value;
end;

{ TClothe }

constructor TClothes.Create(const AID: Integer; const AName: string; const ASN: string; AClothesType: TClothesType);
begin
  inherited Create;
  FID := AID;
  FSN := ASN;
  FName := AName;
  FClothesType := AClothesType;
end;

procedure TClothes.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TClothes.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TClothes.SetSN(const Value: string);
begin
  FSN := Value;
end;

end.
