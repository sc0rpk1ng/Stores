SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [sales].[stores] (
	[store_id] int IDENTITY(1, 1),
	[store_name] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[phone] varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[email] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[street] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[city] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[state] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[zip_code] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS,
	PRIMARY KEY([store_id]) WITH (FILLFACTOR=100) ON [PRIMARY]
) ON [PRIMARY]