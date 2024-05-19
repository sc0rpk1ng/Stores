SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [sales].[orders] (
	[order_id] int IDENTITY(1, 1),
	[customer_id] int,
	[order_status] tinyint NOT NULL,
	[order_date] date NOT NULL,
	[required_date] date NOT NULL,
	[shipped_date] date,
	[store_id] int NOT NULL,
	[staff_id] int NOT NULL,
	PRIMARY KEY([order_id]) WITH (FILLFACTOR=100) ON [PRIMARY],
	FOREIGN KEY ([customer_id])
		REFERENCES [sales].[customers] ([customer_id])
	 ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY ([staff_id])
		REFERENCES [sales].[staffs] ([staff_id])
	,
	FOREIGN KEY ([store_id])
		REFERENCES [sales].[stores] ([store_id])
	 ON DELETE CASCADE ON UPDATE CASCADE
) ON [PRIMARY]