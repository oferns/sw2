CREATE TABLE [dbo].[AccountTokens] (
    [AccountOwnerRoleId] TINYINT          NOT NULL,
    [AccountOwnerUserId] UNIQUEIDENTIFIER NOT NULL,
    [TokenId]            TINYINT          NOT NULL,
    [Token]              UNIQUEIDENTIFIER CONSTRAINT [DF_AccountTokens_Token] DEFAULT (newid()) NOT NULL,
    [IssueDate]          DATETIME         CONSTRAINT [DF_AccountTokens_IssueDate] DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [PK_AccountTokens] PRIMARY KEY CLUSTERED ([AccountOwnerRoleId] ASC, [AccountOwnerUserId] ASC, [TokenId] ASC),
    CONSTRAINT [FK_AccountTokens_Tokens] FOREIGN KEY ([TokenId]) REFERENCES [dbo].[Tokens] ([Id])
);



