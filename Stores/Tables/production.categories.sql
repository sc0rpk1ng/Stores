SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [production].[categories] (
	[category_id] int IDENTITY(1, 1),
	[category_name] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	PRIMARY KEY([category_id]) WITH (FILLFACTOR=100) ON [PRIMARY]
) ON [PRIMARY]