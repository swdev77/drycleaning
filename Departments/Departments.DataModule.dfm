object dmDepartments: TdmDepartments
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 450
  Width = 404
  object sqldsDepartments: TSQLDataSet
    Params = <>
    Left = 112
    Top = 40
  end
  object prvDepartments: TDataSetProvider
    DataSet = sqldsDepartments
    Left = 112
    Top = 88
  end
  object cdsDepartments: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDepartments'
    AfterPost = cdsDepartmentsAfterPost
    Left = 112
    Top = 136
  end
  object srcDepartments: TDataSource
    DataSet = cdsDepartments
    Left = 112
    Top = 184
  end
end
