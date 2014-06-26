CREATE TABLE [dbo].[Users] (
    [Id]       UNIQUEIDENTIFIER    CONSTRAINT [DF_Users_Id] DEFAULT (newid()) NOT NULL,
    [UserName] [dbo].[ShortString] NOT NULL,
    [Active]   BIT                 NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY NONCLUSTERED ([Id] ASC)
);


GO
CREATE CLUSTERED INDEX [CIX_User]
    ON [dbo].[Users]([UserName] ASC);

