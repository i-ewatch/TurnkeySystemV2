﻿CREATE TABLE [dbo].[TURNKEY_SEQUENCE] (
    [SEQUENCE] VARCHAR (8) NOT NULL,
    CONSTRAINT [TURNKEY_SEQUENCE_PK1] UNIQUE NONCLUSTERED ([SEQUENCE] ASC)
);

