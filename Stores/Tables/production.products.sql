SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [production].[products] (
	[product_id] int IDENTITY(1, 1),
	[product_name] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[brand_id] int NOT NULL,
	[category_id] int NOT NULL,
	[model_year] smallint NOT NULL,
	[list_price] decimal(10, 2) NOT NULL,
	[Serial No] int,
	[Tag No] int,
	PRIMARY KEY([product_id]) WITH (FILLFACTOR=100) ON [PRIMARY],
	FOREIGN KEY ([brand_id])
		REFERENCES [production].[brands] ([brand_id])
	 ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY ([category_id])
		REFERENCES [production].[categories] ([category_id])
	 ON DELETE CASCADE ON UPDATE CASCADE
) ON [PRIMARY]
CREATE STATISTICS [_WA_Sys_00000002_267ABA7A]
ON [production].[products] ([product_name])
CREATE STATISTICS [_WA_Sys_00000003_267ABA7A]
ON [production].[products] ([brand_id])
CREATE STATISTICS [_WA_Sys_00000004_267ABA7A]
ON [production].[products] ([category_id])