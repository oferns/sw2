CREATE TABLE [dbo].[AllocationStatus] (
    [Id]          INT                 IDENTITY (1, 1) NOT NULL,
    [Name]        [dbo].[ShortString] NOT NULL,
    [Description] [dbo].[LongString]  NOT NULL,
    CONSTRAINT [PK_AllocationStatus] PRIMARY KEY CLUSTERED ([Id] ASC)
);



