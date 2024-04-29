USE [db_ltubank]
GO
/****** Object:  Table [dbo].[CustomerChurnData]    Script Date: 26-04-2024 08:34:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerChurnData](
	[RowNumber] [int] NOT NULL,
	[CustomerId] [bigint] NULL,
	[Surname] [varchar](255) NULL,
	[CreditScore] [int] NULL,
	[Geography] [varchar](255) NULL,
	[Gender] [varchar](50) NULL,
	[Age] [int] NULL,
	[Tenure] [int] NULL,
	[Balance] [decimal](18, 2) NULL,
	[NumOfProducts] [int] NULL,
	[HasCrCard] [bit] NULL,
	[IsActiveMember] [bit] NULL,
	[EstimatedSalary] [decimal](18, 2) NULL,
	[Exited] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RowNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 26-04-2024 08:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Email] [varchar](255) NULL,
	[Amount] [decimal](10, 2) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionLogs]    Script Date: 26-04-2024 08:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionLogs](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionType] [varchar](50) NOT NULL,
	[Sender] [varchar](50) NOT NULL,
	[Receiver] [varchar](50) NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[TransactionDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransferMoney]    Script Date: 26-04-2024 08:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransferMoney](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[Balance] [decimal](10, 2) NOT NULL,
	[Operation] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CustomerChurnData] ([RowNumber], [CustomerId], [Surname], [CreditScore], [Geography], [Gender], [Age], [Tenure], [Balance], [NumOfProducts], [HasCrCard], [IsActiveMember], [EstimatedSalary], [Exited]) VALUES (1, 15634602, N'Hargrave', 619, N'France', N'Female', 42, 2, CAST(0.00 AS Decimal(18, 2)), 1, 1, 1, CAST(101348.88 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[CustomerChurnData] ([RowNumber], [CustomerId], [Surname], [CreditScore], [Geography], [Gender], [Age], [Tenure], [Balance], [NumOfProducts], [HasCrCard], [IsActiveMember], [EstimatedSalary], [Exited]) VALUES (2, 15647311, N'Hill', 608, N'Spain', N'Female', 41, 1, CAST(83807.86 AS Decimal(18, 2)), 1, 0, 1, CAST(112542.58 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[CustomerChurnData] ([RowNumber], [CustomerId], [Surname], [CreditScore], [Geography], [Gender], [Age], [Tenure], [Balance], [NumOfProducts], [HasCrCard], [IsActiveMember], [EstimatedSalary], [Exited]) VALUES (3, 15619304, N'Onio', 502, N'France', N'Female', 42, 8, CAST(159660.80 AS Decimal(18, 2)), 3, 1, 0, CAST(113931.57 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[CustomerChurnData] ([RowNumber], [CustomerId], [Surname], [CreditScore], [Geography], [Gender], [Age], [Tenure], [Balance], [NumOfProducts], [HasCrCard], [IsActiveMember], [EstimatedSalary], [Exited]) VALUES (4, 15701354, N'Boni', 699, N'France', N'Female', 39, 1, CAST(0.00 AS Decimal(18, 2)), 2, 0, 0, CAST(93826.63 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[CustomerChurnData] ([RowNumber], [CustomerId], [Surname], [CreditScore], [Geography], [Gender], [Age], [Tenure], [Balance], [NumOfProducts], [HasCrCard], [IsActiveMember], [EstimatedSalary], [Exited]) VALUES (5, 15737888, N'Mitchell', 850, N'Spain', N'Female', 43, 2, CAST(125510.82 AS Decimal(18, 2)), 1, 1, 1, CAST(79084.10 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[CustomerChurnData] ([RowNumber], [CustomerId], [Surname], [CreditScore], [Geography], [Gender], [Age], [Tenure], [Balance], [NumOfProducts], [HasCrCard], [IsActiveMember], [EstimatedSalary], [Exited]) VALUES (6, 15574012, N'Chu', 645, N'Spain', N'Male', 44, 8, CAST(113755.78 AS Decimal(18, 2)), 2, 1, 0, CAST(149756.71 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[CustomerChurnData] ([RowNumber], [CustomerId], [Surname], [CreditScore], [Geography], [Gender], [Age], [Tenure], [Balance], [NumOfProducts], [HasCrCard], [IsActiveMember], [EstimatedSalary], [Exited]) VALUES (7, 15592531, N'Bartlett', 822, N'France', N'Male', 50, 7, CAST(0.00 AS Decimal(18, 2)), 2, 1, 1, CAST(10062.80 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[CustomerChurnData] ([RowNumber], [CustomerId], [Surname], [CreditScore], [Geography], [Gender], [Age], [Tenure], [Balance], [NumOfProducts], [HasCrCard], [IsActiveMember], [EstimatedSalary], [Exited]) VALUES (8, 15656148, N'Obinna', 376, N'Germany', N'Female', 29, 4, CAST(115046.74 AS Decimal(18, 2)), 4, 1, 0, CAST(119346.88 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[CustomerChurnData] ([RowNumber], [CustomerId], [Surname], [CreditScore], [Geography], [Gender], [Age], [Tenure], [Balance], [NumOfProducts], [HasCrCard], [IsActiveMember], [EstimatedSalary], [Exited]) VALUES (9, 15792365, N'He', 501, N'France', N'Male', 44, 4, CAST(142051.07 AS Decimal(18, 2)), 2, 0, 1, CAST(74940.50 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[CustomerChurnData] ([RowNumber], [CustomerId], [Surname], [CreditScore], [Geography], [Gender], [Age], [Tenure], [Balance], [NumOfProducts], [HasCrCard], [IsActiveMember], [EstimatedSalary], [Exited]) VALUES (10, 15592389, N'H?', 684, N'France', N'Male', 27, 2, CAST(134603.88 AS Decimal(18, 2)), 1, 1, 1, CAST(71725.73 AS Decimal(18, 2)), 0)
GO
SET IDENTITY_INSERT [dbo].[tbl_Users] ON 
GO
INSERT [dbo].[tbl_Users] ([UserID], [Name], [Email], [Amount], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1, N'John Doe', N'john.doe@example.com', CAST(1000.00 AS Decimal(10, 2)), N'', CAST(N'2024-04-24T09:42:18.530' AS DateTime), 0)
GO
INSERT [dbo].[tbl_Users] ([UserID], [Name], [Email], [Amount], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (2, N'Jane Smith', N'jane.smith@example.com', CAST(2000.00 AS Decimal(10, 2)), N'', CAST(N'2024-04-24T09:42:18.530' AS DateTime), 0)
GO
INSERT [dbo].[tbl_Users] ([UserID], [Name], [Email], [Amount], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (3, N'Michael Johnson', N'michael.johnson@example.com', CAST(1500.00 AS Decimal(10, 2)), N'', CAST(N'2024-04-24T09:42:18.530' AS DateTime), 0)
GO
INSERT [dbo].[tbl_Users] ([UserID], [Name], [Email], [Amount], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (4, N'Sarah Williams', N'sarah.williams@example.com', CAST(3000.00 AS Decimal(10, 2)), N'', CAST(N'2024-04-24T09:42:18.530' AS DateTime), 0)
GO
INSERT [dbo].[tbl_Users] ([UserID], [Name], [Email], [Amount], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (5, N'David Brown', N'david.brown@example.com', CAST(2500.00 AS Decimal(10, 2)), N'', CAST(N'2024-04-24T09:42:18.530' AS DateTime), 0)
GO
INSERT [dbo].[tbl_Users] ([UserID], [Name], [Email], [Amount], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (6, N'Jennifer Lee', N'jennifer.lee@example.com', CAST(1800.00 AS Decimal(10, 2)), N'', CAST(N'2024-04-24T09:42:18.530' AS DateTime), 0)
GO
INSERT [dbo].[tbl_Users] ([UserID], [Name], [Email], [Amount], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (7, N'Jayanth', N'jayanth6620@gmail.com', CAST(7000.00 AS Decimal(10, 2)), N'', CAST(N'2024-04-25T22:44:05.673' AS DateTime), 0)
GO
INSERT [dbo].[tbl_Users] ([UserID], [Name], [Email], [Amount], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (8, N'Jaipal', N'jaipal@gmail.com', CAST(2000.00 AS Decimal(10, 2)), N'', CAST(N'2024-04-25T22:44:59.580' AS DateTime), 0)
GO
INSERT [dbo].[tbl_Users] ([UserID], [Name], [Email], [Amount], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (9, N'pooja', N'pooja@gmail.com', CAST(7000.00 AS Decimal(10, 2)), N'', CAST(N'2024-04-26T03:39:37.203' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[tbl_Users] OFF
GO
SET IDENTITY_INSERT [dbo].[TransactionLogs] ON 
GO
INSERT [dbo].[TransactionLogs] ([LogID], [TransactionType], [Sender], [Receiver], [Amount], [TransactionDate]) VALUES (1, N'Deposit', N'Jayanth', N'John Doe', CAST(1000.00 AS Decimal(10, 2)), CAST(N'2024-04-25T23:16:16.300' AS DateTime))
GO
INSERT [dbo].[TransactionLogs] ([LogID], [TransactionType], [Sender], [Receiver], [Amount], [TransactionDate]) VALUES (2, N'Withdrawal', N'Jayanth', N'Jane Smith', CAST(2000.00 AS Decimal(10, 2)), CAST(N'2024-04-25T23:16:16.300' AS DateTime))
GO
INSERT [dbo].[TransactionLogs] ([LogID], [TransactionType], [Sender], [Receiver], [Amount], [TransactionDate]) VALUES (3, N'Deposit', N'Jayanth', N'Michael Johnson', CAST(1500.00 AS Decimal(10, 2)), CAST(N'2024-04-25T23:16:16.300' AS DateTime))
GO
INSERT [dbo].[TransactionLogs] ([LogID], [TransactionType], [Sender], [Receiver], [Amount], [TransactionDate]) VALUES (4, N'Transfer', N'Jayanth', N'Sarah Williams', CAST(3000.00 AS Decimal(10, 2)), CAST(N'2024-04-25T23:16:16.300' AS DateTime))
GO
INSERT [dbo].[TransactionLogs] ([LogID], [TransactionType], [Sender], [Receiver], [Amount], [TransactionDate]) VALUES (5, N'Deposit', N'Jayanth', N'David Brown', CAST(2500.00 AS Decimal(10, 2)), CAST(N'2024-04-25T23:16:16.300' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[TransactionLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[TransferMoney] ON 
GO
INSERT [dbo].[TransferMoney] ([ID], [Name], [Email], [Balance], [Operation]) VALUES (1, N'John Doe', N'john.doe@example.com', CAST(1000.00 AS Decimal(10, 2)), N'Deposit')
GO
INSERT [dbo].[TransferMoney] ([ID], [Name], [Email], [Balance], [Operation]) VALUES (2, N'Jane Smith', N'jane.smith@example.com', CAST(2000.00 AS Decimal(10, 2)), N'Deposit')
GO
INSERT [dbo].[TransferMoney] ([ID], [Name], [Email], [Balance], [Operation]) VALUES (3, N'Michael Johnson', N'michael.johnson@example.com', CAST(1500.00 AS Decimal(10, 2)), N'Deposit')
GO
INSERT [dbo].[TransferMoney] ([ID], [Name], [Email], [Balance], [Operation]) VALUES (4, N'Sarah Williams', N'sarah.williams@example.com', CAST(3000.00 AS Decimal(10, 2)), N'Deposit')
GO
INSERT [dbo].[TransferMoney] ([ID], [Name], [Email], [Balance], [Operation]) VALUES (5, N'David Brown', N'david.brown@example.com', CAST(2500.00 AS Decimal(10, 2)), N'Deposit')
GO
SET IDENTITY_INSERT [dbo].[TransferMoney] OFF
GO
ALTER TABLE [dbo].[tbl_Users] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[tbl_Users] ADD  DEFAULT ('') FOR [Email]
GO
ALTER TABLE [dbo].[tbl_Users] ADD  DEFAULT ((0.00)) FOR [Amount]
GO
ALTER TABLE [dbo].[tbl_Users] ADD  DEFAULT ('') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[tbl_Users] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[tbl_Users] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  StoredProcedure [dbo].[CreateUser]    Script Date: 26-04-2024 08:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateUser]
    @Name VARCHAR(100),
    @Email VARCHAR(255),
    @Amount DECIMAL(10, 2),
    @ModifiedBy VARCHAR(100)
AS
BEGIN
    INSERT INTO tbl_Users (Name, Email, Amount, ModifiedBy)
    VALUES (@Name, @Email, @Amount, @ModifiedBy);

	Declare @UserID INT
	SET @UserID = SCOPE_IDENTITY()
	SELECT @UserID AS ID, 'true' AS [Status], 'User created successful' as [Message]
END;
GO
/****** Object:  StoredProcedure [dbo].[GetUserDetails]    Script Date: 26-04-2024 08:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetUserDetails]
    @UserID INT
AS
BEGIN
    SELECT * FROM tbl_Users WHERE UserID = @UserID AND IsDeleted = 0;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListTransactionLogs]    Script Date: 26-04-2024 08:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListTransactionLogs]
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT * FROM TransactionLogs;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListTransferMoney]    Script Date: 26-04-2024 08:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListTransferMoney] 
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT * FROM TransferMoney;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListUsers]    Script Date: 26-04-2024 08:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ListUsers]
AS
BEGIN
    SELECT * FROM tbl_Users WHERE IsDeleted = 0;
END;

GO
/****** Object:  StoredProcedure [dbo].[PredictCustomerChurn]    Script Date: 26-04-2024 08:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PredictCustomerChurn]
    @CreditScore INT,
    @Age INT,
    @Tenure INT,
    @AccountBalance DECIMAL(18,2),
    @NumberOfProducts INT,
    @HasCreditCard BIT,
    @IsActiveMember BIT,
    @EstimatedSalary DECIMAL(18,2),
    @Location VARCHAR(255),
    @Gender VARCHAR(50)
AS
BEGIN
    DECLARE @RScript NVARCHAR(MAX);
    DECLARE @Model VARBINARY(MAX); -- Variable to hold serialized model
    DECLARE @Params NVARCHAR(MAX); -- Parameters in JSON format
    DECLARE @Prediction BIT; -- Variable to store prediction result

    
END;
GO
/****** Object:  StoredProcedure [dbo].[SoftDeleteUser]    Script Date: 26-04-2024 08:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SoftDeleteUser]
    @UserID INT
AS
BEGIN
    UPDATE tbl_Users SET IsDeleted = 1, ModifiedOn = GETDATE() WHERE UserID = @UserID;
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 26-04-2024 08:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUser]
    @UserID INT,
    @Name VARCHAR(100),
    @Email VARCHAR(255),
    @Amount DECIMAL(10, 2),
    @ModifiedBy VARCHAR(100)
AS
BEGIN
    UPDATE tbl_Users
    SET Name = @Name, Email = @Email, Amount = @Amount, ModifiedBy = @ModifiedBy, ModifiedOn = GETDATE()
    WHERE UserID = @UserID;
END;

GO
