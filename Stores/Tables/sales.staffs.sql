SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

CREATE TABLE [sales].[staffs] (
	[staff_id] int IDENTITY(1, 1),
	[first_name] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[last_name] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[email] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[phone] varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[active] tinyint NOT NULL,
	[store_id] int NOT NULL,
	[manager_id] int,
	[address] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS,
	PRIMARY KEY([staff_id]) WITH (FILLFACTOR=100) ON [PRIMARY],
	UNIQUE([email]) WITH (FILLFACTOR=100) ON [PRIMARY],
	FOREIGN KEY ([manager_id])
		REFERENCES [sales].[staffs] ([staff_id])
	,
	FOREIGN KEY ([store_id])
		REFERENCES [sales].[stores] ([store_id])
	 ON DELETE CASCADE ON UPDATE CASCADE
) ON [PRIMARY]
 TEXTIMAGE_ON [PRIMARY]