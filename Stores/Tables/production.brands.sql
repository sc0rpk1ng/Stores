SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [production].[brands] (
	[brand_id] int IDENTITY(1, 1),
	[brand_name] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	PRIMARY KEY([brand_id]) WITH (FILLFACTOR=100) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TRIGGER [production].[production_brands_ApexSQLAudit_Delete]
ON [production].[brands]

AS EXTERNAL NAME [ApexSQL.Audit.BeforeAfter.BikeStores.production.brands.Delete].[ApexSQL.Audit.BeforeAfterClr.BeforeAfterTrigger].[Delete]
GO
CREATE TRIGGER [production].[production_brands_ApexSQLAudit_Insert]
ON [production].[brands]

AS EXTERNAL NAME [ApexSQL.Audit.BeforeAfter.BikeStores.production.brands.Insert].[ApexSQL.Audit.BeforeAfterClr.BeforeAfterTrigger].[Insert]
GO
CREATE TRIGGER [production].[production_brands_ApexSQLAudit_Update]
ON [production].[brands]

AS EXTERNAL NAME [ApexSQL.Audit.BeforeAfter.BikeStores.production.brands.Update].[ApexSQL.Audit.BeforeAfterClr.BeforeAfterTrigger].[Update]
GO