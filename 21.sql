with Tempusers
AS
(
Select  slno,ROW_NUMBER()OVER(PARTITION BY slno ORDER BY slno) as duplicaterec
from  Product_Role_Form_Actions 
)
DELETE from tempusers
--Select * from tempusers
where  duplicaterec>1 

if not exists(select * from productforms where moduleid=3 and formid=40100)
begin
insert into productforms ([FormID],[FormName],[ModuleID],[FormAliasName],[RegionalFormAliasName],[SequenceID],[Image],[FormNameSpace],[IsChildTaskExist],[ParentTaskId],[ShowWithInModule],[QuickLaunchName],[TaskVisibilityStatus],[TransactionType],[MasterModuleID],[Url],[IsMaster],[AreaName],[ViewName],[ControllerName],[ProductID],[NextTask],[PreviousTask],[SourceId],[AreaAliasName])
values( 40100,	'frmDisbursemets'	,3,	'Loan Disbursement Back Date',	'లోన్ చెల్లించుట',	'9',	'fa fa-pagelines',	'Intellect.Unite.Loans.UI.dll',	0,	NULL,	1,	'Loan Disbursements Back Date',	NULL,	1,	NULL,	'/Loans/Disbursement/Disbursement',	NULL,	'FAS',	'TransactionPaymentBackDate',	'TransactionPayment',	3,	NULL	,40003,	NULL,	NULL  )
end
go

if not exists(select * from productforms where moduleid=3 and formid=40101)
begin
insert into productforms ([FormID],[FormName],[ModuleID],[FormAliasName],[RegionalFormAliasName],[SequenceID],[Image],[FormNameSpace],[IsChildTaskExist],[ParentTaskId],[ShowWithInModule],[QuickLaunchName],[TaskVisibilityStatus],[TransactionType],[MasterModuleID],[Url],[IsMaster],[AreaName],[ViewName],[ControllerName],[ProductID],[NextTask],[PreviousTask],[SourceId],[AreaAliasName])
values( 40101,	'frmCollections'	,3,	'Loan Collection Back Date',	'లోన్ కలెక్షన్',14,	'fa fa-pagelines',	'Intellect.Unite.Loans.UI.dll',	0,	NULL,	1,	'Loans Collections Back Date',	NULL,	2,	NULL,	'/Loans/Collection/Collection',	NULL,	'FAS',	'TransactionReceiptBackDate',	'TransactionReceipt',	3,	NULL	,40003,	NULL,	NULL  )
end
go

if not exists(select * from productforms where moduleid=4 and formid=40102)
begin
insert into productforms ([FormID],[FormName],[ModuleID],[FormAliasName],[RegionalFormAliasName],[SequenceID],[Image],[FormNameSpace],[IsChildTaskExist],[ParentTaskId],[ShowWithInModule],[QuickLaunchName],[TaskVisibilityStatus],[TransactionType],[MasterModuleID],[Url],[IsMaster],[AreaName],[ViewName],[ControllerName],[ProductID],[NextTask],[PreviousTask],[SourceId],[AreaAliasName])
values( 40102,	'frmSCATransaction'	,4,	'Deposit Back Date',	'డిపాజిట్',	'3',	'fa fa-briefcase',	'SCADepositsUI.dll',	0,	NULL,	1,	'Savings Deposit Back Date',	NULL,	2,	NULL,	'~/SavingsDeposits/SavingsDeposit.aspx',	NULL,	'FAS',	'TransactionReceiptBackDate',	'TransactionReceipt',	2,	30003	,30001,	NULL,	NULL  )
end
go

if not exists(select * from productforms where moduleid=4 and formid=40103)
begin
insert into productforms ([FormID],[FormName],[ModuleID],[FormAliasName],[RegionalFormAliasName],[SequenceID],[Image],[FormNameSpace],[IsChildTaskExist],[ParentTaskId],[ShowWithInModule],[QuickLaunchName],[TaskVisibilityStatus],[TransactionType],[MasterModuleID],[Url],[IsMaster],[AreaName],[ViewName],[ControllerName],[ProductID],[NextTask],[PreviousTask],[SourceId],[AreaAliasName])
values( 40103,	'frmCollections'	,4,	'WithDrawal Back Date',	'ఉపసంహరణ',4,	'fa fa-briefcase',	'SCADepositsUI.dll',	0,	NULL,	1,	'WithDrawal Back Date',	NULL,	1,	NULL,	'~/SavingsDeposits/SavingsWithdrawals.aspx',	NULL,	'FAS',	'TransactionPaymentBackDate',	'TransactionPayment',	2,	30009	,30002,	NULL,	NULL  )
end
go

 

if not exists(select * from productforms where moduleid=1 and formid=40110)
begin
insert into productforms ([FormID],[FormName],[ModuleID],[FormAliasName],[RegionalFormAliasName],[SequenceID],[Image],[FormNameSpace],[IsChildTaskExist],[ParentTaskId],[ShowWithInModule],[QuickLaunchName],[TaskVisibilityStatus],[TransactionType],[MasterModuleID],[Url],[IsMaster],[AreaName],[ViewName],[ControllerName],[ProductID],[NextTask],[PreviousTask],[SourceId],[AreaAliasName])
values( 40110,	'frmSCATransaction'	,1,	'Share Deposit Back Date',	'డిపాజిట్',	'3',	'fa fa-briefcase',	'SCADepositsUI.dll',	0,	NULL,	1,	'share Deposit Back Date',	NULL,	1,	NULL,	'~/SavingsDeposits/SavingsDeposit.aspx',	NULL,	'FAS',	'TransactionReceiptBackDate',	'TransactionReceipt',	1,	null	,10003,	NULL,	NULL  )
end
go

if not exists(select * from productforms where moduleid=1 and formid=40111)
begin
insert into productforms ([FormID],[FormName],[ModuleID],[FormAliasName],[RegionalFormAliasName],[SequenceID],[Image],[FormNameSpace],[IsChildTaskExist],[ParentTaskId],[ShowWithInModule],[QuickLaunchName],[TaskVisibilityStatus],[TransactionType],[MasterModuleID],[Url],[IsMaster],[AreaName],[ViewName],[ControllerName],[ProductID],[NextTask],[PreviousTask],[SourceId],[AreaAliasName])
values( 40111,	'frmCollections'	,1,	'Share WithDrawal Back Date',	'ఉపసంహరణ',4,	'fa fa-briefcase',	'SCADepositsUI.dll',	0,	NULL,	1,	'WithDrawal Back Date',	NULL,	1,	NULL,	'~/SavingsDeposits/SavingsWithdrawals.aspx',	NULL,	'FAS',	'TransactionPaymentBackDate',	'TransactionPayment',	1,	10004	,10003,	NULL,	NULL  )
end
go





if not exists (select * from Product_Role_Form_Actions where formid=40100 and actionitem=1)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,1,40100,1,3)
--set @count+=1
end
GO
if not exists (select * from Product_Role_Form_Actions where formid=40100 and actionitem=2)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,2,40100,1,3)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40100 and actionitem=3)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,3,40100,1,3)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40100 and actionitem=4)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,4,40100,1,3)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40100 and actionitem=5)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,5,40100,1,3)
set @count+=1
end
GO


if not exists (select * from Product_Role_Form_Actions where formid=40101 and actionitem=1)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,1,40101,1,3)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40101 and actionitem=2)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,2,40101,1,3)
set @count+=1
end
GO


if not exists (select * from Product_Role_Form_Actions where formid=40101 and actionitem=3)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,3,40101,1,3)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40101 and actionitem=4)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,4,40101,1,3)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40101 and actionitem=5)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,5,40101,1,3)
set @count+=1
end
GO
  




if not exists (select * from Product_Role_Form_Actions where formid=40102 and actionitem=1)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,1,40102,1,4)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40102 and actionitem=2)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,2,40102,1,4)
set @count+=1
end
GO


if not exists (select * from Product_Role_Form_Actions where formid=40102 and actionitem=3)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,3,40102,1,4)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40102 and actionitem=4)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,4,40102,1,4)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40102 and actionitem=5)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,5,40102,1,4)
set @count+=1
end
GO


if not exists (select * from Product_Role_Form_Actions where formid=40103 and actionitem=1)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,1,40103,1,4)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40103 and actionitem=2)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,2,40103,1,4)
set @count+=1
end
GO


if not exists (select * from Product_Role_Form_Actions where formid=40103 and actionitem=3)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,3,40103,1,4)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40103 and actionitem=4)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,4,40103,1,4)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40103 and actionitem=5)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,5,40103,1,4)
set @count+=1
end
GO




if not exists (select * from Product_Role_Form_Actions where formid=40110 and actionitem=1)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,1,40110,1,1)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40110 and actionitem=2)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,2,40110,1,1)
set @count+=1
end
GO


if not exists (select * from Product_Role_Form_Actions where formid=40110 and actionitem=3)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,3,40110,1,1)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40110 and actionitem=4)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,4,40110,1,1)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40110 and actionitem=5)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,5,40110,1,1)
set @count+=1
end

GO



if not exists (select * from Product_Role_Form_Actions where formid=40111 and actionitem=1)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,1,40111,1,1)
set @count+=1
end

GO
if not exists (select * from Product_Role_Form_Actions where formid=40111 and actionitem=2)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,2,40111,1,1)
set @count+=1
end
GO


if not exists (select * from Product_Role_Form_Actions where formid=40111 and actionitem=3)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,3,40111,1,1)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40111 and actionitem=4)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,4,40111,1,1)
set @count+=1
end
GO

if not exists (select * from Product_Role_Form_Actions where formid=40111 and actionitem=5)
begin
declare @count int=0
set @count = (select max(slno) from Product_Role_Form_Actions)
print @count
set @count+=1
insert into Product_Role_Form_Actions  (slno,roleid,actionitem,formid,status,moduleid)
values(@count,1,5,40111,1,1)
set @count+=1
end
GO