SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [production].[stocks] (
	[store_id] int NOT NULL,
	[product_id] int NOT NULL,
	[quantity] int,
	PRIMARY KEY([store_id], [product_id]) WITH (FILLFACTOR=100) ON [PRIMARY],
	FOREIGN KEY ([product_id])
		REFERENCES [production].[products] ([product_id])
	 ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY ([store_id])
		REFERENCES [sales].[stores] ([store_id])
	 ON DELETE CASCADE ON UPDATE CASCADE
) ON [PRIMARY]
CREATE STATISTICS [_WA_Sys_00000002_3C69FB99]
ON [production].[stocks] ([product_id])