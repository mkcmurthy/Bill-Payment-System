CREATE TABLE [dbo].BillPayEntryTable
(
	[emailAddress] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [paymentTransactionDate] NVARCHAR(50) NULL, 
    [recipientBusinessName] NVARCHAR(50) NULL, 
    [recipientBusinessAddress] NVARCHAR(50) NULL, 
    [amountPaid] NVARCHAR(50) NULL, 
    [paymentDetails] NVARCHAR(50) NULL, 
    [status] INT NULL
)
