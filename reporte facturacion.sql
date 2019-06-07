SELECT     DH_DrillLostTools.ID, DH_DrillLostTools.IDDC, DH_DrillLostTools.IDLT, DH_DrillLostTools.Amount, DH_DrillLostTools.PercentPay, 
                      DH_DrillLostTools.PercentPayAdmon, DH_DrillLostTools.Comments, DH_DrillCompany.ID AS Expr1, DH_DrillCompany.Date, DH_DrillCompany.Turn, 
                      DH_DrillCompany.Rig, DH_DrillCompany.Project, DH_DrillCompany.Comments AS Expr2
FROM         DH_DrillLostTools INNER JOIN
                      DH_DrillCompany ON DH_DrillLostTools.IDDC = DH_DrillCompany.ID
     
     
    
Select * from  DH_DrillProgress
Select * from DH_DrillLostTools
Inner Join DH_DrillCompany ON 
DH_DrillLostTools.IDDC = DH_DrillCompany.ID



SELECT     DH_DrillBillableAdditives.ID, DH_DrillBillableAdditives.IDDC, DH_DrillBillableAdditives.IDBA, DH_DrillBillableAdditives.Amount, RfBillableAdditives.Description
FROM         DH_DrillBillableAdditives INNER JOIN
                      RfBillableAdditives ON DH_DrillBillableAdditives.IDBA = RfBillableAdditives.ID
                    
                  
                      
                      
SELECT  Distinct   DC.Date, DC.Turn, DC.Rig, CN.Name AS Contractor, 
DO.Description AS Item, DT.TimeReportDrill, DT.TimeApprovedInter, 
DT.ResTimeComp, DT.ResTimeCont, 
DLT.Comments, DLT.Amount, DLT.PercentPay, DLT.PercentPayAdmon, DBA.Amount, RFA.Description
FROM         dbo.DH_DrillDrillingTime AS DT INNER JOIN
dbo.DH_DrillCompany AS DC ON DT.IDDC = DC.ID INNER JOIN
dbo.RfRig AS RG ON RG.RigID = DC.Rig INNER JOIN
dbo.RfContractor AS CN ON CN.Id = RG.Contractor INNER JOIN
dbo.RfDownTime AS DO ON DO.ID = DT.IDDT
Left Join DH_DrillLostTools DLT ON DLT.IDDC = DC.ID
Left Join DH_DrillBillableAdditives DBA ON DBA.IDDC = DC.ID
Left Join RfBillableAdditives RFA ON DBA.IDBA = RFA.ID
Order by DLT.Amount desc

