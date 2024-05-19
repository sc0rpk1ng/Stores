SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [sales].[order_items] (
	[order_id] int NOT NULL,
	[item_id] int NOT NULL,
	[product_id] int NOT NULL,
	[quantity] int NOT NULL,
	[list_price] decimal(10, 2) NOT NULL,
	[discount] decimal(4, 2) NOT NULL DEFAULT ((0)),
	PRIMARY KEY([order_id], [item_id]) WITH (FILLFACTOR=100) ON [PRIMARY],
	FOREIGN KEY ([order_id])
		REFERENCES [sales].[orders] ([order_id])
	 ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY ([product_id])
		REFERENCES [production].[products] ([product_id])
	 ON DELETE CASCADE ON UPDATE CASCADE
) ON [PRIMARY]