SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[CustomerOrders] (
	[OrderID] int NOT NULL,
	[CustomerInfo] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[OrderItems] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS,
	PRIMARY KEY([OrderID]) WITH (FILLFACTOR=100) ON [PRIMARY]
) ON [PRIMARY]
 TEXTIMAGE_ON [PRIMARY]