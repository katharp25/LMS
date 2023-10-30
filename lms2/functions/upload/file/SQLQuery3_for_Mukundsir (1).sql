USE [almuzaini_exchange]
GO
/****** Object:  Table [aml].[BlockListConfigurations]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aml].[BlockListConfigurations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [char](5) NOT NULL,
	[ComplainceType] [varchar](4) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Blockscore] [int] NOT NULL,
	[ReviewScore] [int] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](100) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_BlockListConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [aml].[ComplianceConfigurations]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aml].[ComplianceConfigurations](
	[ConfigurationId] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [varchar](4) NOT NULL,
	[Threshold] [int] NOT NULL,
	[Groupid] [int] NOT NULL,
	[Scanid] [varchar](4) NOT NULL,
	[Appname] [nvarchar](50) NOT NULL,
	[Zoneid] [int] NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[Password] [varchar](15) NOT NULL,
	[TraceRecord] [bit] NOT NULL,
	[IsRequestWillProcess] [bit] NOT NULL,
	[ApiEndPoint] [varchar](200) NOT NULL,
	[BranchCode] [varchar](10) NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](100) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
	[SaveRequest] [bit] NOT NULL,
 CONSTRAINT [PK_ComplianceConfigurations] PRIMARY KEY CLUSTERED 
(
	[ConfigurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [aml].[ComplianceFilterConfiguration]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aml].[ComplianceFilterConfiguration](
	[FilterId] [int] IDENTITY(1,1) NOT NULL,
	[ConfigurationId] [int] NOT NULL,
	[Key] [varchar](200) NOT NULL,
	[LogicalOperator] [varchar](10) NOT NULL,
	[IsFeatureFilter] [bit] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](100) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
	[TypeId] [varchar](4) NOT NULL,
 CONSTRAINT [PK_ComplianceFilterConfiguration] PRIMARY KEY CLUSTERED 
(
	[FilterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [aml].[ComplianceInstanceConfig]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aml].[ComplianceInstanceConfig](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[InstanceName] [varchar](200) NOT NULL,
	[DetailLevel] [varchar](50) NOT NULL,
	[ScanId] [varchar](4) NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](100) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_ComplianceInstanceConfig] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [aml].[ComplianceScanType]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aml].[ComplianceScanType](
	[ScanId] [varchar](4) NOT NULL,
	[ScanName] [varchar](200) NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](100) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_ComplianceScanType] PRIMARY KEY CLUSTERED 
(
	[ScanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [aml].[ComplianceType]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aml].[ComplianceType](
	[TypeId] [varchar](4) NOT NULL,
	[ComplianceType] [varchar](200) NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](100) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_ComplianceType] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [aml].[TransactionAmlQueue]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aml].[TransactionAmlQueue](
	[AmlQueueId] [bigint] IDENTITY(1,1) NOT NULL,
	[TTRefNo] [nvarchar](15) NOT NULL,
	[ComplianceType] [nvarchar](20) NULL,
	[MatchedIds] [nvarchar](300) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AmlQueueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [aml].[TransactionAmlQueueTemp]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aml].[TransactionAmlQueueTemp](
	[AmlQueueId] [bigint] IDENTITY(1,1) NOT NULL,
	[TTRefNo] [nvarchar](15) NOT NULL,
	[ComplianceType] [nvarchar](20) NULL,
	[MatchedIds] [nvarchar](300) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AmlQueueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ActionMaster]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ActionMaster](
	[ActionCode] [char](10) NOT NULL,
	[ActionDescription] [nvarchar](100) NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_CFG.ActionMaster] PRIMARY KEY CLUSTERED 
(
	[ActionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[BranchGroupCategory]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[BranchGroupCategory](
	[Code] [varchar](10) NOT NULL,
	[value] [nvarchar](15) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK__BranchGroupCategory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[BranchMaster]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[BranchMaster](
	[BranchCode] [char](10) NOT NULL,
	[BranchName] [nvarchar](100) NULL,
	[BranchGroup] [nvarchar](50) NULL,
	[BranchStatus] [varchar](30) NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_CFG.BranchMaster] PRIMARY KEY CLUSTERED 
(
	[BranchCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[DateFormat]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[DateFormat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateFormat] [varchar](50) NULL,
	[Status] [varchar](10) NULL,
 CONSTRAINT [PK_DateFormat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[DisbursalMaster]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[DisbursalMaster](
	[DisbursalCode] [char](5) NOT NULL,
	[DisbursalValue] [nvarchar](15) NULL,
	[DisbursalStatus] [varchar](10) NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_DisbursalMaster] PRIMARY KEY CLUSTERED 
(
	[DisbursalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[DraweeBankMaster]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[DraweeBankMaster](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DraweeBankCode] [char](7) NOT NULL,
	[DraweeBankIdLegacy] [char](4) NULL,
	[DraweeBankName] [nvarchar](100) NULL,
	[DraweeBankCountryName] [nvarchar](20) NULL,
	[DraweeBankCountryCode] [char](2) NULL,
	[BankCodeInternal] [nvarchar](20) NULL,
	[BankName] [nvarchar](100) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_DraweeBankMaster_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[DraweeCorrespondentBankMapping]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[DraweeCorrespondentBankMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DraweeCode] [nvarchar](50) NULL,
	[BankCode] [varchar](20) NULL,
	[CorrespondentBankId] [nvarchar](20) NULL,
	[CorrespondentBankName] [varchar](max) NULL,
	[Status] [varchar](20) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [cfg].[MasterTableDatatesting]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[MasterTableDatatesting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[typeCode] [int] NULL,
	[valueAr] [varchar](max) NULL,
	[value] [varchar](max) NULL,
	[type] [numeric](18, 2) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [cfg].[OnboardingSectionMaster]    Script Date: 7/20/2023 9:17:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[OnboardingSectionMaster](
	[Code] [varchar](5) NOT NULL,
	[value] [nvarchar](15) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ReligionMaster]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ReligionMaster](
	[Code] [char](5) NOT NULL,
	[Value] [varchar](50) NULL,
	[Status] [varchar](10) NULL,
 CONSTRAINT [PK_ReligionMaster] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[TxnPerMaster]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[TxnPerMaster](
	[Code] [varchar](4) NOT NULL,
	[Value] [varchar](10) NOT NULL,
	[Status] [varchar](10) NULL,
 CONSTRAINT [PK_TxnPerMaster] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[UIActionMaster]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[UIActionMaster](
	[Code] [char](5) NOT NULL,
	[Value] [varchar](50) NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_UIActionMaster] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[UIPageMaster]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[UIPageMaster](
	[Code] [char](5) NOT NULL,
	[Value] [varchar](50) NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_UIPageMaster] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[ActualRateMargin]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[ActualRateMargin](
	[ActualRateMarginId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BranchCode] [char](10) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[SourceCurrencyCode] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[ActualBuyRate] [numeric](15, 8) NOT NULL,
	[ActualSellRate] [numeric](15, 8) NOT NULL,
	[ActualBuyMargin] [numeric](15, 8) NULL,
	[ActualSellMargin] [numeric](15, 8) NULL,
	[ActualMarginBuyLow] [numeric](15, 8) NULL,
	[ActualMarginBuyHigh] [numeric](15, 8) NULL,
	[ActualMarginSellLow] [numeric](15, 8) NULL,
	[ActualMarginSellHigh] [numeric](15, 8) NULL,
	[ActualMarginFixedOrPercentage] [nvarchar](50) NULL,
	[ActualMarginBuyPercentageValue] [numeric](4, 2) NULL,
	[ActualMarginSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[Status] [varchar](10) NOT NULL,
	[IsFavourite] [bit] NULL,
	[BranchGroupId] [int] NULL,
	[DisbursalMode] [nvarchar](10) NULL,
	[SpecialRate] [numeric](15, 8) NULL,
	[AgentCode] [nvarchar](10) NULL,
	[EffectiveFromDate] [datetime] NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_ActualRateMargin] PRIMARY KEY CLUSTERED 
(
	[ActualRateMarginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[ActualRateMarginHistory]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[ActualRateMarginHistory](
	[ActualRateMarginHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[ActualRateMarginId] [bigint] NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BranchCode] [char](10) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[SourceCurrencyCode] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[ActualBuyRate] [numeric](15, 8) NOT NULL,
	[ActualSellRate] [numeric](15, 8) NOT NULL,
	[ActualBuyMargin] [numeric](15, 8) NULL,
	[ActualSellMargin] [numeric](15, 8) NULL,
	[ActualMarginBuyLow] [numeric](15, 8) NULL,
	[ActualMarginBuyHigh] [numeric](15, 8) NULL,
	[ActualMarginSellLow] [numeric](15, 8) NULL,
	[ActualMarginSellHigh] [numeric](15, 8) NULL,
	[ActualMarginFixedOrPercentage] [nvarchar](50) NULL,
	[ActualMarginBuyPercentageValue] [numeric](4, 2) NULL,
	[ActualMarginSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[Status] [varchar](10) NOT NULL,
	[IsFavourite] [bit] NULL,
	[BranchGroupId] [int] NULL,
	[DisbursalMode] [nvarchar](10) NULL,
	[SpecialRate] [numeric](15, 8) NULL,
	[AgentCode] [nvarchar](10) NULL,
	[EffectiveFromDate] [datetime] NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_ActualRateMarginHistory] PRIMARY KEY CLUSTERED 
(
	[ActualRateMarginHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[AgentDraweeRate]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[AgentDraweeRate](
	[AgentRateId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[DraweeAgentCode] [char](10) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[SourceCurrency] [char](3) NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[AgentBuyRate] [numeric](15, 8) NOT NULL,
	[AgentSellRate] [numeric](15, 8) NOT NULL,
	[AgentBuyMargin] [numeric](15, 8) NULL,
	[AgentSellMargin] [numeric](15, 8) NULL,
	[AgentMarginBuyLow] [numeric](15, 8) NULL,
	[AgentMarginBuyHigh] [numeric](15, 8) NULL,
	[AgentMarginSellLow] [numeric](15, 8) NULL,
	[AgentMarginSellHigh] [numeric](15, 8) NULL,
	[AgentMarginFixedOrPercentage] [nvarchar](50) NULL,
	[AgentMarginBuyPercentageValue] [numeric](4, 2) NULL,
	[AgentMarginSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [varchar](10) NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_AgentDraweeRate] PRIMARY KEY CLUSTERED 
(
	[AgentRateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[AgentRateHistory]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[AgentRateHistory](
	[AgentRateHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[AgentRateId] [bigint] NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[DraweeAgentCode] [char](10) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[AgentBuyRate] [numeric](15, 8) NOT NULL,
	[AgentSellRate] [numeric](15, 8) NOT NULL,
	[AgentBuyMargin] [numeric](15, 8) NULL,
	[AgentSellMargin] [numeric](15, 8) NULL,
	[AgentMarginBuyLow] [numeric](15, 8) NULL,
	[AgentMarginBuyHigh] [numeric](15, 8) NULL,
	[AgentMarginSellLow] [numeric](15, 8) NULL,
	[AgentMarginSellHigh] [numeric](15, 8) NULL,
	[AgentMarginFixedOrPercentage] [nvarchar](50) NULL,
	[AgentMarginBuyPercentageValue] [numeric](4, 2) NULL,
	[AgentMarginSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [varchar](10) NOT NULL,
	[SourceCurrency] [char](3) NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_AgentRateHistory] PRIMARY KEY CLUSTERED 
(
	[AgentRateHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[BranchGroup]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[BranchGroup](
	[BranchGroupId] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchGroupName] [nvarchar](200) NOT NULL,
	[BranchGroupDesc] [nvarchar](250) NULL,
	[BranchGroupCategory] [char](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_BranchGroup] PRIMARY KEY CLUSTERED 
(
	[BranchGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[BranchMapping]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[BranchMapping](
	[BranchGroupId] [bigint] NOT NULL,
	[BranchCode] [nvarchar](20) NOT NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Core_BranchMapping] PRIMARY KEY CLUSTERED 
(
	[BranchGroupId] ASC,
	[BranchCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[CustomerTagDetailsHistory]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[CustomerTagDetailsHistory](
	[TagArchiveId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerTaggedSlNo] [int] NOT NULL,
	[CustomerTaggedRemarks] [varchar](100) NOT NULL,
	[CustomerId] [nvarchar](15) NULL,
	[CustomerDepartmentId] [int] NOT NULL,
	[Type] [varchar](30) NULL,
	[CustomerCreatedBy] [varchar](30) NULL,
	[CustomerCreatedDate] [datetime] NULL,
 CONSTRAINT [PK_CustomerTagDetailsHistory] PRIMARY KEY CLUSTERED 
(
	[TagArchiveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[CustomerTagInfo]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[CustomerTagInfo](
	[CustomerId] [nvarchar](15) NOT NULL,
	[CustomerTaggedSlNo] [int] NOT NULL,
	[CustomerTaggedDepartmentId] [int] NOT NULL,
	[CustomerTaggedDate] [datetime] NULL,
	[CustomerTaggedRemarks] [nvarchar](500) NOT NULL,
	[CustomerTaggedStatus] [int] NULL,
	[CustomerTaggedDeleted] [bit] NULL,
	[CustomerTaggedCreatedBy] [nvarchar](30) NOT NULL,
	[CustomerTaggedCreatedDate] [datetime] NOT NULL,
	[CustomerTaggedModifiedBy] [nvarchar](30) NULL,
	[CustomerTaggedModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__Customer__467034048F7FFA70] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC,
	[CustomerTaggedSlNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[InterBankRates]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[InterBankRates](
	[InterBankRateId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[RateProvider] [varchar](30) NOT NULL,
	[RateDateGMT] [datetime] NOT NULL,
	[BuyRate] [numeric](15, 8) NOT NULL,
	[SellRate] [numeric](15, 8) NOT NULL,
	[BuyRateLow] [numeric](15, 8) NULL,
	[BuyRateHigh] [numeric](15, 8) NULL,
	[SellRateLow] [numeric](15, 8) NULL,
	[SellRateHigh] [numeric](15, 8) NULL,
	[IBFixedOrPercentage] [nvarchar](50) NULL,
	[BuyRatePercentageValue] [numeric](4, 2) NULL,
	[SellRatePercentageValue] [numeric](4, 2) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](30) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[AppovedBy] [varchar](30) NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK__InterBan__13B7D44ACEE0286B] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC,
	[ProductCode] ASC,
	[BaseCurrency] ASC,
	[CurrencyCode] ASC,
	[RateProvider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[InterBankRatesHistory]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[InterBankRatesHistory](
	[InterBankRateHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[InterBankRateId] [int] NULL,
	[CountryCode] [char](2) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[RateProvider] [varchar](30) NOT NULL,
	[RateDateGMT] [datetime] NOT NULL,
	[BuyRate] [numeric](15, 8) NOT NULL,
	[SellRate] [numeric](15, 8) NOT NULL,
	[BuyRateLow] [numeric](15, 8) NULL,
	[BuyRateHigh] [numeric](15, 8) NULL,
	[SellRateLow] [numeric](15, 8) NULL,
	[SellRateHigh] [numeric](15, 8) NULL,
	[IBFixedOrPercentage] [nvarchar](50) NULL,
	[BuyRatePercentageValue] [numeric](4, 2) NULL,
	[SellRatePercentageValue] [numeric](4, 2) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[AppovedBy] [varchar](30) NULL,
	[EffectiveDate] [datetime] NULL,
	[ArchivedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_InterBankRatesHistory] PRIMARY KEY CLUSTERED 
(
	[InterBankRateHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[MenuRoleMapping]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[MenuRoleMapping](
	[Mid] [int] IDENTITY(1,1) NOT NULL,
	[MenuId] [varchar](100) NULL,
	[RoleId] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Mid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateBankwiseSpecialMargin]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateBankwiseSpecialMargin](
	[SRBMarginId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[Currency] [char](3) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[AgentCode] [nvarchar](100) NOT NULL,
	[BranchCode] [char](10) NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NOT NULL,
	[FromLocalCurrency] [numeric](15, 8) NULL,
	[ToLocalCurrency] [numeric](15, 8) NULL,
	[SpecialRate] [numeric](15, 8) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[ApprovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_SpecialRateBankWiseMargin] PRIMARY KEY CLUSTERED 
(
	[SRBMarginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateBankwiseSpecialMarginHistory]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateBankwiseSpecialMarginHistory](
	[SRBMarginHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[SRBMarginId] [bigint] NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[Currency] [char](3) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[AgentCode] [nvarchar](100) NOT NULL,
	[BranchCode] [char](10) NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NOT NULL,
	[FromLocalCurrency] [numeric](15, 8) NULL,
	[ToLocalCurrency] [numeric](15, 8) NULL,
	[SpecialRate] [numeric](15, 8) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[ApprovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[ArchivedDate] [datetime] NULL,
 CONSTRAINT [PK_SpecialRateBankWiseMarginHistory] PRIMARY KEY CLUSTERED 
(
	[SRBMarginHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateBranchwiseMargin]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateBranchwiseMargin](
	[BRMarginId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[BranchCode] [char](10) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[BRMarginBuy] [numeric](15, 8) NOT NULL,
	[BRMarginSell] [numeric](15, 8) NOT NULL,
	[BRMarginBuyLow] [numeric](15, 8) NULL,
	[BRMarginBuyHigh] [numeric](15, 8) NULL,
	[BRMarginSellLow] [numeric](15, 8) NULL,
	[BRMarginSellHigh] [numeric](15, 8) NULL,
	[BRMarginFixedOrPercentage] [nvarchar](50) NULL,
	[BRMarginBuyPercentageValue] [numeric](4, 2) NULL,
	[BRMarginSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [varchar](10) NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateBranchwiseMargin] PRIMARY KEY CLUSTERED 
(
	[BRMarginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateBranchwiseMarginHistory]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateBranchwiseMarginHistory](
	[BRMarginHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[BRMarginId] [bigint] NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[BranchCode] [char](10) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[BRMarginBuy] [numeric](15, 8) NOT NULL,
	[BRMarginSell] [numeric](15, 8) NOT NULL,
	[BRMarginBuyLow] [numeric](15, 8) NULL,
	[BRMarginBuyHigh] [numeric](15, 8) NULL,
	[BRMarginSellLow] [numeric](15, 8) NULL,
	[BRMarginSellHigh] [numeric](15, 8) NULL,
	[BRMarginFixedOrPercentage] [nvarchar](50) NULL,
	[BRMarginBuyPercentageValue] [numeric](4, 2) NULL,
	[BRMarginSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [varchar](10) NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateBranchwiseMarginHistory] PRIMARY KEY CLUSTERED 
(
	[BRMarginHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateBRGroupMargin]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateBRGroupMargin](
	[BRGroupMarginId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[BranchGroup] [char](10) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[BRGroupMarginBuy] [numeric](15, 8) NOT NULL,
	[BRGroupMarginSell] [numeric](15, 8) NOT NULL,
	[BRGroupMarginBuyLow] [numeric](15, 8) NULL,
	[BRGroupMarginBuyHigh] [numeric](15, 8) NULL,
	[BRGroupMarginSellLow] [numeric](15, 8) NULL,
	[BRGroupMarginSellHigh] [numeric](15, 8) NULL,
	[BRGroupMarginFixedOrPercentage] [nvarchar](50) NULL,
	[BRGroupMarginBuyPercentageValue] [numeric](4, 2) NULL,
	[BRGroupMarginSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [varchar](10) NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateBRGroupMargin] PRIMARY KEY CLUSTERED 
(
	[BRGroupMarginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateBRGroupMarginHistory]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateBRGroupMarginHistory](
	[BRGroupMarginHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[BRGroupMarginId] [bigint] NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[BranchGroup] [char](10) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[BRGroupMarginBuy] [numeric](15, 8) NOT NULL,
	[BRGroupMarginSell] [numeric](15, 8) NOT NULL,
	[BRGroupMarginBuyLow] [numeric](15, 8) NULL,
	[BRGroupMarginBuyHigh] [numeric](15, 8) NULL,
	[BRGroupMarginSellLow] [numeric](15, 8) NULL,
	[BRGroupMarginSellHigh] [numeric](15, 8) NULL,
	[BRGroupMarginFixedOrPercentage] [nvarchar](50) NULL,
	[BRGroupMarginBuyPercentageValue] [numeric](4, 2) NULL,
	[BRGroupMarginSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [varchar](10) NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateBRGroupMarginHistory] PRIMARY KEY CLUSTERED 
(
	[BRGroupMarginHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateCountryMargin]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateCountryMargin](
	[CMRateId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[OperatingCountryCode] [char](3) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[CMBuy] [numeric](15, 8) NOT NULL,
	[CMSell] [numeric](15, 8) NOT NULL,
	[CMBuyLow] [numeric](15, 8) NULL,
	[CMBuyHigh] [numeric](15, 8) NULL,
	[CMSellLow] [numeric](15, 8) NULL,
	[CMSellHigh] [numeric](15, 8) NULL,
	[CMFixedOrPercentage] [nvarchar](50) NULL,
	[CMBuyPercentageValue] [numeric](4, 2) NULL,
	[CMSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateCountryMargin] PRIMARY KEY CLUSTERED 
(
	[CMRateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateCountryMarginHistory]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateCountryMarginHistory](
	[CMRateHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[CMRateId] [bigint] NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[OperatingCountryCode] [char](3) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[CMBuy] [numeric](15, 8) NOT NULL,
	[CMSell] [numeric](15, 8) NOT NULL,
	[CMBuyLow] [numeric](15, 8) NULL,
	[CMBuyHigh] [numeric](15, 8) NULL,
	[CMSellLow] [numeric](15, 8) NULL,
	[CMSellHigh] [numeric](15, 8) NULL,
	[CMFixedOrPercentage] [nvarchar](50) NULL,
	[CMBuyPercentageValue] [numeric](4, 2) NULL,
	[CMSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[ArchivedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateCountryMarginHistory] PRIMARY KEY CLUSTERED 
(
	[CMRateHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateDisbursalMargin]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateDisbursalMargin](
	[DisbursalMarginId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[DisbursalMode] [char](10) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[SourceCurrencyCode] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[DisbursalMarginBuyRate] [numeric](15, 8) NOT NULL,
	[DisbursalMarginSellRate] [numeric](15, 8) NOT NULL,
	[DisbursalMarginBuyLow] [numeric](15, 8) NULL,
	[DisbursalMarginBuyHigh] [numeric](15, 8) NULL,
	[DisbursalMarginSellLow] [numeric](15, 8) NULL,
	[DisbursalMarginSellHigh] [numeric](15, 8) NULL,
	[DisbursalMarginFixedOrPercentage] [nvarchar](50) NULL,
	[DisbursalMarginBuyPercentageValue] [numeric](4, 2) NULL,
	[DisbursalMarginSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [varchar](10) NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateDisbursalMargin] PRIMARY KEY CLUSTERED 
(
	[DisbursalMarginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateDisbursalMarginHistory]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateDisbursalMarginHistory](
	[DisbursalMarginHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[DisbursalMarginId] [bigint] NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[DisbursalMode] [char](10) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[SourceCurrencyCode] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[DisbursalMarginBuyRate] [numeric](15, 8) NOT NULL,
	[DisbursalMarginSellRate] [numeric](15, 8) NOT NULL,
	[DisbursalMarginBuyLow] [numeric](15, 8) NULL,
	[DisbursalMarginBuyHigh] [numeric](15, 8) NULL,
	[DisbursalMarginSellLow] [numeric](15, 8) NULL,
	[DisbursalMarginSellHigh] [numeric](15, 8) NULL,
	[DisbursalMarginFixedOrPercentage] [nvarchar](50) NULL,
	[DisbursalMarginBuyPercentageValue] [numeric](4, 2) NULL,
	[DisbursalMarginSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [varchar](10) NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateDisbursalMarginHistory] PRIMARY KEY CLUSTERED 
(
	[DisbursalMarginHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateIndvCorpMargin]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateIndvCorpMargin](
	[IndvCorpMarginId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[SourceCurrencyCode] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[IndvCorpMarginBuyRate] [numeric](15, 8) NOT NULL,
	[IndvCorpMarginSellRate] [numeric](15, 8) NOT NULL,
	[IndvCorpMarginBuyLow] [numeric](15, 8) NULL,
	[IndvCorpMarginBuyHigh] [numeric](15, 8) NULL,
	[IndvCorpMarginSellLow] [numeric](15, 8) NULL,
	[IndvCorpMarginSellHigh] [numeric](15, 8) NULL,
	[IndvCorpMarginFixedOrPercentage] [nvarchar](50) NULL,
	[IndvCorpMarginBuyPercentageValue] [numeric](4, 2) NULL,
	[IndvCorpMarginSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [varchar](10) NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateIndvCorpMargin] PRIMARY KEY CLUSTERED 
(
	[IndvCorpMarginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateIndvCorpMarginHistory]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateIndvCorpMarginHistory](
	[IndvCorpMarginHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[IndvCorpMarginId] [bigint] NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[SourceCurrencyCode] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[IndvCorpMarginBuyRate] [numeric](15, 8) NOT NULL,
	[IndvCorpMarginSellRate] [numeric](15, 8) NOT NULL,
	[IndvCorpMarginBuyLow] [numeric](15, 8) NULL,
	[IndvCorpMarginBuyHigh] [numeric](15, 8) NULL,
	[IndvCorpMarginSellLow] [numeric](15, 8) NULL,
	[IndvCorpMarginSellHigh] [numeric](15, 8) NULL,
	[IndvCorpMarginFixedOrPercentage] [nvarchar](50) NULL,
	[IndvCorpMarginBuyPercentageValue] [numeric](4, 2) NULL,
	[IndvCorpMarginSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [varchar](10) NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateIndvCorpMarginHistory] PRIMARY KEY CLUSTERED 
(
	[IndvCorpMarginHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateSettlementMargin]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateSettlementMargin](
	[SMRateId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BranchCode] [char](10) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[SMBuy] [numeric](15, 8) NOT NULL,
	[SMSell] [numeric](15, 8) NOT NULL,
	[SMBuyLow] [numeric](15, 8) NULL,
	[SMBuyHigh] [numeric](15, 8) NULL,
	[SMSellLow] [numeric](15, 8) NULL,
	[SMSellHigh] [numeric](15, 8) NULL,
	[SMFixedOrPercentage] [nvarchar](50) NULL,
	[SMBuyPercentageValue] [numeric](4, 2) NULL,
	[SMSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateSettlementMargin] PRIMARY KEY CLUSTERED 
(
	[SMRateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateSettlementMarginHistory]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateSettlementMarginHistory](
	[SMRateHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[SMRateId] [bigint] NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BranchCode] [char](10) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[SMBuy] [numeric](15, 8) NOT NULL,
	[SMSell] [numeric](15, 8) NOT NULL,
	[SMBuyLow] [numeric](15, 8) NULL,
	[SMBuyHigh] [numeric](15, 8) NULL,
	[SMSellLow] [numeric](15, 8) NULL,
	[SMSellHigh] [numeric](15, 8) NULL,
	[SMFixedOrPercentage] [nvarchar](50) NULL,
	[SMBuyPercentageValue] [numeric](4, 2) NULL,
	[SMSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[ArchivedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateSettlementMarginHistory] PRIMARY KEY CLUSTERED 
(
	[SMRateHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateSlabMargin]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateSlabMargin](
	[SlabMarginRateId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[BranchCode] [char](10) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[SlabMarginBuy] [numeric](15, 8) NOT NULL,
	[SlabMarginSell] [numeric](15, 8) NOT NULL,
	[MinSlab] [numeric](15, 8) NOT NULL,
	[MaxSlab] [numeric](15, 8) NOT NULL,
	[SlabMarginBuyLow] [numeric](15, 8) NULL,
	[SlabMarginBuyHigh] [numeric](15, 8) NULL,
	[SlabMarginSellLow] [numeric](15, 8) NULL,
	[SlabMarginSellHigh] [numeric](15, 8) NULL,
	[SlabMarginFixedOrPercentage] [nvarchar](50) NULL,
	[SlabMarginBuyPercentageValue] [numeric](4, 2) NULL,
	[SlabMarginSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateSlabMargin] PRIMARY KEY CLUSTERED 
(
	[SlabMarginRateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateSlabMarginHistory]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateSlabMarginHistory](
	[SlabMarginRateHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[SlabMarginRateId] [int] NULL,
	[CountryCode] [char](2) NOT NULL,
	[BranchCode] [char](10) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[SlabMarginBuy] [numeric](15, 8) NOT NULL,
	[SlabMarginSell] [numeric](15, 8) NOT NULL,
	[MinSlab] [numeric](15, 8) NOT NULL,
	[MaxSlab] [numeric](15, 8) NOT NULL,
	[SlabMarginBuyLow] [numeric](15, 8) NULL,
	[SlabMarginBuyHigh] [numeric](15, 8) NULL,
	[SlabMarginSellLow] [numeric](15, 8) NULL,
	[SlabMarginSellHigh] [numeric](15, 8) NULL,
	[SlabMarginFixedOrPercentage] [nvarchar](50) NULL,
	[SlabMarginBuyPercentageValue] [numeric](4, 2) NULL,
	[SlabMarginSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[ArchivedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateSlabMarginHistory] PRIMARY KEY CLUSTERED 
(
	[SlabMarginRateHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateVolatilityMargin]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateVolatilityMargin](
	[VMRateId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[VMBuy] [numeric](15, 8) NOT NULL,
	[VMSell] [numeric](15, 8) NOT NULL,
	[VMBuyLow] [numeric](15, 8) NULL,
	[VMBuyHigh] [numeric](15, 8) NULL,
	[VMSellLow] [numeric](15, 8) NULL,
	[VMSellHigh] [numeric](15, 8) NULL,
	[VMFixedOrPercentage] [nvarchar](50) NULL,
	[VMBuyPercentageValue] [numeric](4, 2) NULL,
	[VMSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateVolatilityMargin] PRIMARY KEY CLUSTERED 
(
	[VMRateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RateVolatilityMarginHistory]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RateVolatilityMarginHistory](
	[VMRateHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[VMRateId] [int] NULL,
	[CountryCode] [char](2) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[VMBuy] [numeric](15, 8) NOT NULL,
	[VMSell] [numeric](15, 8) NOT NULL,
	[VMBuyLow] [numeric](15, 8) NULL,
	[VMBuyHigh] [numeric](15, 8) NULL,
	[VMSellLow] [numeric](15, 8) NULL,
	[VMSellHigh] [numeric](15, 8) NULL,
	[VMFixedOrPercentage] [nvarchar](50) NULL,
	[VMBuyPercentageValue] [numeric](4, 2) NULL,
	[VMSellPercentageValue] [numeric](4, 2) NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[AppovedBy] [nvarchar](30) NULL,
	[ApprovedDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[ArchivedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[IsFavourite] [bit] NULL,
 CONSTRAINT [PK_RateVolatilityMarginHistory] PRIMARY KEY CLUSTERED 
(
	[VMRateHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[RoleMaster]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[RoleMaster](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[RoleDesc] [nvarchar](100) NULL,
	[RoleCreatedBy] [varchar](30) NULL,
	[RoleCreatedDate] [datetime] NULL,
	[RoleModifiedBy] [varchar](30) NULL,
	[RoleModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_RoleMaster] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[SessionConfigurations]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[SessionConfigurations](
	[SessionConfigurationId] [int] IDENTITY(1,1) NOT NULL,
	[SessionExpiryInMins] [int] NULL,
	[SlidingExpiryInMins] [int] NULL,
	[AbsoluteExpiryInMins] [int] NULL,
	[SlidingExpiryCount] [int] NULL,
	[AbsoluteExpiryCount] [int] NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[SlidingCheckInMin] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [core].[SessionSlidingExpiryConfiguration]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[SessionSlidingExpiryConfiguration](
	[Url] [varchar](300) NOT NULL,
	[AllowSlidingExpiry] [bit] NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [core].[SFTPConfig]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[SFTPConfig](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Host] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](100) NULL,
	[Port] [int] NULL,
	[RemoteFilePath] [varchar](50) NULL,
	[DirectoryChange] [char](1) NULL,
	[Archive] [varchar](10) NULL,
	[Section] [varchar](10) NULL,
	[FolderName] [varchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_SFTPConfig] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[SlabDefinition]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[SlabDefinition](
	[SlabDefinitionId] [bigint] IDENTITY(1,1) NOT NULL,
	[Slab] [nvarchar](50) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[ProductCode] [char](4) NOT NULL,
	[BaseCurrency] [char](3) NOT NULL,
	[CurrencyCode] [char](3) NOT NULL,
	[BranchCode] [char](10) NOT NULL,
	[MarginBuy] [numeric](15, 8) NOT NULL,
	[MarginSell] [numeric](15, 8) NOT NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_SlabDefinition] PRIMARY KEY CLUSTERED 
(
	[SlabDefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[StatusMaster]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[StatusMaster](
	[Code] [varchar](5) NOT NULL,
	[Value] [varchar](100) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [core].[UserActivityHistory]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[UserActivityHistory](
	[UserName] [varchar](100) NULL,
	[UserActionType] [varchar](10) NULL,
	[UserActivityCreatedBy] [varchar](30) NULL,
	[UserActivityCreatedDate] [datetime] NULL,
	[SessionId] [varchar](15) NULL,
	[RequestId] [uniqueidentifier] NOT NULL,
	[PageId] [char](5) NULL,
	[ActionId] [char](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [core].[UserBranchDetail]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[UserBranchDetail](
	[UserBranchId] [int] IDENTITY(1,1) NOT NULL,
	[Token] [nvarchar](max) NULL,
	[UserName] [varchar](30) NULL,
	[BranchCode] [varchar](10) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_UserBranchDetail] PRIMARY KEY CLUSTERED 
(
	[UserBranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [core].[UserBranchMapping]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[UserBranchMapping](
	[UserBranchMappingId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[BranchId] [varchar](20) NOT NULL,
	[UserBranchCreatedBy] [varchar](30) NULL,
	[UserBranchCreatedDate] [datetime] NULL,
	[UserBranchModifiedBy] [varchar](30) NULL,
	[UserBranchModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK__UserBran__1D39968F9A79F661] PRIMARY KEY CLUSTERED 
(
	[UserBranchMappingId] ASC,
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[UserMaster]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[UserMaster](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[EmployeeId] [varchar](15) NULL,
	[PasswordHash] [nvarchar](500) NULL,
	[PasswordExpiryDate] [datetime] NULL,
	[PasswordMaxTries] [smallint] NULL,
	[UserFirstName] [varchar](50) NULL,
	[UserMiddleName] [varchar](50) NULL,
	[UserLastName] [varchar](50) NULL,
	[UserEmail] [nvarchar](100) NULL,
	[UserTelephone] [varchar](20) NULL,
	[UserMobile] [varchar](20) NULL,
	[UserIP] [varchar](30) NULL,
	[UserType] [varchar](10) NULL,
	[UserActiveDateFrom] [datetime] NULL,
	[UserLoginMechanism] [varchar](10) NULL,
	[UserIPValidation] [bit] NULL,
	[UserShiftStartTime] [datetime] NULL,
	[UserShiftEndTime] [datetime] NULL,
	[TerminalId] [varchar](10) NULL,
	[MuzainiCardNumber] [varchar](30) NULL,
	[UserStatus] [varchar](30) NULL,
	[UserCreatedBy] [varchar](30) NULL,
	[UserCreatedDate] [datetime] NULL,
	[UserModifiedBy] [varchar](30) NULL,
	[UserModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_UserInfo_1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UC_UserInfo_UserName] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[UserPasswordActivityLog]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[UserPasswordActivityLog](
	[UserPasswordActivityId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NULL,
	[PasswordHash] [nvarchar](500) NULL,
	[PasswordSINo] [smallint] NULL,
	[PasswordCreatedBy] [varchar](530) NULL,
	[PasswordCreatedDate] [datetime] NULL,
 CONSTRAINT [PK_UserPasswordActivityLog] PRIMARY KEY CLUSTERED 
(
	[UserPasswordActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UC_UserPasswordActivityLog_UserName] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[UserRegistration]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[UserRegistration](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Branch] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[IP] [varchar](50) NULL,
	[Password] [varchar](30) NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [varchar](10) NULL,
 CONSTRAINT [PK_UserRegistration] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[UserRoleMapping]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[UserRoleMapping](
	[UserRoleMappingId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[UserName] [varchar](100) NOT NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_UserRoleMapping_1] PRIMARY KEY CLUSTERED 
(
	[UserRoleMappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [core].[UserSessionMapping]    Script Date: 7/20/2023 9:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [core].[UserSessionMapping](
	[UserSessionMappingId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[SessionKey] [varchar](500) NOT NULL,
	[SessionStartTime] [datetime] NOT NULL,
	[SessionEndTime] [datetime] NOT NULL,
	[SlidingExpiryCount] [int] NULL,
	[AbsoluteExpiryCount] [int] NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[SlidingSessionEndTime] [datetime] NULL,
	[SlidingCheckInMin] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountManagerMaster]    Script Date: 7/20/2023 9:17:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountManagerMaster](
	[Code] [varchar](10) NOT NULL,
	[Value] [varchar](50) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountTypeDetails]    Script Date: 7/20/2023 9:17:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountTypeDetails](
	[BANKID] [int] NULL,
	[ACCOUNT_TYPE] [nvarchar](10) NULL,
	[DESCRIPTION] [nvarchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AddressTypeMaster]    Script Date: 7/20/2023 9:18:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressTypeMaster](
	[AddressTypeId] [int] IDENTITY(1,1) NOT NULL,
	[AddressTypeCode] [varchar](5) NOT NULL,
	[AddressType] [varchar](50) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressTypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmountRangeMaster]    Script Date: 7/20/2023 9:18:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmountRangeMaster](
	[Code] [varchar](5) NOT NULL,
	[Description] [varchar](20) NOT NULL,
	[MinimumRange] [decimal](18, 2) NULL,
	[MaximumRange] [decimal](18, 2) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_AmountRangeMaster] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[APIDataFormat]    Script Date: 7/20/2023 9:18:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APIDataFormat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](20) NULL,
	[CreatedBy] [varchar](25) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](25) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[APIRequestMaster]    Script Date: 7/20/2023 9:18:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APIRequestMaster](
	[APIID] [int] IDENTITY(1,1) NOT NULL,
	[APIName] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_APIRequestMaster] PRIMARY KEY CLUSTERED 
(
	[APIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArchivedFileHistory]    Script Date: 7/20/2023 9:18:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArchivedFileHistory](
	[ArchivedFileHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerId] [varchar](15) NOT NULL,
	[Section] [varchar](25) NULL,
	[Type] [varchar](10) NULL,
	[IdentityNumber] [varchar](100) NULL,
	[FilePath] [varchar](150) NOT NULL,
	[AdditionalProperty] [varchar](25) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[OldFilePath] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditTrailLog]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditTrailLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](50) NOT NULL,
	[CorrelationId] [uniqueidentifier] NOT NULL,
	[ServiceCode] [varchar](50) NOT NULL,
	[MethodName] [varchar](50) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[Activity] [varchar](15) NOT NULL,
	[Message] [nvarchar](max) NULL,
	[AuditDateTime] [datetime] NULL,
	[AdditionalProperty] [nvarchar](max) NULL,
	[Changes] [nvarchar](max) NULL,
	[HasEncrypt] [bit] NULL,
	[ValueBefore] [nvarchar](max) NULL,
	[ValueAfter] [nvarchar](max) NULL,
	[Type] [varchar](10) NULL,
 CONSTRAINT [PK_AuditLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuthConfiguration]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthConfiguration](
	[AuthConfigId] [int] IDENTITY(1,1) NOT NULL,
	[BankCode] [int] NULL,
	[AuthName] [varchar](50) NULL,
	[EncryptionAlgorithm] [varchar](200) NULL,
	[DigitalSignature] [bit] NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](100) NULL,
	[APIUrl] [varchar](100) NULL,
	[Env] [varchar](50) NULL,
	[CertificatePath] [varchar](200) NULL,
	[CertificatePassword] [varchar](max) NULL,
 CONSTRAINT [PK__APIConfi__12C15DD34B68A74E] PRIMARY KEY CLUSTERED 
(
	[AuthConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankAccountTypeMapping]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccountTypeMapping](
	[AccountTypeId] [int] IDENTITY(1,1) NOT NULL,
	[AccountType] [varchar](20) NULL,
	[AccountTypeDesc] [varchar](100) NULL,
	[AccountTypeCode] [varchar](10) NULL,
	[BankCode] [varchar](6) NULL,
 CONSTRAINT [PK_AccountTypeMaster] PRIMARY KEY CLUSTERED 
(
	[AccountTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankApiStepsConfig]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankApiStepsConfig](
	[BankCode] [varchar](7) NOT NULL,
	[Authentications] [nvarchar](10) NULL,
	[Encryption] [varchar](10) NULL,
	[Decryption] [nvarchar](10) NULL,
	[ArrayFields] [bit] NULL,
	[BankReqId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BankCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankBranchDetails]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankBranchDetails](
	[BANKID] [int] NULL,
	[BANKCODE] [nvarchar](20) NULL,
	[BENFORGNAME] [nvarchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankDisbursalModeMapping]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankDisbursalModeMapping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Bankcode] [nvarchar](7) NULL,
	[Code] [nvarchar](10) NULL,
	[Value] [nvarchar](100) NULL,
	[BankId] [nvarchar](50) NULL,
	[BankValue] [nvarchar](100) NULL,
	[isActive] [bit] NULL,
	[Created_By] [nvarchar](30) NULL,
	[Created_Date] [datetime] NULL,
	[Modified_By] [nvarchar](30) NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [PK__BankDisb__3214EC2780C26199] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankFieldConditions]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankFieldConditions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BankReqTemplateId] [bigint] NULL,
	[TargetFieldId] [bigint] NULL,
	[TargetFieldValue] [varchar](max) NULL,
	[ConditonalField] [varchar](max) NULL,
	[ConditionOperator] [varchar](50) NULL,
	[ConditionFieldValue] [varchar](max) NULL,
	[LogicalOperator] [varchar](50) NULL,
 CONSTRAINT [PK_TempBankFieldCondition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankFieldMapping]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankFieldMapping](
	[BankFieldMappingId] [int] IDENTITY(1,1) NOT NULL,
	[BankCode] [char](7) NULL,
	[BankReqTemplateId] [int] NULL,
	[SourceField] [varchar](50) NULL,
	[DestinationField] [varchar](50) NULL,
	[D_Datatype] [varchar](50) NULL,
	[D_Format] [nvarchar](100) NULL,
	[MinLength] [int] NULL,
	[MaxLength] [int] NULL,
	[Precision] [int] NULL,
	[ConstantValue] [nvarchar](max) NULL,
	[IsMandatory] [char](1) NULL,
	[IsEnumBased] [bit] NULL,
	[EnumStoredProcedureName] [nvarchar](150) NULL,
	[Position] [int] NULL,
	[TagID] [int] NULL,
	[Created_By] [nvarchar](30) NULL,
	[Created_Date] [datetime] NULL,
	[Modified_By] [nvarchar](30) NULL,
	[Modified_Date] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK__BankFiel__F452D58B09DCFD04] PRIMARY KEY CLUSTERED 
(
	[BankFieldMappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankHeaderMethodDetails]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankHeaderMethodDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Bankcode] [varchar](7) NULL,
	[ApiId] [int] NULL,
	[HeaderName] [varchar](15) NULL,
	[ActionName] [varchar](50) NULL,
	[namespacePrefix] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankHtmlTemplate]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankHtmlTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BankCode] [nvarchar](12) NULL,
	[PdfTemplate] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankIdTypeMaster]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankIdTypeMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BanKCode] [nvarchar](7) NOT NULL,
	[BankId] [nvarchar](50) NOT NULL,
	[BankValue] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__BankIdTy__3214EC07E2457118] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BanKIdTypeMasterMapping]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanKIdTypeMasterMapping](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](4) NULL,
	[BanKIdCode] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankMaster]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankMaster](
	[BankId] [int] IDENTITY(1,1) NOT NULL,
	[BankCode] [varchar](7) NULL,
	[BankName] [nvarchar](100) NULL,
	[BankCodeLegacy] [char](10) NULL,
	[BankCodeV2] [char](10) NULL,
	[CountryName] [nvarchar](20) NULL,
	[CountryCode] [char](2) NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[BankDistrict] [nvarchar](50) NULL,
	[BankCity] [nvarchar](50) NULL,
	[BankState] [nvarchar](50) NULL,
	[BankEmail] [nvarchar](100) NULL,
	[BankContactPhone] [nvarchar](20) NULL,
	[BankContactPerson] [nvarchar](100) NULL,
	[BankSwift] [char](12) NULL,
	[BankMICRCode] [char](9) NULL,
	[BankSortCode] [varchar](10) NULL,
	[BankIBAN] [varchar](30) NULL,
	[BankRouteCode] [varchar](15) NULL,
	[BankRemarks] [nvarchar](100) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK__BankMast__E710188CDC6BECF6] PRIMARY KEY CLUSTERED 
(
	[BankId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankMasterAccountTypeMapping]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankMasterAccountTypeMapping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Bankcode] [nvarchar](6) NULL,
	[Code] [nvarchar](10) NULL,
	[Value] [nvarchar](100) NULL,
	[BankId] [nvarchar](30) NULL,
	[BankValue] [nvarchar](100) NULL,
	[isActive] [bit] NULL,
	[Created_By] [nvarchar](30) NULL,
	[Created_Date] [datetime] NULL,
	[Modified_By] [nvarchar](30) NULL,
	[Modified_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankProductMaster]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankProductMaster](
	[BankProductId] [int] IDENTITY(1,1) NOT NULL,
	[BankCode] [char](7) NOT NULL,
	[BankCodeLegacy] [char](4) NULL,
	[BankName] [nvarchar](100) NULL,
	[UserId] [nvarchar](20) NULL,
	[Password] [nvarchar](50) NULL,
	[ClientId] [nvarchar](50) NULL,
	[ClientSecret] [nvarchar](100) NULL,
	[CorporateAccountNo] [varchar](50) NULL,
	[CorporateId] [varchar](20) NULL,
	[CorporateName] [nvarchar](100) NULL,
	[Token] [varchar](20) NULL,
	[MandateType] [varchar](10) NULL,
	[ClientCountry] [nvarchar](20) NULL,
	[InterfaceType] [varchar](5) NULL,
	[FileName] [varchar](30) NULL,
	[FileType] [varchar](10) NULL,
	[EncryptionType] [varchar](10) NULL,
	[FileNameFormat] [nvarchar](200) NULL,
	[FileNamePrefix] [varchar](25) NULL,
	[FileNameSuffix] [varchar](25) NULL,
	[IsCoverLetter] [bit] NULL,
	[FileFormatType] [varchar](10) NULL,
	[IsZip] [bit] NULL,
	[CurrencyCodes] [varchar](50) NULL,
	[ReceivingAgentCode] [varchar](8) NULL,
	[ReceivingAgentLocationCode] [varchar](12) NULL,
	[AccessCode] [varchar](50) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsHtml] [bit] NULL,
	[IsCurrencyWise] [bit] NULL,
	[IsDaywiseSequence] [bit] NULL,
	[TransactionCount] [int] NULL,
	[SequenceNumber] [int] NULL,
 CONSTRAINT [PK_BankProductMaster] PRIMARY KEY CLUSTERED 
(
	[BankProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankPurposeCodeMapping]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankPurposeCodeMapping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Bankcode] [nvarchar](7) NULL,
	[Code] [nvarchar](10) NULL,
	[Value] [nvarchar](max) NULL,
	[BankId] [nvarchar](30) NULL,
	[BankValue] [nvarchar](max) NULL,
	[isActive] [bit] NULL,
	[Created_By] [nvarchar](30) NULL,
	[Created_Date] [datetime] NULL,
	[Modified_By] [nvarchar](30) NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [PK__BankPurp__3214EC27C9FE5083] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankRequest]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankRequest](
	[BankReqId] [int] IDENTITY(1,1) NOT NULL,
	[BankCode] [int] NOT NULL,
	[RequestMapping] [varchar](max) NULL,
	[APIId] [int] NULL,
	[Order] [int] NULL,
	[ActionVerb] [varchar](10) NULL,
 CONSTRAINT [PK__BankRequ__3214EC07DEFE0EFE] PRIMARY KEY CLUSTERED 
(
	[BankReqId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankRequestTemplate]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankRequestTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BankCode] [char](7) NULL,
	[APIId] [int] NULL,
	[Template] [nvarchar](max) NOT NULL,
	[RootStructure] [nvarchar](max) NULL,
	[RootSchemaStructure] [nvarchar](max) NULL,
	[Schema] [nvarchar](max) NULL,
	[OldSchema] [nvarchar](max) NULL,
	[BankRequestTypeId] [int] NULL,
	[APIDataFormatId] [int] NULL,
	[RequestUrl] [nvarchar](max) NULL,
	[ResponseUrl] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_BankRequestTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankRequestType]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankRequestType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RequestType] [nvarchar](30) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_BankRequestType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankRequestTypeNew]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankRequestTypeNew](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](30) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_BankRequestTypeNew] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankResponseMapper]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankResponseMapper](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BankCode] [varchar](7) NULL,
	[APIID] [int] NULL,
	[ResponseCode] [varchar](100) NULL,
	[SequenceId] [int] NULL,
	[isCollection] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankSourceOfIncomeMaster]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankSourceOfIncomeMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BankId] [nvarchar](10) NULL,
	[BankValue] [varchar](250) NULL,
	[BankCode] [nvarchar](15) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](25) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankSourceOfIncomeMasterMapping]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankSourceOfIncomeMasterMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SrcIncomeId] [int] NULL,
	[BankSrcIncomeId] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](25) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankSpecficEnums]    Script Date: 7/20/2023 9:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankSpecficEnums](
	[BankSpecficEnumID] [int] IDENTITY(1,1) NOT NULL,
	[BankCode] [char](6) NULL,
	[ReqID] [int] NULL,
	[BankFieldMappingID] [int] NULL,
	[Value] [varchar](max) NULL,
	[EnumConst] [nvarchar](50) NULL,
	[EnumValues] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankStatusCodeMapping]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankStatusCodeMapping](
	[StatusMappingId] [int] IDENTITY(1,1) NOT NULL,
	[StatusId] [int] NULL,
	[BankCode] [char](7) NULL,
	[RequestType] [int] NULL,
	[ResponseStatusCode] [nvarchar](50) NULL,
	[StatusDescription] [varchar](max) NULL,
	[CreatedBy] [nvarchar](60) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](60) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankStatusCodeMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankStatusCodeMaster](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusCode] [varchar](10) NULL,
	[StatusName] [varchar](500) NULL,
	[Category] [varchar](50) NULL,
	[CreatedBy] [nvarchar](60) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](60) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BatchHistory]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobID] [nvarchar](500) NULL,
	[BatchID] [nvarchar](500) NULL,
	[BatchStatus] [nvarchar](50) NULL,
	[BatchExecutedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_BatchHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BatchInfo]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BatchID] [varchar](50) NULL,
	[JobID] [nvarchar](50) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_BatchInfo_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneBankStatusMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneBankStatusMaster](
	[Code] [varchar](4) NOT NULL,
	[value] [nvarchar](15) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryAccountType]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryAccountType](
	[Code] [varchar](6) NOT NULL,
	[AccountType] [nvarchar](50) NULL,
	[BankName] [nvarchar](20) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryBankInfo]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryBankInfo](
	[BeneNo] [int] NOT NULL,
	[CustomerId] [nvarchar](15) NOT NULL,
	[BeneAccountName] [nvarchar](180) NOT NULL,
	[BeneBankCode] [nvarchar](30) NOT NULL,
	[BeneBankName] [nvarchar](300) NOT NULL,
	[BeneBankBranchCode] [nvarchar](30) NOT NULL,
	[BeneBankBranchName] [nvarchar](300) NOT NULL,
	[BeneBankAccountNo] [nvarchar](50) NOT NULL,
	[BeneAccountCcyCode] [varchar](3) NOT NULL,
	[BeneBankPOBox] [nvarchar](10) NOT NULL,
	[BeneBankAddress1] [nvarchar](100) NOT NULL,
	[BeneBankAddress2] [nvarchar](100) NOT NULL,
	[BeneBankAddressCity] [nvarchar](50) NOT NULL,
	[BeneBankAddressDistrict] [nvarchar](50) NOT NULL,
	[BeneBankAddressState] [nvarchar](50) NOT NULL,
	[BeneBankAddressCountryCode] [varchar](2) NOT NULL,
	[BeneBankAddressZip] [nvarchar](30) NOT NULL,
	[BeneBankOtherInfo] [nvarchar](100) NULL,
	[BeneBkBranchSwiftCode1] [char](12) NOT NULL,
	[BeneBkBranchSwiftCode2] [char](12) NULL,
	[BeneBkBranchSortCode] [char](12) NOT NULL,
	[BeneBranchId] [nvarchar](12) NOT NULL,
	[IntermediaryBankName] [nvarchar](300) NOT NULL,
	[IntermediaryBankBranchName] [nvarchar](300) NOT NULL,
	[IntermediaryBankSwiftCode] [char](12) NOT NULL,
	[IntermediaryBankId] [nvarchar](12) NOT NULL,
	[IntermediaryBankAccountNo] [nvarchar](50) NOT NULL,
	[BeneDraweeBankCode] [char](7) NOT NULL,
	[BeneDraweeBkBranchCode] [char](12) NOT NULL,
	[BeneBankStatus] [char](5) NOT NULL,
	[BeneIFSC] [nvarchar](30) NULL,
	[BeneMSISDN] [nvarchar](30) NULL,
	[BeneCreatedBy] [varchar](50) NOT NULL,
	[BeneCreatedDate] [datetime] NOT NULL,
	[BeneModifiedBy] [varchar](50) NOT NULL,
	[BeneModifiedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BeneNo] ASC,
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryBankName]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryBankName](
	[Code] [varchar](6) NOT NULL,
	[BankName] [nvarchar](100) NULL,
	[CountryName] [varchar](20) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryBillPaymentInfo]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryBillPaymentInfo](
	[BeneNo] [int] NOT NULL,
	[CustomerId] [nvarchar](15) NOT NULL,
	[BeneBillerName] [nvarchar](60) NULL,
	[BeneBillerShortName] [nvarchar](15) NULL,
	[BeneBillerType] [nvarchar](10) NULL,
	[BeneBillType] [nvarchar](10) NULL,
	[BeneBillerCode] [nvarchar](30) NULL,
	[BeneBillAccountNumber] [nvarchar](50) NULL,
	[BeneBillerAddress] [varchar](100) NULL,
	[BeneBillerCity] [nvarchar](50) NULL,
	[BeneBillerDistrict] [nvarchar](50) NULL,
	[BeneBillerState] [nvarchar](50) NULL,
	[BeneBillerCountry] [nvarchar](2) NULL,
	[BeneBillerZipCode] [nvarchar](30) NULL,
	[BeneBillerPhone] [nvarchar](20) NULL,
	[BeneCreatedBy] [varchar](50) NULL,
	[BeneCreatedDate] [datetime] NULL,
	[BeneModifiedBy] [varchar](50) NULL,
	[BeneModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BeneNo] ASC,
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryDisbursalCode]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryDisbursalCode](
	[Code] [varchar](5) NOT NULL,
	[value] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryIdentityInfo]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryIdentityInfo](
	[BeneNo] [int] NOT NULL,
	[CustomerId] [nvarchar](15) NOT NULL,
	[BeneIdType] [char](4) NOT NULL,
	[BeneIdNumber] [nvarchar](60) NOT NULL,
	[BeneIdOtherType] [char](4) NULL,
	[BeneIdOtherInfo] [nvarchar](500) NULL,
	[BeneIdIssuedBy] [nvarchar](60) NOT NULL,
	[BeneIdIssuedAt] [nvarchar](10) NOT NULL,
	[BeneIdIssueDate] [datetime] NOT NULL,
	[BeneIdExpiryDate] [datetime] NOT NULL,
	[BeneIdPreference] [varchar](100) NOT NULL,
	[BeneIdStatus] [int] NOT NULL,
	[BeneIdCreatedBy] [varchar](50) NOT NULL,
	[BeneIdCreatedDate] [datetime] NOT NULL,
	[BeneIdModifiedBy] [varchar](50) NOT NULL,
	[BeneIdModifiedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BeneNo] ASC,
	[CustomerId] ASC,
	[BeneIdType] ASC,
	[BeneIdNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryIDStatus]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryIDStatus](
	[Code] [varchar](5) NOT NULL,
	[value] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryIdType]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryIdType](
	[Code] [varchar](6) NOT NULL,
	[IDType] [nvarchar](30) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryInfo]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryInfo](
	[BeneNo] [int] NOT NULL,
	[CustomerId] [nvarchar](15) NOT NULL,
	[BeneType] [nvarchar](6) NULL,
	[BeneFirstName] [nvarchar](60) NULL,
	[BeneNameML] [nvarchar](60) NULL,
	[BeneLastName] [nvarchar](60) NOT NULL,
	[BeneRelationship] [nvarchar](30) NULL,
	[BeneNameAr] [nvarchar](300) NOT NULL,
	[BenePOBox] [nvarchar](20) NULL,
	[BeneAddress1] [nvarchar](100) NULL,
	[BeneAddress2] [nvarchar](100) NULL,
	[BeneAddressCity] [nvarchar](100) NOT NULL,
	[BeneAddressDistrict] [nvarchar](50) NOT NULL,
	[BeneAddressState] [nvarchar](100) NOT NULL,
	[BeneAddressCountryCode] [char](2) NOT NULL,
	[BeneAddressZip] [nvarchar](30) NOT NULL,
	[BenePhone] [nvarchar](20) NULL,
	[BeneMobile] [nvarchar](20) NOT NULL,
	[BeneOtherInfo] [nvarchar](500) NULL,
	[BeneDescription] [nvarchar](500) NULL,
	[BeneGender] [nvarchar](10) NULL,
	[BeneDateOfBirth] [datetime] NOT NULL,
	[BeneNationalityCode] [nvarchar](2) NOT NULL,
	[BeneStatus] [char](1) NULL,
	[BeneSourceOfReg] [char](4) NOT NULL,
	[BeneProduct] [varchar](4) NOT NULL,
	[BeneCategory] [varchar](100) NOT NULL,
	[BeneCreatedBy] [varchar](50) NOT NULL,
	[BeneCreatedDate] [datetime] NOT NULL,
	[BeneModifiedBy] [varchar](50) NOT NULL,
	[BeneModifiedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BeneNo] ASC,
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryProduct]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryProduct](
	[Code] [varchar](4) NOT NULL,
	[IdendityType] [nvarchar](100) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryStatus]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryStatus](
	[Code] [varchar](6) NOT NULL,
	[value] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryTransactionType]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryTransactionType](
	[Code] [varchar](5) NOT NULL,
	[value] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryType]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryType](
	[Code] [varchar](4) NOT NULL,
	[value] [varchar](15) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneMSISDNMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneMSISDNMaster](
	[Code] [varchar](10) NOT NULL,
	[value] [nvarchar](15) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BranchMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BranchMaster](
	[branchid] [bigint] IDENTITY(1,1) NOT NULL,
	[branchname] [varchar](100) NULL,
	[headoffice] [varchar](max) NULL,
	[address] [varchar](max) NULL,
	[opentime] [varchar](50) NULL,
	[closetime] [varchar](50) NULL,
	[createdby] [int] NULL,
	[createddate] [datetime] NULL,
	[isactive] [bit] NULL,
	[DifferenceToGMT] [int] NULL,
 CONSTRAINT [PK_BranchMaster] PRIMARY KEY CLUSTERED 
(
	[branchid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BranchSwiftCodeMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BranchSwiftCodeMaster](
	[Code] [varchar](4) NOT NULL,
	[value] [nvarchar](15) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessSectorMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessSectorMaster](
	[Code] [varchar](10) NOT NULL,
	[Value] [varchar](50) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessTypeMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessTypeMaster](
	[Code] [varchar](10) NOT NULL,
	[Value] [varchar](50) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardTypeMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardTypeMaster](
	[CardTypeId] [int] IDENTITY(1,1) NOT NULL,
	[CardTypeCode] [varchar](10) NOT NULL,
	[CardType] [varchar](50) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CardTypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryMaster](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NULL,
	[CategoryDesc] [nvarchar](500) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_CategoryMaster] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CertiificateDetails]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CertiificateDetails](
	[CertificateId] [int] IDENTITY(1,1) NOT NULL,
	[BankCode] [char](6) NULL,
	[ProductCode] [varchar](4) NULL,
	[PrivateKeyPath] [nvarchar](100) NULL,
	[PublicKeyPath] [nvarchar](100) NULL,
	[SecretKey] [nvarchar](max) NULL,
	[UserName] [nvarchar](20) NULL,
	[Password] [nvarchar](20) NULL,
	[ExpiryDate] [datetime] NULL,
	[CertificatePath] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
 CONSTRAINT [PK_CertiificateDetails] PRIMARY KEY CLUSTERED 
(
	[CertificateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ClientId] [nvarchar](5) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Branch] [nvarchar](5) NOT NULL,
	[ClientIP] [nvarchar](30) NULL,
	[Password] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyCategoryMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyCategoryMaster](
	[CompanyCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyCategoryCode] [varchar](10) NOT NULL,
	[CompanyCategory] [varchar](50) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyCategoryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyTypeMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyTypeMaster](
	[CompanyTypeId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyTypeName] [nvarchar](100) NULL,
	[CompanyTypeDesc] [nvarchar](500) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComplianceConfiguration]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComplianceConfiguration](
	[ComplianceId] [int] IDENTITY(1,1) NOT NULL,
	[SourcingCountry] [varchar](2) NULL,
	[CustomerCategory] [nvarchar](4) NULL,
	[Nationality] [varchar](2) NULL,
	[RiskCategory] [varchar](5) NULL,
	[IdType] [varchar](2) NULL,
	[IncomeRange] [varchar](6) NULL,
	[Channel] [varchar](4) NULL,
	[Occupation] [varchar](6) NULL,
	[Product] [varchar](4) NULL,
	[Agent] [char](7) NULL,
	[AmountRange] [varchar](10) NULL,
	[Destination] [varchar](6) NULL,
	[Currency] [varchar](3) NULL,
	[Duration] [varchar](4) NULL,
	[Action] [varchar](10) NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ComplianceConfiguration] PRIMARY KEY CLUSTERED 
(
	[ComplianceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfigurationMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigurationMaster](
	[ConfigurationId] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NULL,
	[Value] [varchar](100) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ConfigurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CorporateCustomerIDType]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorporateCustomerIDType](
	[Code] [varchar](2) NOT NULL,
	[value] [nvarchar](100) NULL,
	[Type] [varchar](10) NULL,
	[Country] [varchar](2) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CorporateCustomerIDTypeMapping]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorporateCustomerIDTypeMapping](
	[MappingId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](2) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[CompanyTypeCode] [nvarchar](100) NULL,
 CONSTRAINT [PK__CorporateCustomerIDTypeMapping] PRIMARY KEY CLUSTERED 
(
	[MappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CorporateRepresentativeDetails]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorporateRepresentativeDetails](
	[CustomerId] [nvarchar](15) NOT NULL,
	[SlNo] [int] NOT NULL,
	[RepresentativeType] [char](5) NOT NULL,
	[RepresentativeFirstName] [nvarchar](60) NOT NULL,
	[RepresentativeMiddleName] [nvarchar](60) NULL,
	[RepresentativeLastName] [nvarchar](60) NOT NULL,
	[RepresentativeContactNumber] [nvarchar](20) NOT NULL,
	[RepresentativeNationality] [char](2) NOT NULL,
	[RepresentativeDateOfBirth] [date] NOT NULL,
	[RepresentativeIDType] [varchar](10) NULL,
	[RepresentativeIDNumber] [nvarchar](100) NOT NULL,
	[RepresentativeCountryOfIssue] [char](2) NOT NULL,
	[RepresentativePlaceOfIssue] [nvarchar](30) NOT NULL,
	[RepresentativeIDIssueDate] [date] NOT NULL,
	[RepresentativeIDExpiryDate] [date] NOT NULL,
	[RepresentativePlaceOfBirth] [nvarchar](100) NOT NULL,
	[RepresentativeImage1] [nvarchar](150) NOT NULL,
	[RepresentativeImage2] [nvarchar](150) NULL,
	[RepresentativeImage3] [nvarchar](150) NULL,
	[RepresentativeIdStatus] [nvarchar](4) NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SlNo] ASC,
	[CustomerId] ASC,
	[RepresentativeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryCodeMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryCodeMaster](
	[CountryCodeA2] [varchar](2) NOT NULL,
	[CountryCodeA3] [varchar](3) NULL,
	[CountryCodeN] [smallint] NULL,
	[CountryName] [nvarchar](100) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryCodeA2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryMaster](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](100) NULL,
	[CountryCode] [nvarchar](10) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_CountryMaster] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CurrencyMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrencyMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](100) NULL,
	[CurrencyCodeN3] [varchar](3) NULL,
	[CurrencyCodeA3] [varchar](3) NULL,
	[CurrencyName] [nvarchar](100) NULL,
	[SpecialTreatment] [bit] NULL,
	[MinorUnit] [varchar](5) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK__Currency__3214EC27B4352812] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAdditionalInfo]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAdditionalInfo](
	[CustomerId] [nvarchar](15) NOT NULL,
	[CustomerDefaultLanguage] [char](2) NULL,
	[CommunicationLanguage] [char](2) NULL,
	[CustomerBranch] [char](10) NOT NULL,
	[CustomerOrgin] [char](4) NULL,
	[CustomerSourceOfRegistration] [nvarchar](20) NOT NULL,
	[CustomerClientIP] [varchar](15) NULL,
	[CustomerAddlContactNo] [nvarchar](20) NULL,
	[CustomerRltnShipManager] [nvarchar](30) NULL,
	[CustomerEmail] [nvarchar](100) NULL,
	[CustomerFax] [nvarchar](20) NULL,
	[CustomerReferralCode] [nvarchar](50) NULL,
	[CustomerReferredBy] [nvarchar](30) NULL,
	[CustomerReferredDate] [date] NULL,
	[CustomerReligion] [nvarchar](100) NOT NULL,
	[CustomerType] [nvarchar](50) NULL,
	[CustomerNotification] [int] NOT NULL,
	[CustomerRemarks] [nvarchar](500) NULL,
	[CustomerDescription] [nvarchar](500) NULL,
	[CustomerPurposeCode] [varchar](5) NOT NULL,
	[CustomerEsign1] [nvarchar](150) NOT NULL,
	[CustomerEsign2] [nvarchar](150) NULL,
	[CustomerPictureFlag] [bit] NOT NULL,
	[CustomerPhoto] [nvarchar](150) NOT NULL,
	[CustomerNationality2] [varchar](2) NULL,
	[CutomerOtherName] [nvarchar](100) NULL,
	[CustomerOtherInfo] [nvarchar](300) NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[CustomerReason] [char](5) NOT NULL,
	[CardExpiryDate] [datetime] NULL,
 CONSTRAINT [PK__Customer__A4AE64D8D4A123DD] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAddressInfo]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAddressInfo](
	[CustomerId] [nvarchar](15) NOT NULL,
	[CustomerAddressType] [char](5) NOT NULL,
	[CustomerAddress1] [nvarchar](100) NOT NULL,
	[CustomerAddress2] [nvarchar](100) NOT NULL,
	[CustomerAddress3] [nvarchar](100) NULL,
	[CustomerCity] [nvarchar](100) NOT NULL,
	[CustomerState] [nvarchar](100) NOT NULL,
	[CustomerZip] [nvarchar](30) NOT NULL,
	[CustomerPoBox] [nvarchar](100) NULL,
	[CustomerPACINumber] [nvarchar](20) NOT NULL,
	[CustomerCountry] [varchar](2) NOT NULL,
	[CustomerArabicFileds] [bit] NOT NULL,
	[CustomerSameAsRegisteredAddress] [bit] NOT NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC,
	[CustomerAddressType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerBankInfo]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerBankInfo](
	[CustomerId] [nvarchar](15) NOT NULL,
	[CustomerBankSlNo] [int] NOT NULL,
	[CustomerBankCode] [varchar](30) NOT NULL,
	[CustomerAccountType] [char](6) NOT NULL,
	[CustomerAccountNoMask] [nvarchar](50) NOT NULL,
	[CustomerAccountNoEncrypt] [nvarchar](500) NOT NULL,
	[CustomerAccountNoHash] [nvarchar](500) NOT NULL,
	[CustomerBankCountry] [nvarchar](500) NOT NULL,
	[CustomerAccountName] [varchar](180) NULL,
	[CustomerAccountCurrency] [char](3) NOT NULL,
	[CustomerBankName] [nvarchar](300) NOT NULL,
	[CustomerBranchName] [nvarchar](300) NOT NULL,
	[CustomerBankStatus] [int] NOT NULL,
	[CustomerBranchCode] [varchar](30) NOT NULL,
	[CustomerBankCreatedBy] [varchar](30) NOT NULL,
	[CustomerBankCreatedDate] [datetime] NULL,
	[CustomerBankModifiedBy] [varchar](30) NULL,
	[CustomerBankModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC,
	[CustomerBankSlNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerBeneficiaryBankDetails]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerBeneficiaryBankDetails](
	[CustomerId] [bigint] NOT NULL,
	[BeneNo] [bigint] NOT NULL,
	[BeneAccountName] [nvarchar](100) NOT NULL,
	[BeneBankCode] [nvarchar](12) NOT NULL,
	[BeneBankName] [nvarchar](120) NOT NULL,
	[BeneBankBranchCode] [nvarchar](12) NOT NULL,
	[BeneBankBranchName] [nvarchar](120) NOT NULL,
	[BeneBankAccountNo] [nvarchar](50) NOT NULL,
	[BeneAccountCcyCode] [varchar](3) NOT NULL,
	[BeneBankPOBox] [nvarchar](10) NOT NULL,
	[BeneBankAddress1] [nvarchar](100) NOT NULL,
	[BeneBankAddress2] [nvarchar](100) NOT NULL,
	[BeneBankAddressCity] [nvarchar](50) NOT NULL,
	[BeneBankAddressDistrict] [nvarchar](50) NOT NULL,
	[BeneBankAddressState] [nvarchar](50) NOT NULL,
	[BeneBankAddressCountryCode] [varchar](2) NOT NULL,
	[BeneBankAddressZip] [nvarchar](30) NOT NULL,
	[BeneBankOtherInfo] [nvarchar](100) NULL,
	[BeneBkBranchSwiftCode1] [char](12) NOT NULL,
	[BeneBkBranchSwiftCode2] [char](12) NULL,
	[BeneBkBranchSortCode] [char](12) NOT NULL,
	[BeneBranchId] [nvarchar](12) NOT NULL,
	[IntermediaryBankName] [nvarchar](120) NOT NULL,
	[IntermediaryBankBranchName] [nvarchar](120) NOT NULL,
	[IntermediaryBankSwiftCode] [char](12) NOT NULL,
	[IntermediaryBankId] [nvarchar](12) NOT NULL,
	[IntermediaryBankAccountNo] [nvarchar](50) NOT NULL,
	[BeneDraweeBankCode] [char](12) NOT NULL,
	[BeneDraweeBkBranchCode] [char](12) NOT NULL,
	[BeneBankStatus] [nvarchar](10) NULL,
	[BeneCreatedBy] [varchar](50) NOT NULL,
	[BeneCreatedDate] [datetime] NOT NULL,
	[BeneModifiedBy] [varchar](50) NOT NULL,
	[BeneModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CustomerBeneficiaryBankDetails] PRIMARY KEY CLUSTERED 
(
	[BeneNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerBeneficiaryDetails]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerBeneficiaryDetails](
	[CustomerNo] [bigint] NOT NULL,
	[BeneNo] [bigint] IDENTITY(100000000000,1) NOT NULL,
	[BeneType] [nvarchar](10) NULL,
	[BeneFirstName] [nvarchar](100) NULL,
	[BeneNameML] [nvarchar](100) NULL,
	[BeneLastName] [nvarchar](100) NOT NULL,
	[BeneNameAr] [nvarchar](300) NOT NULL,
	[BenePOBox] [nvarchar](20) NULL,
	[BeneAddress1] [nvarchar](100) NULL,
	[BeneAddress2] [nvarchar](100) NULL,
	[BeneAddressCity] [nvarchar](50) NOT NULL,
	[BeneAddressDistrict] [nvarchar](50) NOT NULL,
	[BeneAddressState] [nvarchar](50) NOT NULL,
	[BeneAddressCountryCode] [varchar](2) NOT NULL,
	[BeneAddressZip] [nvarchar](30) NOT NULL,
	[BenePhone] [nvarchar](20) NULL,
	[BeneMobile] [nvarchar](20) NOT NULL,
	[BeneOtherInfo] [nvarchar](100) NULL,
	[BeneDescription] [nvarchar](100) NULL,
	[BeneGender] [nvarchar](10) NULL,
	[BeneDateOfBirth] [datetime2](7) NOT NULL,
	[BeneNationalityCode] [nvarchar](2) NOT NULL,
	[BeneStatus] [nvarchar](10) NULL,
	[BeneSourceOfReg] [nvarchar](4) NOT NULL,
	[BeneProduct] [varchar](4) NOT NULL,
	[BeneCreatedBy] [varchar](50) NOT NULL,
	[BeneCreatedDate] [datetime] NOT NULL,
	[BeneModifiedBy] [varchar](50) NOT NULL,
	[BeneModifiedDate] [datetime] NOT NULL,
	[BeneCategory] [varchar](30) NOT NULL,
 CONSTRAINT [PK_CustomerBeneficiaryDetails] PRIMARY KEY CLUSTERED 
(
	[BeneNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerBeneficiaryIdDetails]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerBeneficiaryIdDetails](
	[CustomerId] [bigint] NOT NULL,
	[BeneNo] [bigint] NOT NULL,
	[BeneIdSerialNo] [int] NULL,
	[BeneIdType] [varchar](2) NOT NULL,
	[BeneIdOtherType] [varchar](2) NULL,
	[BeneId] [nvarchar](60) NOT NULL,
	[BeneIdOtherInfo] [nvarchar](100) NULL,
	[BeneIdIssuedBy] [nvarchar](60) NOT NULL,
	[BeneIdIssuedAt] [nvarchar](60) NOT NULL,
	[BeneIdIssueDate] [datetime2](7) NOT NULL,
	[BeneIdExpiryDate] [datetime2](7) NOT NULL,
	[BeneIdPreference] [varchar](100) NOT NULL,
	[BeneIdStatus] [varchar](2) NOT NULL,
	[BeneIdCreatedBy] [varchar](50) NOT NULL,
	[BeneIdCreatedDate] [datetime] NOT NULL,
	[BeneIdModifiedBy] [varchar](50) NOT NULL,
	[BeneIdModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CustomerBeneficiaryIdDetails] PRIMARY KEY CLUSTERED 
(
	[BeneNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerBranchMaster]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerBranchMaster](
	[Code] [varchar](10) NOT NULL,
	[value] [nvarchar](50) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[Country] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerCardsInfo]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCardsInfo](
	[CustomerID] [nvarchar](15) NOT NULL,
	[CustomerCardNumber] [nvarchar](50) NOT NULL,
	[CustomerCardType] [nvarchar](60) NOT NULL,
	[CustomerCardName] [nvarchar](30) NULL,
	[CustomerCardIssueDate] [datetime] NULL,
	[CustomerCardExpiryDate] [datetime] NULL,
	[CustomerCardStatus] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[CustomerCardSlNo] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[CustomerCardType] ASC,
	[CustomerCardNumber] ASC,
	[CustomerCardSlNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerCategory]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCategory](
	[Code] [varchar](1) NOT NULL,
	[value] [nvarchar](15) NULL,
	[Type] [varchar](15) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK__Customer__A25C5AA6EDE40149] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerCorporateInfo]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCorporateInfo](
	[CustomerID] [nvarchar](15) NOT NULL,
	[CompanyType] [char](5) NOT NULL,
	[CompanyCategory] [char](5) NOT NULL,
	[NumberofEmployee] [bigint] NULL,
	[CustomerTypeOfBusiness] [char](5) NULL,
	[CustomerBusinessSector] [char](5) NULL,
	[CustomerNatureOfBusiness] [char](5) NULL,
	[CustomerOtherBusiness] [nvarchar](100) NULL,
	[PaidupCapital] [decimal](15, 3) NULL,
	[WorkingCapital] [decimal](15, 3) NULL,
	[CustomerDateOfIncorporation] [date] NULL,
	[CustomerProductType] [char](5) NULL,
	[CustomerCompanyWebsite] [nvarchar](100) NULL,
	[SubsidiaryCompany] [nvarchar](100) NULL,
	[NumberOfEmployeeSubCompany] [smallint] NULL,
	[CustomerPreviousYearTurnover] [decimal](12, 3) NULL,
	[CustomerListedInStockMarket] [bit] NULL,
	[CustomerStockMarketName] [nvarchar](30) NULL,
	[CustomerStockMarketCountry] [char](2) NULL,
	[GeoLocationLattitude] [decimal](10, 8) NULL,
	[GeoLocationLongitude] [decimal](10, 8) NULL,
	[CustomerLeadInitiator] [nvarchar](60) NULL,
	[CustomerLeadCloser] [nvarchar](60) NULL,
	[CustomerReason] [char](50) NULL,
	[CustomerEDDCompleted] [bit] NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerDesignationOrOccupation]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDesignationOrOccupation](
	[Code] [varchar](6) NOT NULL,
	[value] [nvarchar](200) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerDocTypeMapping]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDocTypeMapping](
	[DocCode] [varchar](4) NOT NULL,
	[Type] [varchar](5) NULL,
	[CompanyType] [varchar](5) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerDocumentInfo]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDocumentInfo](
	[CustomerID] [nvarchar](15) NOT NULL,
	[CustomerDocumentType] [char](5) NOT NULL,
	[CustomerSlNo] [int] NOT NULL,
	[CustomerDocumentPath] [nvarchar](150) NOT NULL,
	[CustomerDocumentRemark] [nvarchar](500) NULL,
	[CustomerDocumentStatus] [bit] NOT NULL,
	[CreatedBy] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[ExpiryDate] [datetime] NULL,
 CONSTRAINT [PK__Customer__7BD7FEDE9718F606] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[CustomerDocumentType] ASC,
	[CustomerSlNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerIdentityInfo]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerIdentityInfo](
	[CustomerId] [nvarchar](15) NOT NULL,
	[IDNumber] [nvarchar](100) NOT NULL,
	[IDType] [char](2) NOT NULL,
	[IDSlNumber] [smallint] NOT NULL,
	[IDPreference] [smallint] NOT NULL,
	[IDIssueDate] [date] NULL,
	[IDExpiryDate] [date] NOT NULL,
	[IDNationality] [char](2) NOT NULL,
	[IDStatus] [int] NOT NULL,
	[VisaType] [char](4) NULL,
	[VisaExpiryDate] [date] NULL,
	[IDImage1Path] [varchar](150) NOT NULL,
	[IDImage2Path] [varchar](150) NULL,
	[IDImage3Path] [varchar](150) NULL,
	[IDImage4Path] [varchar](150) NULL,
	[IDVideoPath] [nvarchar](150) NULL,
	[IdIssuePlace] [nvarchar](100) NULL,
	[IdIssueCountry] [char](2) NOT NULL,
	[CreatedBy] [varchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[IdentityVerified] [bit] NULL,
 CONSTRAINT [PK__Customer__E1892CA4BCAA0971] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC,
	[IDNumber] ASC,
	[IDType] ASC,
	[IDSlNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerIDType]    Script Date: 7/20/2023 9:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerIDType](
	[Code] [varchar](2) NOT NULL,
	[value] [nvarchar](100) NULL,
	[Type] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[country] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerInfo]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerInfo](
	[CustomerId] [nvarchar](15) NOT NULL,
	[CustomerCategory] [char](4) NOT NULL,
	[CustomerStatus] [int] NOT NULL,
	[CustomerStatus2] [int] NULL,
	[CustomerSalute] [nvarchar](10) NOT NULL,
	[CustomerFirstName] [nvarchar](60) NOT NULL,
	[CustomerMiddleName] [nvarchar](60) NULL,
	[CustomerLastName] [nvarchar](60) NOT NULL,
	[CustomerFirstNameMl] [nvarchar](60) NOT NULL,
	[CustomerMiddleNameMl] [nvarchar](60) NULL,
	[CustomerLastNameMl] [nvarchar](60) NOT NULL,
	[CustomerGender] [nvarchar](10) NOT NULL,
	[CustomerDateOfBirth] [date] NOT NULL,
	[CustomerNationality1] [varchar](2) NOT NULL,
	[CustomerPlaceOfBirth] [nvarchar](100) NULL,
	[CustomerMobile] [nvarchar](20) NOT NULL,
	[CustomerPhone] [nvarchar](20) NULL,
	[CustomerLastAccessDate] [datetime] NULL,
	[CustomerGMTDate] [datetime] NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
	[CustomerApprovedBy] [varchar](30) NULL,
	[CustomerApprovedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerKYCInfo]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerKYCInfo](
	[KYCCustomerID] [nvarchar](15) NOT NULL,
	[CustomerEmployer] [nvarchar](300) NULL,
	[CustomerEmployerLocation] [nvarchar](300) NULL,
	[CustomerOccupation] [nvarchar](100) NULL,
	[CustomerOtherOccupation] [nvarchar](100) NULL,
	[CustomerDesignation] [char](6) NULL,
	[CustomerAverageYearlyIncome] [decimal](15, 3) NOT NULL,
	[CustomerAverageMonthlyIncome] [decimal](15, 3) NULL,
	[CustomerSourceOfIncome] [char](7) NULL,
	[CustomerOtherIncome] [decimal](15, 3) NULL,
	[CustomerSourceOfOtherIncome] [nvarchar](100) NULL,
	[CustomerExpectedTrnsCountMonthlyYrly] [nvarchar](10) NOT NULL,
	[CustomerExpectedTrnsCount] [bigint] NOT NULL,
	[CustomerExpectedTrnsValueMonthlyYrly] [nvarchar](10) NOT NULL,
	[CustomerExpectedTrnsValue] [decimal](12, 3) NOT NULL,
	[CustomerServiceType] [char](5) NULL,
	[CustomerResidentType] [char](4) NOT NULL,
	[CustomerPep] [bit] NOT NULL,
	[CustomerPreviouslyInPepPosition] [bit] NOT NULL,
	[CustomerSecondDegreeToPep] [bit] NOT NULL,
	[CustomerPepLocalInter] [varchar](20) NULL,
	[CustomerPepPosition] [nvarchar](80) NULL,
	[CustomerPepRelatives] [varchar](50) NULL,
	[CustomerPepRelnIndegree] [nvarchar](80) NULL,
	[CustomerRiskCategory] [char](5) NOT NULL,
	[BlockedCountries] [nvarchar](800) NOT NULL,
	[CustomerKyc] [bit] NOT NULL,
	[CustomerKycImage] [varchar](150) NOT NULL,
	[CustomerSignedFormPath] [varchar](150) NULL,
	[CustomerKycUploadedBy] [nvarchar](30) NOT NULL,
	[CustomerKycUploadDate] [datetime] NOT NULL,
	[CustomerKycPrintedDate] [datetime] NULL,
	[CustomerVideoKyc] [bit] NOT NULL,
	[CustomerVideoStatus] [bit] NOT NULL,
	[CustomerVideoCreatedDate] [datetime] NOT NULL,
	[CustomerVideoRecordedPath] [nvarchar](150) NULL,
	[CustomerKycApprovedBy] [nvarchar](30) NULL,
	[CustomerKycApprovedDate] [datetime] NULL,
	[CustomerExpiryDate] [date] NOT NULL,
	[CustomerYearlyLimit] [numeric](18, 0) NULL,
	[CustomerVistorLimit] [numeric](18, 0) NULL,
	[CustomerIsSuspected] [bit] NOT NULL,
	[CustomerIsSuspended] [bit] NOT NULL,
	[CustomerSuspiciousStartDate] [datetime] NULL,
	[CustomerSuspiciousEndDate] [datetime] NULL,
	[CustomerRiskScore] [int] NOT NULL,
	[CustomerReasonForRisk] [nvarchar](100) NULL,
	[CustomerRiskCalculatedDate] [datetime] NOT NULL,
	[CustomerMonthlyIncome] [decimal](15, 3) NULL,
	[CustomerKycCreatedBy] [varchar](30) NOT NULL,
	[CustomerKycCreatedDate] [datetime] NOT NULL,
	[CustomerKycModifiedBy] [varchar](30) NULL,
	[CustomerKycModifiedDate] [datetime] NULL,
	[CustomerGeneratedFormPath] [varchar](150) NULL,
	[CustomerPepPositionLocal] [nvarchar](80) NULL,
	[PreviouslyInCustomerPepPosition] [nvarchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[KYCCustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerRequestTypeMapping]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerRequestTypeMapping](
	[CustomerId] [nvarchar](15) NULL,
	[RequestType] [varchar](200) NULL,
	[RequestedDate] [datetime] NULL,
	[ApprovalDate] [datetime] NULL,
	[RejectedDate] [datetime] NULL,
	[RejectedReason] [varchar](max) NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerServiceType]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerServiceType](
	[Code] [varchar](5) NOT NULL,
	[value] [varchar](15) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerStatus]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerStatus](
	[Code] [varchar](5) NOT NULL,
	[Value] [varchar](100) NULL,
	[BitValue] [int] NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK__Customer__A25C5AA620769B2B] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerTagDetails]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerTagDetails](
	[TagId] [int] IDENTITY(1,1) NOT NULL,
	[TaggedRemarks] [varchar](100) NOT NULL,
	[CustomerId] [bigint] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[DepartmentId] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_CustomerTagDetails] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerType]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerType](
	[Code] [varchar](4) NOT NULL,
	[value] [nvarchar](100) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK__Customer__A25C5AA6C8A64885] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustPersonalInfoIndividual]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustPersonalInfoIndividual](
	[CustomerId] [bigint] IDENTITY(1,1) NOT NULL,
	[CardNo] [nvarchar](30) NULL,
	[CustomerGender] [varchar](4) NOT NULL,
	[CustomerSalute] [varchar](4) NOT NULL,
	[CustomerFirstName] [nvarchar](100) NOT NULL,
	[CustomerMiddleName] [nvarchar](100) NULL,
	[CustomerLastName] [nvarchar](100) NOT NULL,
	[CustomerFirstNameAr] [nvarchar](150) NULL,
	[CustomerMiddleNameAr] [nvarchar](150) NULL,
	[CustomerLastNameAr] [nvarchar](150) NULL,
	[CustomerDescription] [nvarchar](300) NULL,
	[CustomerDateOfBirth] [datetime2](7) NULL,
	[CustomerStatus] [char](2) NULL,
	[CustomerAddress1] [nvarchar](100) NOT NULL,
	[CustomerAddress2] [nvarchar](100) NOT NULL,
	[CustomerAddress3] [nvarchar](100) NULL,
	[CustomerAddress1Ar] [nvarchar](150) NULL,
	[CustomerAddress2Ar] [nvarchar](150) NULL,
	[CustomerAddress3Ar] [nvarchar](150) NULL,
	[CustomerCity] [nvarchar](100) NOT NULL,
	[CustomerState] [nvarchar](100) NOT NULL,
	[CustomerCityAr] [nvarchar](100) NULL,
	[CustomerStateAr] [nvarchar](100) NULL,
	[CustomerZip] [nvarchar](30) NULL,
	[CustomerNationality] [varchar](2) NOT NULL,
	[CustomerCountry] [varchar](2) NOT NULL,
	[CustomerPhone] [nvarchar](20) NULL,
	[CustomerFax] [nvarchar](20) NULL,
	[CustomerMobile] [nvarchar](20) NOT NULL,
	[CustomerEmail] [nvarchar](100) NULL,
	[CustomerAdditionalContactNo] [nvarchar](20) NULL,
	[CustomerRelationShipManager] [nvarchar](30) NULL,
	[CustomerPlaceOfBirth] [varchar](2) NOT NULL,
	[CustomerDefaultLanguage] [varchar](2) NULL,
	[CustomerRemark] [nvarchar](400) NULL,
	[CustomerSourceOfRegistration] [nvarchar](20) NULL,
	[CustomerReferredBy] [nvarchar](30) NULL,
	[CustomerReferredDate] [datetime2](7) NULL,
	[CustomerReferredCode] [nvarchar](50) NULL,
	[CustomerCategory] [varchar](4) NOT NULL,
	[CustomerCreatedBy] [nvarchar](30) NULL,
	[CustomerCreatedDate] [datetime] NULL,
	[CustomerModifiedBy] [nvarchar](30) NULL,
	[CustomerModifiedDate] [datetime] NULL,
	[CustomerApprovedBy] [nvarchar](30) NULL,
	[CustomerApprovedDate] [datetime] NULL,
	[CustomerIsActive] [bit] NULL,
	[CustomerReligion] [varchar](4) NULL,
	[CustomerWuCard] [nvarchar](50) NULL,
	[CustomerPostalCode] [nvarchar](30) NULL,
	[CustomerNotification_Sms] [bit] NULL,
	[CustomerNotification_Email] [bit] NULL,
	[CustomerType] [nvarchar](50) NULL,
	[IsArabicRequired] [bit] NULL,
	[Isdrafted] [bit] NULL,
	[CustomerPaciNo] [varchar](25) NULL,
	[CustomerExpiryDate] [datetime] NULL,
 CONSTRAINT [PK_CustPersonalInfoIndividual] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustRiskScoreinfo]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustRiskScoreinfo](
	[CustomerRiskScoreId] [nvarchar](15) NOT NULL,
	[CategoryCode] [varchar](5) NOT NULL,
	[RiskScore] [int] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerRiskScoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DB_Errors]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_Errors](
	[ErrorID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NULL,
	[ErrorNumber] [int] NULL,
	[ErrorState] [int] NULL,
	[ErrorSeverity] [int] NULL,
	[ErrorLine] [int] NULL,
	[ErrorProcedure] [varchar](max) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[ErrorDateTime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepartmentMaster]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentMaster](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentCode] [varchar](10) NOT NULL,
	[DepartmentName] [varchar](100) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DesignationMaster]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesignationMaster](
	[Code] [varchar](6) NOT NULL,
	[value] [nvarchar](200) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentTypeMaster]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentTypeMaster](
	[Code] [varchar](4) NOT NULL,
	[Value] [varchar](150) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileContent]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileContent](
	[FileContentId] [int] IDENTITY(1,1) NOT NULL,
	[FileFormat] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[FileContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileGeneration]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileGeneration](
	[FileGenerationId] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [varchar](100) NULL,
	[BankCode] [varchar](30) NULL,
	[BatchId] [varchar](30) NULL,
	[TransactionCount] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](30) NULL,
	[Status] [varchar](30) NULL,
	[PORefNo] [varchar](15) NULL,
 CONSTRAINT [PK_FileGeneration] PRIMARY KEY CLUSTERED 
(
	[FileGenerationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileUpload]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileUpload](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileId] [nvarchar](50) NULL,
	[FileName] [nvarchar](200) NULL,
	[FilePath] [nvarchar](500) NULL,
	[SizeInKB] [int] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ByteData] [varbinary](max) NULL,
 CONSTRAINT [PK_FileUpload] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GenderMaster]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenderMaster](
	[Code] [varchar](4) NOT NULL,
	[value] [nvarchar](15) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GovernorateMaster]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovernorateMaster](
	[GovernorateId] [int] IDENTITY(1,1) NOT NULL,
	[GovernorateCode] [varchar](10) NOT NULL,
	[Governorate] [varchar](50) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[GovernorateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdendityType]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdendityType](
	[Code] [varchar](5) NOT NULL,
	[IdendityType] [nvarchar](100) NULL,
	[IdentityCategory] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityStatus]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityStatus](
	[Code] [varchar](4) NOT NULL,
	[value] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IDTypeDetails]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IDTypeDetails](
	[BANKID] [int] NULL,
	[ID_TYPE] [nvarchar](10) NULL,
	[DESCRIPTION] [nvarchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdTypeMaster]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdTypeMaster](
	[Code] [varchar](2) NOT NULL,
	[Value] [varchar](150) NULL,
	[Type] [varchar](20) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__IdTypeMa__A25C5AA6D50F3A2F] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IntermediaryBankSwiftCodeMaster]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IntermediaryBankSwiftCodeMaster](
	[Code] [varchar](10) NOT NULL,
	[value] [nvarchar](15) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ISDMaster]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ISDMaster](
	[Code] [nvarchar](10) NOT NULL,
	[CountryCode] [char](2) NULL,
	[Value] [nvarchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobDetails]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobDetails](
	[jobId] [smallint] NOT NULL,
	[jobName] [varchar](50) NOT NULL,
	[cronExp] [varchar](10) NULL,
	[bank] [varchar](10) NULL,
	[jobDesc] [varchar](50) NULL,
	[jobStatus] [tinyint] NULL,
	[createdBy] [varchar](10) NULL,
	[createdOn] [datetime] NULL,
	[modifiedBy] [varchar](10) NULL,
	[modifiedOn] [datetime] NULL,
	[emailId] [smallint] NULL,
	[notificationType] [varchar](10) NULL,
	[env] [varchar](5) NULL,
	[maxRecordFailure] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[jobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobHistory]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobHistory](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[JobID] [nvarchar](500) NULL,
	[JobStatus] [varchar](10) NULL,
	[JobStartTime] [nvarchar](50) NULL,
	[JobEndTime] [nvarchar](50) NULL,
 CONSTRAINT [PK_JobHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobInfo]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobInfo](
	[JobID] [nvarchar](50) NOT NULL,
	[JobName] [nvarchar](50) NULL,
	[CronExp] [nvarchar](50) NULL,
	[EmailId] [nvarchar](50) NULL,
	[ProductCode] [varchar](20) NULL,
	[BankOrExchange] [nvarchar](50) NULL,
	[JobDescription] [nvarchar](50) NULL,
	[JobStatus] [nvarchar](50) NULL,
	[NotificationType] [nvarchar](50) NULL,
	[Env] [nvarchar](50) NULL,
	[MaxRecordFailure] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [nvarchar](50) NULL,
	[BankCode] [nvarchar](30) NULL,
 CONSTRAINT [PK_JobInfo] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LanguageMaster]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LanguageMaster](
	[Code] [varchar](2) NOT NULL,
	[value] [nvarchar](15) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuMaster]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuMaster](
	[menuid] [int] IDENTITY(1,1) NOT NULL,
	[menuname] [nvarchar](100) NULL,
	[submenuname] [nvarchar](100) NULL,
	[icon] [nvarchar](100) NULL,
	[url] [nvarchar](200) NULL,
	[displayorder] [int] NULL,
	[pageid] [int] NULL,
	[createdby] [int] NULL,
	[createddate] [datetime] NULL,
	[isactive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NationalityMaster]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NationalityMaster](
	[NationalityCodeA2] [varchar](2) NOT NULL,
	[NationalitycodeN] [smallint] NULL,
	[NationalityCodeA3] [varchar](3) NULL,
	[NationalityCountry] [nvarchar](100) NULL,
	[Nationality] [nvarchar](100) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NationalityCodeA2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OccupationIncomeMapping]    Script Date: 7/20/2023 9:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OccupationIncomeMapping](
	[OccupationCode] [char](6) NOT NULL,
	[Country] [char](2) NULL,
	[MinIncome] [decimal](12, 3) NULL,
	[MaxIncome] [decimal](12, 3) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OccupationMaster]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OccupationMaster](
	[Code] [varchar](6) NOT NULL,
	[value] [nvarchar](200) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PEPMaster]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PEPMaster](
	[Code] [varchar](10) NOT NULL,
	[Value] [varchar](50) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypeMaster]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypeMaster](
	[Code] [varchar](10) NOT NULL,
	[Value] [varchar](50) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurposeDetails]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurposeDetails](
	[BANKID] [int] NULL,
	[PURPOSE_CODE] [nvarchar](10) NULL,
	[DESCRIPTION] [nvarchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurposeMaster]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurposeMaster](
	[PurposeId] [int] IDENTITY(1,1) NOT NULL,
	[PurposeCode] [varchar](5) NOT NULL,
	[PurposeName] [varchar](100) NULL,
	[PurposeNameAr] [varchar](100) NULL,
	[PurposeCodeLegacy] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PurposeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RateRangeCategory]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RateRangeCategory](
	[Code] [varchar](5) NOT NULL,
	[Value] [varchar](100) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReasonMaster]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReasonMaster](
	[Code] [varchar](10) NOT NULL,
	[Value] [varchar](50) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptProductMapping]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptProductMapping](
	[ReceiptProductMappingId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [varchar](4) NULL,
	[FileName] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepresentativePlaceOfBirthMaster]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepresentativePlaceOfBirthMaster](
	[CountryCodeA2] [varchar](2) NOT NULL,
	[CountryCodeA3] [varchar](3) NULL,
	[CountryCodeN] [smallint] NULL,
	[CountryName] [nvarchar](100) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryCodeA2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepresentativePlaceOfIssueMaster]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepresentativePlaceOfIssueMaster](
	[CountryCodeA2] [varchar](2) NOT NULL,
	[CountryCodeA3] [varchar](3) NULL,
	[CountryCodeN] [smallint] NULL,
	[CountryName] [nvarchar](100) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryCodeA2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepresentativeTypeMaster]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepresentativeTypeMaster](
	[Code] [varchar](10) NOT NULL,
	[Value] [varchar](50) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestTypeMaster]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestTypeMaster](
	[Code] [varchar](5) NOT NULL,
	[Value] [varchar](150) NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResidentType]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResidentType](
	[Code] [varchar](4) NOT NULL,
	[value] [nvarchar](15) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RiskCategoryMaster]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RiskCategoryMaster](
	[CategoryCode] [varchar](5) NOT NULL,
	[CategoryDescription] [varchar](20) NOT NULL,
	[MinimumRange] [int] NULL,
	[MaximumRange] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_RiskCategoryMaster] PRIMARY KEY CLUSTERED 
(
	[CategoryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMaster](
	[roleid] [int] IDENTITY(1,1) NOT NULL,
	[rolename] [nvarchar](50) NULL,
	[roledesc] [nvarchar](100) NULL,
	[createdby] [nvarchar](30) NULL,
	[createddate] [datetime] NULL,
	[modifiedby] [nvarchar](30) NULL,
	[modifieddate] [datetime] NULL,
	[isactive] [bit] NULL,
 CONSTRAINT [PK_RoleMaster] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salutation]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salutation](
	[Code] [varchar](4) NOT NULL,
	[value] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceDetails]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceDetails](
	[BANKID] [int] NULL,
	[SERVCODE] [nvarchar](10) NULL,
	[DESCRIPTION] [nvarchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceTypeMaster]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceTypeMaster](
	[ServiceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceTypeName] [nvarchar](100) NULL,
	[ServiceTypeDesc] [nvarchar](500) NULL,
	[CREATEDBY] [varchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[ISACTIVE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SFTPConfiguration]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFTPConfiguration](
	[SFTPConfigId] [int] IDENTITY(1,1) NOT NULL,
	[AuthConfigId] [int] NULL,
	[IPAddress] [varchar](30) NULL,
	[Port] [varchar](5) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](30) NULL,
	[LocalFilePath] [varchar](250) NULL,
	[RemoteFilePath] [varchar](100) NULL,
	[PrivateKey] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[BankCode] [nvarchar](100) NULL,
 CONSTRAINT [PK_SFTPConfiguration] PRIMARY KEY CLUSTERED 
(
	[SFTPConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SourceDetails]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SourceDetails](
	[BANKID] [int] NULL,
	[SOURCE_CODE] [nvarchar](10) NULL,
	[DESCRIPTION] [nvarchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SourceOfIncomeMaster]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SourceOfIncomeMaster](
	[SrcIncomeId] [int] IDENTITY(1,1) NOT NULL,
	[SrcIncomeCode] [char](7) NOT NULL,
	[SrcIncomeName] [varchar](50) NULL,
	[SrcIncomeNameAr] [varchar](50) NULL,
	[SrcIncomeCodeLegacy] [nvarchar](10) NULL,
	[SrcIncomeType] [char](1) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SrcIncomeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SRC_Backup]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SRC_Backup](
	[SrcIncomeId] [int] IDENTITY(1,1) NOT NULL,
	[SrcIncomeCode] [char](7) NOT NULL,
	[SrcIncomeName] [varchar](50) NULL,
	[SrcIncomeNameAr] [varchar](50) NULL,
	[SrcIncomeCodeLegacy] [nvarchar](10) NULL,
	[SrcIncomeType] [char](1) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[srcbup]    Script Date: 7/20/2023 9:18:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[srcbup](
	[SrcIncomeId] [int] IDENTITY(1,1) NOT NULL,
	[SrcIncomeCode] [char](7) NOT NULL,
	[SrcIncomeName] [varchar](50) NULL,
	[SrcIncomeNameAr] [varchar](50) NULL,
	[SrcIncomeCodeLegacy] [nvarchar](10) NULL,
	[SrcIncomeType] [char](1) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusMaster]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusMaster](
	[Code] [varchar](5) NOT NULL,
	[Value] [varchar](100) NULL,
	[BitValue] [int] NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockMarketCountryMaster]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockMarketCountryMaster](
	[CountryCodeA2] [varchar](2) NOT NULL,
	[CountryCodeA3] [varchar](3) NULL,
	[CountryCodeN] [smallint] NULL,
	[CountryName] [nvarchar](100) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryCodeA2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagConfig]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagConfig](
	[TagConfigId] [int] IDENTITY(1,1) NOT NULL,
	[BankCode] [char](7) NOT NULL,
	[TagName] [nchar](30) NOT NULL,
	[BankReqTemplateId] [int] NULL,
 CONSTRAINT [PK__TAGCONFI__3214EC079C0C5457] PRIMARY KEY CLUSTERED 
(
	[TagConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestDateTime]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestDateTime](
	[DateTimeTest] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionCancelStatusMapping]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionCancelStatusMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BankCode] [nvarchar](15) NULL,
	[TTRefNo] [varchar](15) NULL,
	[ReferenceNo] [varchar](25) NULL,
	[StatusCode] [varchar](15) NULL,
	[Reason] [varchar](max) NULL,
	[TxnCreatedBy] [nvarchar](15) NULL,
	[TxnCancelledDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionComplianceQueue]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionComplianceQueue](
	[TTRefNo] [varchar](15) NOT NULL,
	[ComplianceId] [int] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[Remarks] [varchar](300) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TTRefNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionComplianceQueueTemp]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionComplianceQueueTemp](
	[TTRefNo] [varchar](15) NOT NULL,
	[ComplianceId] [int] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[Remarks] [varchar](300) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TTRefNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionType]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionType](
	[Code] [varchar](6) NOT NULL,
	[value] [varchar](20) NULL,
	[Product] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTFileTransactionDetails]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTFileTransactionDetails](
	[TxnFileFormatId] [int] IDENTITY(1,1) NOT NULL,
	[TransactionDetailId] [int] NOT NULL,
	[ProdTxnRefNo] [bigint] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[ProductName] [nvarchar](30) NULL,
	[TTRefNo] [varchar](15) NULL,
	[TTBranchId] [varchar](10) NULL,
	[TTNo] [varchar](15) NULL,
	[TTPrdId] [char](4) NULL,
	[TxnType] [char](5) NULL,
	[TTSource] [char](4) NULL,
	[TTLocalDateTime] [datetime] NULL,
	[TTValueDate] [datetime] NULL,
	[TTGMTDate] [datetime] NULL,
	[TTSysTimestamp] [datetime] NULL,
	[XchgRateBaseRate] [decimal](8, 6) NULL,
	[TTLCAmount] [decimal](18, 2) NULL,
	[TTLCcy] [char](3) NULL,
	[TTFCAmount] [decimal](12, 3) NULL,
	[TTFCcy] [char](3) NULL,
	[TxnRateSendToReceive] [decimal](8, 6) NULL,
	[TTCommission] [decimal](3, 3) NULL,
	[TTOtherCharges] [decimal](3, 3) NULL,
	[TTBackendCharge] [decimal](3, 3) NULL,
	[TTCardCharge] [decimal](3, 3) NULL,
	[Tax] [decimal](3, 3) NULL,
	[TTDiscount] [decimal](3, 3) NULL,
	[TTNetAmount] [decimal](12, 3) NULL,
	[TTPromoCode] [nvarchar](15) NULL,
	[TTDisbursalMode] [char](5) NULL,
	[TxnStatus] [varchar](30) NULL,
	[TTPurposeCode] [char](4) NULL,
	[TxnPurposeDetails] [nvarchar](50) NULL,
	[TxnCreatedBy] [nvarchar](30) NULL,
	[TxnCreatedDate] [datetime] NULL,
	[TxnModifiedDate] [datetime] NULL,
	[TxnModifiedBy] [nvarchar](30) NULL,
	[TxnPulledDate] [datetime] NULL,
	[TxnPulledStatus] [nvarchar](30) NULL,
	[TxnRejectReason] [nvarchar](max) NULL,
	[BatchID] [varchar](50) NULL,
	[FileName] [varchar](30) NULL,
 CONSTRAINT [PK_TTFileTransactionDetails] PRIMARY KEY CLUSTERED 
(
	[TxnFileFormatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTPaymentMode]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTPaymentMode](
	[Code] [varchar](4) NOT NULL,
	[value] [varchar](15) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTPurpCode]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTPurpCode](
	[Code] [varchar](4) NOT NULL,
	[value] [varchar](50) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTTransactionActivityHistory]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTTransactionActivityHistory](
	[TransactionActivityHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[TransactionDetailId] [int] NOT NULL,
	[TTRefNo] [varchar](15) NULL,
	[ActivityType] [nvarchar](max) NULL,
	[ActiivityKey] [nvarchar](max) NULL,
	[ActivityReason] [nvarchar](max) NULL,
	[ActivityCreatedBy] [nvarchar](max) NULL,
	[ActivityCreatedDate] [datetime] NULL,
 CONSTRAINT [PK_TTTransactionActivityHistory] PRIMARY KEY CLUSTERED 
(
	[TransactionActivityHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTTransactionAPIResponse]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTTransactionAPIResponse](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BankCode] [char](6) NULL,
	[BankResponseStatusCode] [varchar](100) NULL,
	[TypeofRequest] [int] NULL,
	[TTRefNo] [varchar](15) NULL,
	[CreatedBy] [nvarchar](60) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](60) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTTransactionBeneficiaryDetails]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTTransactionBeneficiaryDetails](
	[TransactionBeneficiaryDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[TransactionDetailId] [int] NULL,
	[TTRefNo] [varchar](15) NULL,
	[BenFirstName] [nvarchar](60) NULL,
	[BenMiddleName] [nvarchar](60) NULL,
	[BenLastName] [nvarchar](60) NULL,
	[BenAccName] [nvarchar](180) NULL,
	[BeneAccountNo] [nvarchar](50) NULL,
	[BenBankAccType] [char](6) NULL,
	[BeneBankBranchCode] [char](12) NULL,
	[BenCountry] [char](2) NULL,
	[BenNationality] [char](2) NULL,
	[BenAddress1] [nvarchar](100) NULL,
	[BenAddress2] [nvarchar](100) NULL,
	[BenAddress3] [nvarchar](100) NULL,
	[BenCity] [nvarchar](100) NULL,
	[BenState] [nvarchar](100) NULL,
	[BenPhone] [nvarchar](20) NULL,
	[BenIdType] [char](6) NULL,
	[BenIdRefNo] [nvarchar](35) NULL,
	[BenBankDraweeCode] [char](12) NULL,
	[BenBankCode] [char](12) NULL,
	[Remarks] [nvarchar](250) NULL,
 CONSTRAINT [PK_BankTTTransactionBeneficiaryDetails] PRIMARY KEY CLUSTERED 
(
	[TransactionBeneficiaryDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTTransactionCancelStatusMapping]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTTransactionCancelStatusMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BankCode] [nvarchar](10) NULL,
	[TTRefNo] [varchar](15) NULL,
	[ReferenceNo] [bigint] NULL,
	[StatusCode] [int] NULL,
	[Reason] [varchar](35) NULL,
	[TxnCreatedBy] [nvarchar](1) NULL,
	[TxnCancelledDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTTransactionDetail]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTTransactionDetail](
	[TransactionDetailId] [int] IDENTITY(1,1) NOT NULL,
	[ProdTxnRefNo] [bigint] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[ProductName] [nvarchar](30) NULL,
	[TTRefNo] [varchar](15) NULL,
	[TTBranchId] [varchar](10) NULL,
	[TTNo] [varchar](15) NULL,
	[TTPrdId] [char](4) NULL,
	[TxnType] [char](6) NULL,
	[TTSource] [char](4) NULL,
	[TTLocalDateTime] [datetime] NULL,
	[TTGMTDate] [datetime] NULL,
	[TTSysTimestamp] [datetime] NULL,
	[XchgRateBaseRate] [decimal](8, 6) NULL,
	[TTLCAmount] [decimal](18, 2) NULL,
	[TTLCcy] [char](3) NULL,
	[TTFCAmount] [decimal](12, 3) NULL,
	[TTFCcy] [char](3) NULL,
	[TxnRateSendToReceive] [decimal](8, 6) NULL,
	[TTCommission] [decimal](3, 3) NULL,
	[TTOtherCharges] [decimal](3, 3) NULL,
	[TTBackendCharge] [decimal](3, 3) NULL,
	[TTCardCharge] [decimal](3, 3) NULL,
	[Tax] [decimal](3, 3) NULL,
	[TTDiscount] [decimal](3, 3) NULL,
	[TTNetAmount] [decimal](12, 3) NULL,
	[TTPromoCode] [nvarchar](15) NULL,
	[TTDisbursalMode] [char](5) NULL,
	[TxnStatus] [varchar](30) NULL,
	[TTPurposeCode] [char](6) NULL,
	[TxnPurposeDetails] [nvarchar](50) NULL,
	[TxnCreatedBy] [nvarchar](30) NULL,
	[TxnCreatedDate] [datetime] NULL,
	[TxnModifiedDate] [datetime] NULL,
	[TxnModifiedBy] [nvarchar](30) NULL,
	[TxnRejectReason] [nvarchar](max) NULL,
	[TTValueDate] [datetime] NULL,
	[TokenNo] [varchar](5) NOT NULL,
	[FileName] [varchar](30) NULL,
	[TxnStatusDescription] [varchar](500) NULL,
	[StatusValue] [bigint] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TTTransactionDetail] PRIMARY KEY CLUSTERED 
(
	[TransactionDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTTransactionPaymentMode]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTTransactionPaymentMode](
	[TransactionPaymentModeId] [int] IDENTITY(1,1) NOT NULL,
	[TransactionDetailId] [int] NOT NULL,
	[TTRefNo] [varchar](15) NOT NULL,
	[TTPaymentMode] [char](4) NOT NULL,
	[TxnCashAmount] [decimal](12, 3) NULL,
	[TxnChequeNumber] [nvarchar](20) NULL,
	[TxnChequeAmount] [decimal](12, 3) NULL,
	[TxncardAmount] [decimal](12, 3) NULL,
	[RemBankAcc] [nvarchar](25) NULL,
	[TxnBankTxnDate] [datetime] NULL,
	[TxnBankTxnAmount] [decimal](12, 3) NULL,
	[TxnBankTxnRef] [nvarchar](20) NULL,
 CONSTRAINT [PK_BankTTTransactionPaymentMode] PRIMARY KEY CLUSTERED 
(
	[TransactionPaymentModeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTTransactionRemitterDetails]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTTransactionRemitterDetails](
	[TransactionRemitterDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[TransactionDetailId] [int] NULL,
	[TTRefNo] [varchar](15) NULL,
	[RemCustomerId] [bigint] NULL,
	[RemFirstName] [nvarchar](60) NULL,
	[RemMiddleName] [nvarchar](60) NULL,
	[RemLastName] [nvarchar](60) NULL,
	[RemPhone] [varchar](20) NULL,
	[RemAddress1] [nvarchar](100) NULL,
	[RemAddress2] [nvarchar](100) NULL,
	[RemAddress3] [nvarchar](100) NULL,
	[RemCity] [nvarchar](100) NULL,
	[RemState] [nvarchar](100) NULL,
	[RemCountry] [char](2) NULL,
	[RemNationality] [char](2) NULL,
	[RemMobNo] [nvarchar](20) NULL,
	[RemIdIssuedCntry] [char](2) NULL,
	[RemBenRelCode] [char](5) NULL,
	[RemIdType] [char](5) NULL,
	[RemIdNo] [nvarchar](35) NULL,
	[RemIdIssueDate] [datetime] NULL,
	[RemIdExpiryDate] [datetime] NULL,
	[RemVISAType] [char](4) NULL,
 CONSTRAINT [PK_TTTransactionRemitterDetails] PRIMARY KEY CLUSTERED 
(
	[TransactionRemitterDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TxnStatus]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TxnStatus](
	[Code] [varchar](5) NOT NULL,
	[value] [varchar](30) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
	[StatusValue] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UI_Components]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UI_Components](
	[Id] [int] NOT NULL,
	[Key] [nchar](30) NOT NULL,
	[Format] [nvarchar](100) NULL,
UNIQUE NONCLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UI_Components_old]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UI_Components_old](
	[Id] [int] NOT NULL,
	[Key] [nchar](30) NOT NULL,
	[Format] [nvarchar](100) NULL,
 CONSTRAINT [PK_UI_Components] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UI_Function]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UI_Function](
	[Id] [int] NOT NULL,
	[SourceId] [int] NULL,
	[FieldId] [int] NULL,
	[Value] [varchar](50) NULL,
	[FunctionKey] [char](5) NULL,
	[TargetId] [int] NULL,
	[PageId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UI_Function_old]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UI_Function_old](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SourceId] [int] NULL,
	[FieldId] [int] NULL,
	[Value] [varchar](50) NULL,
	[FunctionKey] [char](5) NULL,
	[TargetId] [int] NULL,
	[PageId] [int] NULL,
 CONSTRAINT [PK_UI_Function] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UI_FunctionMaster]    Script Date: 7/20/2023 9:18:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UI_FunctionMaster](
	[Code] [char](5) NOT NULL,
	[Value] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UI_FunctionMaster_old]    Script Date: 7/20/2023 9:18:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UI_FunctionMaster_old](
	[Code] [char](5) NOT NULL,
	[Value] [varchar](20) NULL,
 CONSTRAINT [PK_UI_FunctionMaster] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UI_Mapping]    Script Date: 7/20/2023 9:18:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UI_Mapping](
	[Id] [int] NOT NULL,
	[Key] [nvarchar](50) NOT NULL,
	[Label] [nvarchar](max) NULL,
	[PageId] [int] NULL,
	[ParentId] [int] NULL,
	[ComponentId] [int] NOT NULL,
	[ComponentType] [varchar](50) NULL,
	[Order] [int] NOT NULL,
	[Placeholder] [nvarchar](100) NULL,
	[MetaTable] [nvarchar](100) NULL,
	[Required] [bit] NULL,
	[Disabled] [bit] NULL,
	[Hide] [bit] NULL,
	[NoOfColumns] [int] NULL,
	[ColSpan] [numeric](2, 1) NULL,
	[RowSpan] [numeric](2, 1) NULL,
	[ColSkip] [int] NULL,
	[RowSkip] [int] NULL,
	[Icon] [nvarchar](50) NULL,
	[Class] [varchar](200) NULL,
	[Remarks] [nvarchar](200) NULL,
	[Value] [nvarchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UI_Mapping_old]    Script Date: 7/20/2023 9:18:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UI_Mapping_old](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](50) NOT NULL,
	[Label] [nvarchar](max) NULL,
	[PageId] [int] NULL,
	[ParentId] [int] NULL,
	[ComponentId] [int] NOT NULL,
	[ComponentType] [varchar](50) NULL,
	[Order] [int] NOT NULL,
	[Placeholder] [nvarchar](100) NULL,
	[MetaTable] [nvarchar](100) NULL,
	[Required] [bit] NULL,
	[Disabled] [bit] NULL,
	[Hide] [bit] NULL,
	[NoOfColumns] [int] NULL,
	[ColSpan] [numeric](2, 1) NULL,
	[RowSpan] [numeric](2, 1) NULL,
	[ColSkip] [int] NULL,
	[RowSkip] [int] NULL,
	[Icon] [nvarchar](50) NULL,
	[Class] [varchar](200) NULL,
	[Remarks] [nvarchar](200) NULL,
	[Value] [nvarchar](100) NULL,
 CONSTRAINT [PK_UI_Mapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UI_PageMaster]    Script Date: 7/20/2023 9:18:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UI_PageMaster](
	[PageId] [int] NOT NULL,
	[PageName] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UI_PageMaster_old]    Script Date: 7/20/2023 9:18:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UI_PageMaster_old](
	[PageId] [int] NOT NULL,
	[PageName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UI_Validation]    Script Date: 7/20/2023 9:18:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UI_Validation](
	[Id] [int] NOT NULL,
	[FieldId] [int] NULL,
	[ValidationId] [char](5) NULL,
	[Value] [nvarchar](200) NULL,
	[ErrorMessage] [nvarchar](1000) NULL,
	[PageId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UI_Validation_old]    Script Date: 7/20/2023 9:18:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UI_Validation_old](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FieldId] [int] NULL,
	[ValidationId] [char](5) NULL,
	[Value] [nvarchar](200) NULL,
	[ErrorMessage] [nvarchar](1000) NULL,
	[PageId] [int] NULL,
 CONSTRAINT [PK_UI_Validation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UI_ValidationMaster]    Script Date: 7/20/2023 9:18:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UI_ValidationMaster](
	[Code] [char](5) NOT NULL,
	[Value] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UI_ValidationMaster_old]    Script Date: 7/20/2023 9:18:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UI_ValidationMaster_old](
	[Code] [char](5) NOT NULL,
	[Value] [nvarchar](30) NULL,
 CONSTRAINT [PK_UI_ValidationMaster] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 7/20/2023 9:18:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[userid] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [varchar](100) NULL,
	[firstname] [varchar](50) NULL,
	[middlename] [nvarchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[email] [varchar](150) NULL,
	[mobile] [numeric](18, 0) NULL,
	[branchid] [bigint] NULL,
	[countryid] [bigint] NULL,
	[createdby] [nvarchar](30) NULL,
	[createddate] [datetime] NULL,
	[modifiedby] [nvarchar](30) NULL,
	[modifieddate] [datetime] NULL,
	[isactive] [bit] NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VISAType]    Script Date: 7/20/2023 9:18:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VISAType](
	[Code] [varchar](4) NOT NULL,
	[value] [varchar](15) NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [nvarchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](30) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TT].[FileTransctionAuditLog]    Script Date: 7/20/2023 9:18:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TT].[FileTransctionAuditLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](50) NULL,
	[MethodName] [varchar](50) NULL,
	[Action] [varchar](150) NULL,
	[ValueBefore] [varchar](50) NULL,
	[ValueAfter] [varchar](50) NULL,
	[BatchId] [varchar](30) NULL,
	[JobId] [varchar](30) NULL,
	[TTRefNo] [varchar](50) NULL,
	[AuditDateTime] [datetime] NULL,
 CONSTRAINT [PK_TT.FileTransctionAuditLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TT].[TTTempAPITransactionDetail]    Script Date: 7/20/2023 9:18:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TT].[TTTempAPITransactionDetail](
	[TxnAPIID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionDetailId] [int] NOT NULL,
	[ProdTxnRefNo] [bigint] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[ProductName] [nvarchar](30) NULL,
	[TTRefNo] [varchar](15) NULL,
	[TTBranchId] [varchar](10) NULL,
	[TTNo] [varchar](15) NULL,
	[TTPrdId] [char](4) NULL,
	[TxnType] [char](6) NULL,
	[TTSource] [char](4) NULL,
	[TTLocalDateTime] [datetime] NULL,
	[TTGMTDate] [datetime] NULL,
	[TTSysTimestamp] [datetime] NULL,
	[XchgRateBaseRate] [decimal](8, 6) NULL,
	[TTLCAmount] [decimal](12, 3) NULL,
	[TTLCcy] [char](3) NULL,
	[TTFCAmount] [decimal](12, 3) NULL,
	[TTFCcy] [char](3) NULL,
	[TxnRateSendToReceive] [decimal](8, 6) NULL,
	[TTCommission] [decimal](3, 3) NULL,
	[TTOtherCharges] [decimal](3, 3) NULL,
	[TTBackendCharge] [decimal](3, 3) NULL,
	[TTCardCharge] [decimal](3, 3) NULL,
	[Tax] [decimal](3, 3) NULL,
	[TTDiscount] [decimal](3, 3) NULL,
	[TTNetAmount] [decimal](12, 3) NULL,
	[TTPromoCode] [nvarchar](15) NULL,
	[TTDisbursalMode] [char](5) NULL,
	[TxnStatus] [varchar](30) NULL,
	[TTPurposeCode] [char](6) NULL,
	[TxnPurposeDetails] [nvarchar](50) NULL,
	[TxnCreatedBy] [nvarchar](30) NULL,
	[TxnCreatedDate] [datetime] NULL,
	[TxnModifiedDate] [datetime] NULL,
	[TxnModifiedBy] [nvarchar](30) NULL,
	[TxnRejectReason] [varchar](50) NULL,
	[TTValueDate] [datetime] NULL,
	[TxnStatusDescription] [varchar](500) NULL,
 CONSTRAINT [PK_TTTransactionDetail] PRIMARY KEY CLUSTERED 
(
	[TxnAPIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [aml].[ComplianceFilterConfiguration] ADD  DEFAULT ('') FOR [TypeId]
GO
ALTER TABLE [dbo].[BankApiStepsConfig] ADD  DEFAULT ((1)) FOR [BankReqId]
GO
ALTER TABLE [dbo].[BankDisbursalModeMapping] ADD  CONSTRAINT [DF__BankDisbu__Creat__0C26B6F1]  DEFAULT (getdate()) FOR [Created_Date]
GO
ALTER TABLE [dbo].[BankDisbursalModeMapping] ADD  CONSTRAINT [DF__BankDisbu__Modif__0D1ADB2A]  DEFAULT (getdate()) FOR [Modified_Date]
GO
ALTER TABLE [dbo].[BankPurposeCodeMapping] ADD  CONSTRAINT [DF__BankPurpo__Creat__11DF9047]  DEFAULT (getdate()) FOR [Created_Date]
GO
ALTER TABLE [dbo].[BankPurposeCodeMapping] ADD  CONSTRAINT [DF__BankPurpo__Modif__12D3B480]  DEFAULT (getdate()) FOR [Modified_Date]
GO
ALTER TABLE [dbo].[CustomerAdditionalInfo] ADD  DEFAULT ('RS001') FOR [CustomerReason]
GO
ALTER TABLE [dbo].[CustomerBeneficiaryDetails] ADD  DEFAULT ('') FOR [BeneCategory]
GO
ALTER TABLE [dbo].[CustomerIDType] ADD  DEFAULT ('KW') FOR [country]
GO
ALTER TABLE [dbo].[TTTransactionDetail] ADD  DEFAULT ((1)) FOR [StatusValue]
GO
ALTER TABLE [aml].[BlockListConfigurations]  WITH CHECK ADD  CONSTRAINT [FK_BlockListConfigurations_ComplianceType] FOREIGN KEY([ComplainceType])
REFERENCES [aml].[ComplianceType] ([TypeId])
GO
ALTER TABLE [aml].[BlockListConfigurations] CHECK CONSTRAINT [FK_BlockListConfigurations_ComplianceType]
GO
ALTER TABLE [aml].[ComplianceConfigurations]  WITH CHECK ADD  CONSTRAINT [FK_ComplianceConfigurations_ComplianceInstanceConfig] FOREIGN KEY([Groupid])
REFERENCES [aml].[ComplianceInstanceConfig] ([GroupId])
GO
ALTER TABLE [aml].[ComplianceConfigurations] CHECK CONSTRAINT [FK_ComplianceConfigurations_ComplianceInstanceConfig]
GO
ALTER TABLE [aml].[ComplianceFilterConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_ComplianceFilterConfiguration_ComplianceConfigurations] FOREIGN KEY([ConfigurationId])
REFERENCES [aml].[ComplianceConfigurations] ([ConfigurationId])
GO
ALTER TABLE [aml].[ComplianceFilterConfiguration] CHECK CONSTRAINT [FK_ComplianceFilterConfiguration_ComplianceConfigurations]
GO
ALTER TABLE [core].[UserPasswordActivityLog]  WITH CHECK ADD  CONSTRAINT [FK_UserPasswordActivityLog_UserInfo] FOREIGN KEY([UserName])
REFERENCES [core].[UserMaster] ([UserName])
GO
ALTER TABLE [core].[UserPasswordActivityLog] CHECK CONSTRAINT [FK_UserPasswordActivityLog_UserInfo]
GO
ALTER TABLE [dbo].[BankFieldMapping]  WITH CHECK ADD  CONSTRAINT [FK__BankField__TagID__66161CA2] FOREIGN KEY([TagID])
REFERENCES [dbo].[TagConfig] ([TagConfigId])
GO
ALTER TABLE [dbo].[BankFieldMapping] CHECK CONSTRAINT [FK__BankField__TagID__66161CA2]
GO
ALTER TABLE [dbo].[BankRequest]  WITH CHECK ADD  CONSTRAINT [FK_BankRequest_APIRequestMaster] FOREIGN KEY([APIId])
REFERENCES [dbo].[APIRequestMaster] ([APIID])
GO
ALTER TABLE [dbo].[BankRequest] CHECK CONSTRAINT [FK_BankRequest_APIRequestMaster]
GO
ALTER TABLE [dbo].[BankSpecficEnums]  WITH CHECK ADD  CONSTRAINT [FK__BankSpecf__ReqID__7B663F43] FOREIGN KEY([ReqID])
REFERENCES [dbo].[BankRequestTemplate] ([Id])
GO
ALTER TABLE [dbo].[BankSpecficEnums] CHECK CONSTRAINT [FK__BankSpecf__ReqID__7B663F43]
GO
ALTER TABLE [dbo].[BatchInfo]  WITH CHECK ADD  CONSTRAINT [FK__BatchInfo__JobID__50E5F592] FOREIGN KEY([JobID])
REFERENCES [dbo].[JobInfo] ([JobID])
GO
ALTER TABLE [dbo].[BatchInfo] CHECK CONSTRAINT [FK__BatchInfo__JobID__50E5F592]
GO
ALTER TABLE [dbo].[CustomerBeneficiaryBankDetails]  WITH CHECK ADD  CONSTRAINT [FK_CustomerBeneficiaryBankDetails] FOREIGN KEY([BeneNo])
REFERENCES [dbo].[CustomerBeneficiaryDetails] ([BeneNo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerBeneficiaryBankDetails] CHECK CONSTRAINT [FK_CustomerBeneficiaryBankDetails]
GO
ALTER TABLE [dbo].[CustomerBeneficiaryBankDetails]  WITH CHECK ADD  CONSTRAINT [FK_CustomerBeneficiaryBankDetails_CustPersonalInfoIndividual] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustPersonalInfoIndividual] ([CustomerId])
GO
ALTER TABLE [dbo].[CustomerBeneficiaryBankDetails] CHECK CONSTRAINT [FK_CustomerBeneficiaryBankDetails_CustPersonalInfoIndividual]
GO
ALTER TABLE [dbo].[CustomerBeneficiaryDetails]  WITH CHECK ADD  CONSTRAINT [FK_CustomerBeneficiaryDetails_CustPersonalInfoIndividual] FOREIGN KEY([CustomerNo])
REFERENCES [dbo].[CustPersonalInfoIndividual] ([CustomerId])
GO
ALTER TABLE [dbo].[CustomerBeneficiaryDetails] CHECK CONSTRAINT [FK_CustomerBeneficiaryDetails_CustPersonalInfoIndividual]
GO
ALTER TABLE [dbo].[CustomerBeneficiaryIdDetails]  WITH CHECK ADD  CONSTRAINT [FK_CustomerBeneficiaryIdDetails] FOREIGN KEY([BeneNo])
REFERENCES [dbo].[CustomerBeneficiaryDetails] ([BeneNo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerBeneficiaryIdDetails] CHECK CONSTRAINT [FK_CustomerBeneficiaryIdDetails]
GO
ALTER TABLE [dbo].[CustomerBeneficiaryIdDetails]  WITH CHECK ADD  CONSTRAINT [FK_CustomerBeneficiaryIdDetails_CustPersonalInfoIndividual] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustPersonalInfoIndividual] ([CustomerId])
GO
ALTER TABLE [dbo].[CustomerBeneficiaryIdDetails] CHECK CONSTRAINT [FK_CustomerBeneficiaryIdDetails_CustPersonalInfoIndividual]
GO
ALTER TABLE [dbo].[ReceiptProductMapping]  WITH CHECK ADD FOREIGN KEY([ProductCode])
REFERENCES [dbo].[BeneficiaryProduct] ([Code])
GO
ALTER TABLE [dbo].[SFTPConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_SFTPConfiguration_AuthConfiguration] FOREIGN KEY([AuthConfigId])
REFERENCES [dbo].[AuthConfiguration] ([AuthConfigId])
GO
ALTER TABLE [dbo].[SFTPConfiguration] CHECK CONSTRAINT [FK_SFTPConfiguration_AuthConfiguration]
GO
ALTER TABLE [dbo].[TTFileTransactionDetails]  WITH CHECK ADD  CONSTRAINT [FK_TTFileTransactionDetails_TTTransactionDetail] FOREIGN KEY([TransactionDetailId])
REFERENCES [dbo].[TTTransactionDetail] ([TransactionDetailId])
GO
ALTER TABLE [dbo].[TTFileTransactionDetails] CHECK CONSTRAINT [FK_TTFileTransactionDetails_TTTransactionDetail]
GO
ALTER TABLE [dbo].[TTTransactionActivityHistory]  WITH CHECK ADD  CONSTRAINT [FK_TTTransactionActivityHistory_TTTransactionDetail] FOREIGN KEY([TransactionDetailId])
REFERENCES [dbo].[TTTransactionDetail] ([TransactionDetailId])
GO
ALTER TABLE [dbo].[TTTransactionActivityHistory] CHECK CONSTRAINT [FK_TTTransactionActivityHistory_TTTransactionDetail]
GO
ALTER TABLE [dbo].[TTTransactionBeneficiaryDetails]  WITH CHECK ADD  CONSTRAINT [FK_BankTTTransactionBeneficiaryDetails_TTTransactionDetail] FOREIGN KEY([TransactionDetailId])
REFERENCES [dbo].[TTTransactionDetail] ([TransactionDetailId])
GO
ALTER TABLE [dbo].[TTTransactionBeneficiaryDetails] CHECK CONSTRAINT [FK_BankTTTransactionBeneficiaryDetails_TTTransactionDetail]
GO
ALTER TABLE [dbo].[TTTransactionPaymentMode]  WITH CHECK ADD  CONSTRAINT [FK_BankTTTransactionPaymentMode_TTTransactionDetail] FOREIGN KEY([TransactionDetailId])
REFERENCES [dbo].[TTTransactionDetail] ([TransactionDetailId])
GO
ALTER TABLE [dbo].[TTTransactionPaymentMode] CHECK CONSTRAINT [FK_BankTTTransactionPaymentMode_TTTransactionDetail]
GO
ALTER TABLE [dbo].[TTTransactionRemitterDetails]  WITH CHECK ADD  CONSTRAINT [FK_TTTransactionRemitterDetails_TTTransactionDetail] FOREIGN KEY([TransactionDetailId])
REFERENCES [dbo].[TTTransactionDetail] ([TransactionDetailId])
GO
ALTER TABLE [dbo].[TTTransactionRemitterDetails] CHECK CONSTRAINT [FK_TTTransactionRemitterDetails_TTTransactionDetail]
GO
