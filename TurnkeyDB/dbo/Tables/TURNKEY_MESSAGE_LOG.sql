﻿CREATE TABLE [dbo].[TURNKEY_MESSAGE_LOG] (
    [SEQNO]              VARCHAR (8)  NOT NULL,
    [SUBSEQNO]           VARCHAR (5)  NOT NULL,
    [UUID]               VARCHAR (40) DEFAULT (NULL) NULL,
    [MESSAGE_TYPE]       VARCHAR (10) DEFAULT (NULL) NULL,
    [CATEGORY_TYPE]      VARCHAR (5)  DEFAULT (NULL) NULL,
    [PROCESS_TYPE]       VARCHAR (10) DEFAULT (NULL) NULL,
    [FROM_PARTY_ID]      VARCHAR (10) DEFAULT (NULL) NULL,
    [TO_PARTY_ID]        VARCHAR (10) DEFAULT (NULL) NULL,
    [MESSAGE_DTS]        VARCHAR (17) DEFAULT (NULL) NULL,
    [CHARACTER_COUNT]    VARCHAR (10) DEFAULT (NULL) NULL,
    [STATUS]             VARCHAR (5)  DEFAULT (NULL) NULL,
    [IN_OUT_BOUND]       VARCHAR (1)  DEFAULT (NULL) NULL,
    [FROM_ROUTING_ID]    VARCHAR (39) DEFAULT (NULL) NULL,
    [TO_ROUTING_ID]      VARCHAR (39) DEFAULT (NULL) NULL,
    [INVOICE_IDENTIFIER] VARCHAR (30) DEFAULT (NULL) NULL,
    CONSTRAINT [TURNKEY_MESSAGE_LOG_PK1] UNIQUE NONCLUSTERED ([SEQNO] ASC, [SUBSEQNO] ASC)
);


GO
CREATE NONCLUSTERED INDEX [TURNKEY_MESSAGE_LOG_INDEX1]
    ON [dbo].[TURNKEY_MESSAGE_LOG]([MESSAGE_DTS] ASC);


GO
CREATE NONCLUSTERED INDEX [TURNKEY_MESSAGE_LOG_INDEX2]
    ON [dbo].[TURNKEY_MESSAGE_LOG]([UUID] ASC);
