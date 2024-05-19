SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [sales].[customers] (
	[customer_id] int IDENTITY(1, 1),
	[first_name] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[last_name] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[phone] varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[email] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[street] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[city] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[state] varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[zip_code] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS,
	PRIMARY KEY([customer_id]) WITH (FILLFACTOR=100) ON [PRIMARY]
) ON [PRIMARY]
CREATE STATISTICS [_WA_Sys_00000002_2A4B4B5E]
ON [sales].[customers] ([first_name])