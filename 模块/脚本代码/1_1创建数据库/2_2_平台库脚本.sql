USE [RYPlatformDB]
GO
/****** 对象:  Table [dbo].[PersonalTableFee]    脚本日期: 03/17/2017 10:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalTableFee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KindID] [int] NULL,
	[DrawCountLimit] [int] NOT NULL CONSTRAINT [DF_PersonalTableFee_DrawCountLimit]  DEFAULT ((0)),
	[DrawTimeLimit] [int] NOT NULL CONSTRAINT [DF_PersonalTableFee_DrawTimeLimit]  DEFAULT ((0)),
	[TableFee] [bigint] NOT NULL CONSTRAINT [DF_PersonalTableFee_TableFee]  DEFAULT ((0)),
	[IniScore] [bigint] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_SystemStatusInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalTableFee', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'局数限制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalTableFee', @level2type=N'COLUMN',@level2name=N'DrawCountLimit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间限制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalTableFee', @level2type=N'COLUMN',@level2name=N'DrawTimeLimit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalTableFee', @level2type=N'COLUMN',@level2name=N'TableFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'初始分数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalTableFee', @level2type=N'COLUMN',@level2name=N'IniScore'
GO
/****** 对象:  Table [dbo].[SigninConfig]    脚本日期: 03/17/2017 10:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SigninConfig](
	[DayID] [int] NOT NULL,
	[RewardGold] [bigint] NOT NULL CONSTRAINT [DF_SigninConfig_RewardGold]  DEFAULT ((0)),
 CONSTRAINT [PK_SigninConfig] PRIMARY KEY CLUSTERED 
(
	[DayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签到标识[天]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SigninConfig', @level2type=N'COLUMN',@level2name=N'DayID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖励金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SigninConfig', @level2type=N'COLUMN',@level2name=N'RewardGold'
GO
/****** 对象:  Table [dbo].[OnLineStatusInfo]    脚本日期: 03/17/2017 10:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnLineStatusInfo](
	[KindID] [int] NOT NULL,
	[ServerID] [int] NOT NULL,
	[OnLineCount] [int] NOT NULL,
	[InsertDateTime] [datetime] NOT NULL CONSTRAINT [DF_OnLineStatusInfo_InsertDateTime]  DEFAULT (getdate()),
	[ModifyDateTime] [datetime] NOT NULL CONSTRAINT [DF_OnLineStatusInfo_ModifyDateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_OnLineStatusInfo_ID] PRIMARY KEY CLUSTERED 
(
	[KindID] ASC,
	[ServerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineStatusInfo', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineStatusInfo', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineStatusInfo', @level2type=N'COLUMN',@level2name=N'OnLineCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'插入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineStatusInfo', @level2type=N'COLUMN',@level2name=N'InsertDateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineStatusInfo', @level2type=N'COLUMN',@level2name=N'ModifyDateTime'
GO
/****** 对象:  Table [dbo].[GlobalPlayPresent]    脚本日期: 03/17/2017 10:11:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalPlayPresent](
	[ServerID] [int] NOT NULL,
	[PresentMember] [nvarchar](50) NOT NULL CONSTRAINT [DF_GlobalPlayPresent_PresentMember]  DEFAULT (''),
	[MaxDatePresent] [int] NOT NULL CONSTRAINT [DF_GlobalPlayPresent_MaxGrantDateScore]  DEFAULT ((0)),
	[MaxPresent] [int] NOT NULL CONSTRAINT [DF_GlobalPlayPresent_MaxGrantScore]  DEFAULT ((0)),
	[CellPlayPresnet] [int] NOT NULL CONSTRAINT [DF_GlobalPlayPresent_CellPlayPresnet]  DEFAULT ((0)),
	[CellPlayTime] [int] NOT NULL CONSTRAINT [DF_GlobalPlayPresent_CellPlayTime]  DEFAULT ((0)),
	[StartPlayTime] [int] NOT NULL CONSTRAINT [DF_GlobalPlayPresent_StartPlayTime]  DEFAULT ((0)),
	[CellOnlinePresent] [int] NOT NULL CONSTRAINT [DF_GlobalPlayPresent_CellOnlinePresent]  DEFAULT ((0)),
	[CellOnlineTime] [int] NOT NULL CONSTRAINT [DF_GlobalPlayPresent_CellOnlineTime]  DEFAULT ((0)),
	[StartOnlineTime] [int] NOT NULL CONSTRAINT [DF_GlobalPlayPresent_StartOnlineTime]  DEFAULT ((0)),
	[IsPlayPresent] [tinyint] NOT NULL CONSTRAINT [DF_GlobalPlayPresent_IsPlayPresent]  DEFAULT ((0)),
	[IsOnlinePresent] [tinyint] NOT NULL CONSTRAINT [DF_GlobalPlayPresent_IsOnlinePresent]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_GlobalPlayPresent_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_GlobalPlayPresent_1] PRIMARY KEY CLUSTERED 
(
	[ServerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalPlayPresent', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送会员范围' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalPlayPresent', @level2type=N'COLUMN',@level2name=N'PresentMember'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单日封顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalPlayPresent', @level2type=N'COLUMN',@level2name=N'MaxDatePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大封顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalPlayPresent', @level2type=N'COLUMN',@level2name=N'MaxPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏泡分单元值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalPlayPresent', @level2type=N'COLUMN',@level2name=N'CellPlayPresnet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏泡分单元时间(秒)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalPlayPresent', @level2type=N'COLUMN',@level2name=N'CellPlayTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏泡分启动时间(秒)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalPlayPresent', @level2type=N'COLUMN',@level2name=N'StartPlayTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线泡分单元值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalPlayPresent', @level2type=N'COLUMN',@level2name=N'CellOnlinePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线泡分单元时间(秒)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalPlayPresent', @level2type=N'COLUMN',@level2name=N'CellOnlineTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线泡分启始时间(秒)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalPlayPresent', @level2type=N'COLUMN',@level2name=N'StartOnlineTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启游戏泡分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalPlayPresent', @level2type=N'COLUMN',@level2name=N'IsPlayPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启在线泡分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalPlayPresent', @level2type=N'COLUMN',@level2name=N'IsOnlinePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GlobalPlayPresent', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[OnLineStreamInfo]    脚本日期: 03/17/2017 10:11:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnLineStreamInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MachineID] [nvarchar](32) NOT NULL,
	[MachineServer] [nvarchar](32) NOT NULL,
	[InsertDateTime] [datetime] NOT NULL CONSTRAINT [DF_OnLineStreamInfo_InsertDateTime]  DEFAULT (getdate()),
	[OnLineCountSum] [int] NOT NULL,
	[AndroidCountSum] [int] NOT NULL CONSTRAINT [DF_OnLineStreamInfo_AndroidCountSum]  DEFAULT ((0)),
	[OnLineCountKind] [nvarchar](2048) NOT NULL,
	[AndroidCountKind] [nvarchar](2048) NOT NULL CONSTRAINT [DF_OnLineStreamInfo_AndroidCountKind]  DEFAULT (''),
 CONSTRAINT [PK_OnLineStreamInfo_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineStreamInfo', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机器标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineStreamInfo', @level2type=N'COLUMN',@level2name=N'MachineID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机器名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineStreamInfo', @level2type=N'COLUMN',@level2name=N'MachineServer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'插入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineStreamInfo', @level2type=N'COLUMN',@level2name=N'InsertDateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineStreamInfo', @level2type=N'COLUMN',@level2name=N'OnLineCountSum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OnLineStreamInfo', @level2type=N'COLUMN',@level2name=N'OnLineCountKind'
GO
/****** 对象:  Table [dbo].[GameProperty]    脚本日期: 03/17/2017 10:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameProperty](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](31) NOT NULL CONSTRAINT [DF_GameProperty_Name]  DEFAULT (''),
	[Kind] [int] NOT NULL CONSTRAINT [DF_GameProperty_Kind]  DEFAULT ((0)),
	[Cash] [decimal](18, 2) NOT NULL CONSTRAINT [DF_GameProperty_Cash]  DEFAULT ((0.00)),
	[Gold] [bigint] NOT NULL CONSTRAINT [DF_GameProperty_Gold]  DEFAULT ((0)),
	[UserMedal] [bigint] NOT NULL CONSTRAINT [DF_GameProperty_UserMedal]  DEFAULT ((0)),
	[LoveLiness] [bigint] NOT NULL CONSTRAINT [DF_GameProperty_LoveLiness]  DEFAULT ((0)),
	[UseArea] [tinyint] NOT NULL CONSTRAINT [DF_GameProperty_UseArea]  DEFAULT ((0)),
	[ServiceArea] [tinyint] NOT NULL CONSTRAINT [DF_GameProperty_ServiceArea]  DEFAULT ((0)),
	[BuyResultsGold] [bigint] NOT NULL CONSTRAINT [DF_GameProperty_BuyResultsGold]  DEFAULT ((0)),
	[SendLoveLiness] [bigint] NOT NULL CONSTRAINT [DF_GameProperty_SendLoveLiness]  DEFAULT ((0)),
	[RecvLoveLiness] [bigint] NOT NULL CONSTRAINT [DF_GameProperty_RecvLoveLiness]  DEFAULT ((0)),
	[UseResultsGold] [bigint] NOT NULL CONSTRAINT [DF_GameProperty_UseResultsGold]  DEFAULT ((0)),
	[UseResultsValidTime] [int] NOT NULL CONSTRAINT [DF_GameProperty_UseResultsValidTime]  DEFAULT ((0)),
	[UseResultsValidTimeScoreMultiple] [int] NOT NULL,
	[UseResultsGiftPackage] [int] NOT NULL CONSTRAINT [DF_GameProperty_UseResultsGiftPackage]  DEFAULT ((0)),
	[RegulationsInfo] [nvarchar](128) NOT NULL CONSTRAINT [DF_GameProperty_RegulationsInfo]  DEFAULT (''),
	[Recommend] [tinyint] NOT NULL CONSTRAINT [DF_GameProperty_Recommend]  DEFAULT ((0)),
	[SortID] [int] NOT NULL CONSTRAINT [DF_GameProperty_SortID]  DEFAULT ((0)),
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_GameProperty_Nullity]  DEFAULT ((0)),
 CONSTRAINT [PK_GameProperty] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具类型（1礼物2宝石3双倍卡4护身卡5防踢卡6vip7大喇叭8小喇叭9负分清零10逃跑清零11会员礼包）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'Kind'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具购买价格-游戏豆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'Cash'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具购买价格-金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'Gold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具购买价格-元宝' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'UserMedal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具购买价格-魅力值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'LoveLiness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具使用范围，1大厅,2房间,4游戏中' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'UseArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具作用范围，1自己,2除自己玩家' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'ServiceArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用者增加魅力' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'SendLoveLiness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被使用者增加魅力' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'RecvLoveLiness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用增加金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'UseResultsGold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用持续时间，单位秒' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'UseResultsValidTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用有效时间内积分倍率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'UseResultsValidTimeScoreMultiple'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否成为礼包' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'UseResultsGiftPackage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具详细描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'RegulationsInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐1推荐，0不推荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'Recommend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'SortID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否下架' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameProperty', @level2type=N'COLUMN',@level2name=N'Nullity'
GO
/****** 对象:  Table [dbo].[GameKindItem]    脚本日期: 03/17/2017 10:10:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameKindItem](
	[KindID] [int] NOT NULL,
	[GameID] [int] NOT NULL,
	[TypeID] [int] NOT NULL,
	[JoinID] [int] NOT NULL CONSTRAINT [DF_GameKindItem_JoinID]  DEFAULT ((0)),
	[SortID] [int] NOT NULL CONSTRAINT [DF_GameKindItem_SortID]  DEFAULT ((1000)),
	[KindName] [nvarchar](32) NOT NULL,
	[ProcessName] [nvarchar](32) NOT NULL,
	[GameRuleUrl] [nvarchar](256) NOT NULL CONSTRAINT [DF_GameKindItem_ResponseUrl]  DEFAULT (N''),
	[DownLoadUrl] [nvarchar](256) NOT NULL CONSTRAINT [DF_GameKindItem_DownLoadUrl]  DEFAULT (N''),
	[Recommend] [int] NOT NULL,
	[GameFlag] [int] NOT NULL,
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_GameKindItem_Nullity]  DEFAULT ((0)),
 CONSTRAINT [PK_GameKindItem] PRIMARY KEY CLUSTERED 
(
	[KindID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameKindItem', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameKindItem', @level2type=N'COLUMN',@level2name=N'GameID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'种类标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameKindItem', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'挂接标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameKindItem', @level2type=N'COLUMN',@level2name=N'JoinID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameKindItem', @level2type=N'COLUMN',@level2name=N'SortID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameKindItem', @level2type=N'COLUMN',@level2name=N'KindName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进程名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameKindItem', @level2type=N'COLUMN',@level2name=N'ProcessName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'跳转地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameKindItem', @level2type=N'COLUMN',@level2name=N'GameRuleUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameKindItem', @level2type=N'COLUMN',@level2name=N'DownLoadUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推荐游戏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameKindItem', @level2type=N'COLUMN',@level2name=N'Recommend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标志,新1荐2热3赛4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameKindItem', @level2type=N'COLUMN',@level2name=N'GameFlag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'无效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameKindItem', @level2type=N'COLUMN',@level2name=N'Nullity'
GO
/****** 对象:  Table [dbo].[DataBaseInfo]    脚本日期: 03/17/2017 10:10:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataBaseInfo](
	[DBInfoID] [int] IDENTITY(1,1) NOT NULL,
	[DBAddr] [nvarchar](15) NOT NULL,
	[DBPort] [int] NOT NULL CONSTRAINT [DF_TABLE1_DataBasePort]  DEFAULT ((1433)),
	[DBUser] [nvarchar](512) NOT NULL,
	[DBPassword] [nvarchar](512) NOT NULL,
	[MachineID] [nvarchar](32) NOT NULL CONSTRAINT [DF_DataBaseInfo_MachineID]  DEFAULT (N''),
	[Information] [nvarchar](128) NOT NULL CONSTRAINT [DF_SQLConnectInfo_NoteInfo]  DEFAULT (N'N('')'),
 CONSTRAINT [PK_DataBaseInfo_Index] PRIMARY KEY CLUSTERED 
(
	[DBInfoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网络地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataBaseInfo', @level2type=N'COLUMN',@level2name=N'DBAddr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库端口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataBaseInfo', @level2type=N'COLUMN',@level2name=N'DBPort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataBaseInfo', @level2type=N'COLUMN',@level2name=N'DBUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataBaseInfo', @level2type=N'COLUMN',@level2name=N'DBPassword'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机器标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataBaseInfo', @level2type=N'COLUMN',@level2name=N'MachineID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataBaseInfo', @level2type=N'COLUMN',@level2name=N'Information'
GO
/****** 对象:  Table [dbo].[GameGameItem]    脚本日期: 03/17/2017 10:10:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameGameItem](
	[GameID] [int] NOT NULL,
	[GameName] [nvarchar](31) NOT NULL,
	[SuportType] [int] NOT NULL,
	[DataBaseAddr] [nvarchar](15) NOT NULL CONSTRAINT [DF_GameGameItem_DBAddr]  DEFAULT (''),
	[DataBaseName] [nvarchar](31) NOT NULL,
	[ServerVersion] [int] NOT NULL CONSTRAINT [DF_GameModuleInfo_ModuleVersion]  DEFAULT ((0)),
	[ClientVersion] [int] NOT NULL CONSTRAINT [DF_GameModuleInfo_ClientVersion]  DEFAULT ((0)),
	[ServerDLLName] [nvarchar](31) NOT NULL,
	[ClientExeName] [nvarchar](31) NOT NULL,
 CONSTRAINT [PK_GameModuleInfo_ModuleID] PRIMARY KEY NONCLUSTERED 
(
	[GameID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameGameItem', @level2type=N'COLUMN',@level2name=N'GameID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameGameItem', @level2type=N'COLUMN',@level2name=N'GameName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支持类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameGameItem', @level2type=N'COLUMN',@level2name=N'SuportType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameGameItem', @level2type=N'COLUMN',@level2name=N'DataBaseAddr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameGameItem', @level2type=N'COLUMN',@level2name=N'DataBaseName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务器版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameGameItem', @level2type=N'COLUMN',@level2name=N'ServerVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户端版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameGameItem', @level2type=N'COLUMN',@level2name=N'ClientVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务端名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameGameItem', @level2type=N'COLUMN',@level2name=N'ServerDLLName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户端名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameGameItem', @level2type=N'COLUMN',@level2name=N'ClientExeName'
GO
/****** 对象:  Table [dbo].[StreamCreateTableFeeInfo]    脚本日期: 03/17/2017 10:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StreamCreateTableFeeInfo](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[NickName] [nvarchar](31) NOT NULL,
	[ServerID] [int] NOT NULL,
	[RoomID] [nvarchar](6) NOT NULL,
	[CardOrBean] [tinyint] NOT NULL DEFAULT ((0)),
	[CellScore] [bigint] NOT NULL,
	[JoinGamePeopleCount] [smallint] NOT NULL DEFAULT ((1)),
	[CountLimit] [int] NOT NULL,
	[TimeLimit] [int] NOT NULL,
	[CreateTableFee] [bigint] NOT NULL,
	[CreateDate] [datetime] NOT NULL CONSTRAINT [DF_StreamMatchFeeInfo_CollectDate]  DEFAULT (getdate()),
	[DissumeDate] [datetime] NULL,
	[TaxAgency] [bigint] NOT NULL DEFAULT ((0)),
	[TaxCount] [bigint] NOT NULL DEFAULT ((0)),
	[TaxRevenue] [bigint] NOT NULL DEFAULT ((0)),
	[RoomScoreInfo] [varbinary](max) NULL,
 CONSTRAINT [PK_StreamMatchFeeInfo] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'RoomID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 游戏豆  1房卡' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'CardOrBean'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间底分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'CellScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间参与游戏的人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'JoinGamePeopleCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'局数限制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'CountLimit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间限制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'TimeLimit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'CreateTableFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'离开时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'DissumeDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理税收比例千分比' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'TaxAgency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间税收总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'TaxCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理税收返现' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'TaxRevenue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间所有玩家的成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StreamCreateTableFeeInfo', @level2type=N'COLUMN',@level2name=N'RoomScoreInfo'
GO
/****** 对象:  Table [dbo].[GamePropertyType]    脚本日期: 03/17/2017 10:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GamePropertyType](
	[TypeID] [int] NOT NULL,
	[SortID] [int] NOT NULL,
	[TypeName] [nvarchar](32) NOT NULL CONSTRAINT [DF_GamePropertyType_TypeName]  DEFAULT (''),
	[TagID] [int] NOT NULL CONSTRAINT [DF_GamePropertyType_TagID]  DEFAULT ((0)),
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_GamePropertyType_Nullity]  DEFAULT ((0)),
 CONSTRAINT [PK_GamePropertyType] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePropertyType', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePropertyType', @level2type=N'COLUMN',@level2name=N'SortID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePropertyType', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'渠道标识(0：大厅，1：手机)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePropertyType', @level2type=N'COLUMN',@level2name=N'TagID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'冻结标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePropertyType', @level2type=N'COLUMN',@level2name=N'Nullity'
GO
/****** 对象:  Table [dbo].[SystemMessage]    脚本日期: 03/17/2017 10:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemMessage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MessageType] [int] NOT NULL CONSTRAINT [DF_SystemMessage_MessageOption]  DEFAULT ((3)),
	[ServerRange] [nvarchar](1024) NOT NULL CONSTRAINT [DF_SystemMessage_ServerRange]  DEFAULT ((0)),
	[MessageString] [nvarchar](1024) NOT NULL,
	[StartTime] [datetime] NOT NULL CONSTRAINT [DF_SystemMessage_StartTime]  DEFAULT (getdate()),
	[ConcludeTime] [datetime] NOT NULL CONSTRAINT [DF_SystemMessage_ConcludeTime]  DEFAULT (dateadd(year,(1),getdate())),
	[TimeRate] [int] NOT NULL,
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_SystemMessage_Nullity]  DEFAULT ((0)),
	[CreateDate] [datetime] NOT NULL CONSTRAINT [DF_SystemMessage_CreateDate]  DEFAULT (getdate()),
	[CreateMasterID] [int] NOT NULL CONSTRAINT [DF_SystemMessage_CreateMasterID]  DEFAULT ((0)),
	[UpdateDate] [datetime] NOT NULL CONSTRAINT [DF_SystemMessage_LastUpdateDate]  DEFAULT (getdate()),
	[UpdateMasterID] [int] NOT NULL CONSTRAINT [DF_SystemMessage_UpdateMasterID]  DEFAULT ((0)),
	[UpdateCount] [int] NOT NULL CONSTRAINT [DF_SystemMessage_UpdateCount]  DEFAULT ((0)),
	[CollectNote] [nvarchar](512) NOT NULL CONSTRAINT [DF_SystemMessage_CollectNote]  DEFAULT (''),
 CONSTRAINT [PK_SystemMessage_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'索引标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemMessage', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消息范围(1:游戏,2:房间,3:全部)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemMessage', @level2type=N'COLUMN',@level2name=N'MessageType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间范围(0:所有房间)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemMessage', @level2type=N'COLUMN',@level2name=N'ServerRange'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消息内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemMessage', @level2type=N'COLUMN',@level2name=N'MessageString'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemMessage', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemMessage', @level2type=N'COLUMN',@level2name=N'ConcludeTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间频率(多长时间发送一次)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemMessage', @level2type=N'COLUMN',@level2name=N'TimeRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'禁止标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemMessage', @level2type=N'COLUMN',@level2name=N'Nullity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemMessage', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建管理员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemMessage', @level2type=N'COLUMN',@level2name=N'CreateMasterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemMessage', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改管理员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemMessage', @level2type=N'COLUMN',@level2name=N'UpdateMasterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemMessage', @level2type=N'COLUMN',@level2name=N'UpdateCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemMessage', @level2type=N'COLUMN',@level2name=N'CollectNote'
GO
/****** 对象:  Table [dbo].[PersonalRoomScoreInfo]    脚本日期: 03/17/2017 10:11:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PersonalRoomScoreInfo](
	[UserID] [int] NOT NULL,
	[PersonalRoomGUID] [nchar](31) NOT NULL  CONSTRAINT [DF_PersonalRoomScoreInfo_PersonalRoomGUID]  DEFAULT '',
	[RoomID] [nvarchar](6) NOT NULL,
	[Score] [bigint] NOT NULL CONSTRAINT [DF__PersonalR__Score__47C69FAC]  DEFAULT ((0)),
	[WinCount] [int] NOT NULL CONSTRAINT [DF__PersonalR__WinCo__48BAC3E5]  DEFAULT ((0)),
	[LostCount] [int] NOT NULL CONSTRAINT [DF__PersonalR__LostC__49AEE81E]  DEFAULT ((0)),
	[DrawCount] [int] NOT NULL CONSTRAINT [DF__PersonalR__DrawC__4AA30C57]  DEFAULT ((0)),
	[FleeCount] [int] NOT NULL CONSTRAINT [DF__PersonalR__FleeC__4B973090]  DEFAULT ((0)),
	[WriteTime] [datetime] NOT NULL,
	[PlayBackCode] [int] NOT NULL CONSTRAINT [DF_PersonalRoomScoreInfo_PlayBackCode]  DEFAULT ((0)),
	[ChairID] [int] NOT NULL CONSTRAINT [DF_PersonalRoomScoreInfo_ChairID]  DEFAULT ((0)),
	[KindID] [int] NOT NULL CONSTRAINT [DF_PersonalRoomScoreInfo_KindID]  DEFAULT ((0))
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomScoreInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomScoreInfo', @level2type=N'COLUMN',@level2name=N'RoomID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户积分（货币）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomScoreInfo', @level2type=N'COLUMN',@level2name=N'Score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'胜局数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomScoreInfo', @level2type=N'COLUMN',@level2name=N'WinCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输局数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomScoreInfo', @level2type=N'COLUMN',@level2name=N'LostCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'和局数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomScoreInfo', @level2type=N'COLUMN',@level2name=N'DrawCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逃局数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomScoreInfo', @level2type=N'COLUMN',@level2name=N'FleeCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomScoreInfo', @level2type=N'COLUMN',@level2name=N'WriteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回放码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomScoreInfo', @level2type=N'COLUMN',@level2name=N'PlayBackCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'座位id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomScoreInfo', @level2type=N'COLUMN',@level2name=N'ChairID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomScoreInfo', @level2type=N'COLUMN',@level2name=N'KindID'
GO

/****** 对象:  Table [dbo].[GameConfig]    脚本日期: 03/17/2017 10:10:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameConfig](
	[KindID] [int] NOT NULL,
	[NoticeChangeGolds] [bigint] NOT NULL CONSTRAINT [DF_GameConfig_NoticeChangeGolds]  DEFAULT ((0)),
	[WinExperience] [int] NOT NULL CONSTRAINT [DF_GameConfig_Experience]  DEFAULT ((10)),
 CONSTRAINT [PK_GameKindConfig] PRIMARY KEY CLUSTERED 
(
	[KindID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameConfig', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示输赢公告的最低输赢金币数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameConfig', @level2type=N'COLUMN',@level2name=N'NoticeChangeGolds'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赢一局经验' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameConfig', @level2type=N'COLUMN',@level2name=N'WinExperience'
GO
/****** 对象:  Table [dbo].[GameNodeItem]    脚本日期: 03/17/2017 10:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameNodeItem](
	[NodeID] [int] NOT NULL,
	[KindID] [int] NOT NULL,
	[JoinID] [int] NOT NULL CONSTRAINT [DF_GameStationItem_JoinID]  DEFAULT ((0)),
	[SortID] [int] NOT NULL CONSTRAINT [DF_GameStationItem_SortID]  DEFAULT ((1000)),
	[NodeName] [nvarchar](32) NOT NULL,
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_GameStationItem_Nullity]  DEFAULT ((0)),
 CONSTRAINT [PK_GameNodeItem] PRIMARY KEY CLUSTERED 
(
	[NodeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameNodeItem', @level2type=N'COLUMN',@level2name=N'NodeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameNodeItem', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'挂接标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameNodeItem', @level2type=N'COLUMN',@level2name=N'JoinID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameNodeItem', @level2type=N'COLUMN',@level2name=N'SortID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameNodeItem', @level2type=N'COLUMN',@level2name=N'NodeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'无效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameNodeItem', @level2type=N'COLUMN',@level2name=N'Nullity'
GO
/****** 对象:  Table [dbo].[MobileKindItem]    脚本日期: 03/17/2017 10:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MobileKindItem](
	[KindID] [int] NOT NULL,
	[KindName] [nvarchar](32) NOT NULL,
	[TypeID] [int] NOT NULL CONSTRAINT [DF_MobileKindItem_TypeID]  DEFAULT ((0)),
	[ModuleName] [nvarchar](32) NOT NULL CONSTRAINT [DF_MobileKindItem_ModuleName]  DEFAULT (''),
	[ClientVersion] [int] NOT NULL CONSTRAINT [DF_MobileKindItem_ClientVersion]  DEFAULT ((0)),
	[ResVersion] [int] NOT NULL CONSTRAINT [DF_MobileKindItem_ResVersion]  DEFAULT ((0)),
	[SortID] [int] NOT NULL CONSTRAINT [DF_MobileKindItem_SortID]  DEFAULT ((0)),
	[KindMark] [int] NOT NULL CONSTRAINT [DF_MobileKindItem_KindMark]  DEFAULT ((0)),
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_MobileKindItem_Nullity]  DEFAULT ((0)),
 CONSTRAINT [PK_MobileKindItem] PRIMARY KEY CLUSTERED 
(
	[KindID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileKindItem', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileKindItem', @level2type=N'COLUMN',@level2name=N'KindName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileKindItem', @level2type=N'COLUMN',@level2name=N'ModuleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块版本号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileKindItem', @level2type=N'COLUMN',@level2name=N'ClientVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源版本号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileKindItem', @level2type=N'COLUMN',@level2name=N'ResVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileKindItem', @level2type=N'COLUMN',@level2name=N'SortID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏掩码(1:ios,2:Android)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileKindItem', @level2type=N'COLUMN',@level2name=N'KindMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileKindItem', @level2type=N'COLUMN',@level2name=N'Nullity'
GO
/****** 对象:  Table [dbo].[GrowLevelConfig]    脚本日期: 03/17/2017 10:11:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrowLevelConfig](
	[LevelID] [int] NOT NULL,
	[Experience] [int] NOT NULL,
	[RewardGold] [int] NOT NULL,
	[RewardMedal] [int] NOT NULL,
	[LevelRemark] [nvarchar](64) NULL,
 CONSTRAINT [PK_GrowLevelConfig] PRIMARY KEY CLUSTERED 
(
	[LevelID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'等级编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GrowLevelConfig', @level2type=N'COLUMN',@level2name=N'LevelID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所需经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GrowLevelConfig', @level2type=N'COLUMN',@level2name=N'Experience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖励金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GrowLevelConfig', @level2type=N'COLUMN',@level2name=N'RewardGold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖励元宝' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GrowLevelConfig', @level2type=N'COLUMN',@level2name=N'RewardMedal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'等级备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GrowLevelConfig', @level2type=N'COLUMN',@level2name=N'LevelRemark'
GO
/****** 对象:  Table [dbo].[TaskInfo]    脚本日期: 03/17/2017 10:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskInfo](
	[TaskID] [int] IDENTITY(1,1) NOT NULL,
	[TaskName] [nvarchar](50) NOT NULL CONSTRAINT [DF_TaskInfo_TaskName]  DEFAULT (''),
	[TaskDescription] [nvarchar](500) NOT NULL CONSTRAINT [DF_TaskInfo_TaskDescription]  DEFAULT (''),
	[TaskType] [int] NOT NULL,
	[UserType] [tinyint] NOT NULL,
	[KindID] [int] NOT NULL,
	[MatchID] [int] NOT NULL CONSTRAINT [DF_TaskInfo_MatchID]  DEFAULT ((0)),
	[Innings] [int] NOT NULL CONSTRAINT [DF_TaskInfo_TaskInnings]  DEFAULT ((0)),
	[StandardAwardGold] [int] NOT NULL,
	[StandardAwardMedal] [int] NOT NULL,
	[MemberAwardGold] [int] NOT NULL,
	[MemberAwardMedal] [int] NOT NULL,
	[TimeLimit] [int] NOT NULL CONSTRAINT [DF_TaskInfo_TimeLimit]  DEFAULT ((0)),
	[InputDate] [datetime] NOT NULL CONSTRAINT [DF_TaskInfo_InputDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_TaskInfo] PRIMARY KEY CLUSTERED 
(
	[TaskID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaskInfo', @level2type=N'COLUMN',@level2name=N'TaskID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaskInfo', @level2type=N'COLUMN',@level2name=N'TaskName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaskInfo', @level2type=N'COLUMN',@level2name=N'TaskDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务类型 1:总赢局 2:总局数 4:首胜 8:连赢N局' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaskInfo', @level2type=N'COLUMN',@level2name=N'TaskType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可领取任务用户类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaskInfo', @level2type=N'COLUMN',@level2name=N'UserType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务所属游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaskInfo', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'比赛任务 比赛ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaskInfo', @level2type=N'COLUMN',@level2name=N'MatchID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成任务需要局数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaskInfo', @level2type=N'COLUMN',@level2name=N'Innings'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'普通玩家奖励金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaskInfo', @level2type=N'COLUMN',@level2name=N'StandardAwardGold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'普通玩家奖励元宝' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaskInfo', @level2type=N'COLUMN',@level2name=N'StandardAwardMedal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员奖励金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaskInfo', @level2type=N'COLUMN',@level2name=N'MemberAwardGold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员奖励元宝' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaskInfo', @level2type=N'COLUMN',@level2name=N'MemberAwardMedal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间限制 单位:分钟' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaskInfo', @level2type=N'COLUMN',@level2name=N'TimeLimit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaskInfo', @level2type=N'COLUMN',@level2name=N'InputDate'
GO
/****** 对象:  Table [dbo].[GamePropertySub]    脚本日期: 03/17/2017 10:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GamePropertySub](
	[ID] [int] NOT NULL,
	[OwnerID] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[SortID] [int] NOT NULL,
 CONSTRAINT [PK_GamePropertySub] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[OwnerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePropertySub', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具归属ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePropertySub', @level2type=N'COLUMN',@level2name=N'OwnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePropertySub', @level2type=N'COLUMN',@level2name=N'Count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePropertySub', @level2type=N'COLUMN',@level2name=N'SortID'
GO
/****** 对象:  Table [dbo].[GameRoomInfo]    脚本日期: 03/17/2017 10:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameRoomInfo](
	[ServerID] [int] IDENTITY(1,1) NOT NULL,
	[ServerName] [nvarchar](31) NOT NULL,
	[KindID] [int] NOT NULL,
	[NodeID] [int] NOT NULL,
	[SortID] [int] NOT NULL,
	[GameID] [int] NOT NULL,
	[TableCount] [int] NOT NULL CONSTRAINT [DF_GameRoomInfo_TableCount]  DEFAULT ((60)),
	[ServerKind] [int] NOT NULL CONSTRAINT [DF_GameRoomInfo_ServerKind]  DEFAULT ((0)),
	[ServerType] [int] NOT NULL,
	[ServerPort] [int] NOT NULL CONSTRAINT [DF_GameRoomInfo_ServerPort]  DEFAULT ((0)),
	[ServerLevel] [int] NOT NULL CONSTRAINT [DF_GameRoomInfo_ServerLevel]  DEFAULT ((0)),
	[ServerPasswd] [nvarchar](31) NULL,
	[DataBaseName] [nvarchar](31) NOT NULL,
	[DataBaseAddr] [nvarchar](15) NOT NULL CONSTRAINT [DF_GameRoomInfo_DataBaseAddr]  DEFAULT (''),
	[CellScore] [bigint] NOT NULL CONSTRAINT [DF_GameRoomInfo_CellScore]  DEFAULT ((0)),
	[RevenueRatio] [tinyint] NOT NULL,
	[ServiceScore] [bigint] NOT NULL CONSTRAINT [DF_GameRoomInfo_ServiceGold]  DEFAULT ((0)),
	[RestrictScore] [bigint] NOT NULL CONSTRAINT [DF_GameRoomInfo_RestrictScore]  DEFAULT ((0)),
	[MinTableScore] [bigint] NOT NULL CONSTRAINT [DF_GameRoomInfo_MinTableScore]  DEFAULT ((0)),
	[MinEnterScore] [bigint] NOT NULL CONSTRAINT [DF_GameRoomInfo_MinEnterScore]  DEFAULT ((0)),
	[MaxEnterScore] [bigint] NOT NULL CONSTRAINT [DF_GameRoomInfo_MaxEnterScore]  DEFAULT ((0)),
	[MinEnterMember] [int] NOT NULL CONSTRAINT [DF_GameRoomInfo_MinEnterMember]  DEFAULT ((0)),
	[MaxEnterMember] [int] NOT NULL CONSTRAINT [DF_GameRoomInfo_MaxEnterMember]  DEFAULT ((0)),
	[MaxPlayer] [int] NOT NULL,
	[ServerRule] [int] NOT NULL,
	[DistributeRule] [int] NOT NULL CONSTRAINT [DF_GameRoomInfo_DistributeRule]  DEFAULT ((0)),
	[MinDistributeUser] [int] NOT NULL CONSTRAINT [DF_GameRoomInfo_MinDistributeUser]  DEFAULT ((0)),
	[DistributeTimeSpace] [int] NOT NULL CONSTRAINT [DF_GameRoomInfo_DistributeTimeSpace]  DEFAULT ((0)),
	[DistributeDrawCount] [int] NOT NULL CONSTRAINT [DF_GameRoomInfo_DistributeDrawCount]  DEFAULT ((0)),
	[MinPartakeGameUser] [int] NOT NULL CONSTRAINT [DF_GameRoomInfo_MinPartakeGameUser]  DEFAULT ((0)),
	[MaxPartakeGameUser] [int] NOT NULL CONSTRAINT [DF_GameRoomInfo_MaxPartakeGameUser_1]  DEFAULT ((0)),
	[AttachUserRight] [int] NOT NULL CONSTRAINT [DF_GameRoomInfo_UserRight]  DEFAULT ((0)),
	[ServiceMachine] [nvarchar](32) NOT NULL CONSTRAINT [DF_GameRoomInfo_MachineSerial]  DEFAULT (''),
	[CustomRule] [nvarchar](2048) NOT NULL CONSTRAINT [DF_GameRoomInfo_CustomRule]  DEFAULT (''),
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_GameRoomInfo_Nullity]  DEFAULT ((0)),
	[ServerNote] [nvarchar](64) NOT NULL CONSTRAINT [DF_GameRoomInfo_ServerNote]  DEFAULT (''),
	[CreateDateTime] [datetime] NOT NULL CONSTRAINT [DF_GameRoomInfo_CreateDataTime]  DEFAULT (getdate()),
	[ModifyDateTime] [datetime] NOT NULL CONSTRAINT [DF_GameRoomInfo_ModifyDateTime]  DEFAULT (getdate()),
	[EnterPassword] [nvarchar](32) NOT NULL CONSTRAINT [DF_GameRoomInfo_EnterPassword]  DEFAULT (''),
 CONSTRAINT [PK_GameRoomInfo_ServerID] PRIMARY KEY CLUSTERED 
(
	[ServerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'ServerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'挂接类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'挂接节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'NodeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'SortID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'GameID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'桌子数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'TableCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'ServerType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务端口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'ServerPort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'DataBaseName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'DataBaseAddr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'CellScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'税收比例' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'RevenueRatio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'ServiceScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'限制积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'RestrictScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最低积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'MinTableScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'MaxPlayer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间规则' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'ServerRule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组规则' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'DistributeRule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最少人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'MinDistributeUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组间隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'DistributeTimeSpace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组局数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'DistributeDrawCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏最少人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'MinPartakeGameUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏最多人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'MaxPartakeGameUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运行机器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'ServiceMachine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自定规则' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'CustomRule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'禁止服务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'Nullity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'ServerNote'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'CreateDateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRoomInfo', @level2type=N'COLUMN',@level2name=N'ModifyDateTime'
GO
/****** 对象:  Table [dbo].[SensitiveWords]    脚本日期: 03/17/2017 10:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SensitiveWords](
	[ForbidWords] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_SensitiveWords] PRIMARY KEY CLUSTERED 
(
	[ForbidWords] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** 对象:  Table [dbo].[GamePropertyRelat]    脚本日期: 03/17/2017 10:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GamePropertyRelat](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PropertyID] [int] NOT NULL CONSTRAINT [DF_GamePropertyRelat_PropertyID]  DEFAULT ((0)),
	[TagID] [int] NOT NULL CONSTRAINT [DF_GamePropertyRelat_TagID]  DEFAULT ((0)),
	[TypeID] [int] NOT NULL CONSTRAINT [DF_GamePropertyRelat_TypeID]  DEFAULT ((0)),
 CONSTRAINT [PK_GamePropertyRelat] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增长标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePropertyRelat', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePropertyRelat', @level2type=N'COLUMN',@level2name=N'PropertyID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备标识（0、PC  1、手机）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePropertyRelat', @level2type=N'COLUMN',@level2name=N'TagID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具类型标识（对应GamePropertyType表）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePropertyRelat', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
/****** 对象:  Table [dbo].[PersonalRoomInfo]    脚本日期: 03/17/2017 10:11:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalRoomInfo](
	[ServerID] [int] NOT NULL,
	[KindID] [int] NOT NULL,
	[CardOrBean] [tinyint] NOT NULL DEFAULT ((0)),
	[FeeBeanOrRoomCard] [bigint] NOT NULL DEFAULT ((0)),
	[IsJoinGame] [tinyint] NOT NULL DEFAULT ((0)),
	[MinPeople] [tinyint] NOT NULL DEFAULT ((0)),
	[MaxPeople] [tinyint] NOT NULL DEFAULT ((8)),
	[PersonalRoomTax] [bigint] NOT NULL DEFAULT ((10000)),
	[MaxCellScore] [bigint] NOT NULL DEFAULT ((100)),
	[CanCreateCount] [smallint] NOT NULL DEFAULT ((32)),
	[CreateRight] [tinyint] NOT NULL DEFAULT ((0)),
	[PlayTurnCount] [int] NOT NULL DEFAULT ((100)),
	[PlayTimeLimit] [int] NOT NULL DEFAULT ((180000)),
	[TimeAfterBeginCount] [int] NOT NULL DEFAULT ((180000)),
	[TimeOffLineCount] [int] NOT NULL DEFAULT ((180000)),
	[TimeNotBeginGame] [int] NOT NULL DEFAULT ((180000)),
	[TimeNotBeginAfterCreateRoom] [int] NOT NULL DEFAULT ((180000)),
 CONSTRAINT [PK_PersonalRoomInfo_ServerID] PRIMARY KEY CLUSTERED 
(
	[ServerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomInfo', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消耗房卡还是游戏豆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomInfo', @level2type=N'COLUMN',@level2name=N'CardOrBean'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消耗房卡或游戏豆的数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomInfo', @level2type=N'COLUMN',@level2name=N'FeeBeanOrRoomCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否参加游戏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomInfo', @level2type=N'COLUMN',@level2name=N'IsJoinGame'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参与游戏最小人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomInfo', @level2type=N'COLUMN',@level2name=N'MinPeople'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参与游戏最大人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomInfo', @level2type=N'COLUMN',@level2name=N'MaxPeople'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间最大底分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomInfo', @level2type=N'COLUMN',@level2name=N'MaxCellScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'桌主能够创建的最大房间数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomInfo', @level2type=N'COLUMN',@level2name=N'CanCreateCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建房间的权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomInfo', @level2type=N'COLUMN',@level2name=N'CreateRight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间能够进行游戏的最大局数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomInfo', @level2type=N'COLUMN',@level2name=N'PlayTurnCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间能够进行游戏的最大时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomInfo', @level2type=N'COLUMN',@level2name=N'PlayTimeLimit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'一局游戏开始后多长时间后解散桌子' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomInfo', @level2type=N'COLUMN',@level2name=N'TimeAfterBeginCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家掉线多长时间后解散桌子' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomInfo', @level2type=N'COLUMN',@level2name=N'TimeOffLineCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家坐下多长时间后还未开始游戏解散桌子' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomInfo', @level2type=N'COLUMN',@level2name=N'TimeNotBeginGame'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'私人房创建多长时间后无人坐桌解散桌子' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonalRoomInfo', @level2type=N'COLUMN',@level2name=N'TimeNotBeginAfterCreateRoom'
GO
/****** 对象:  Table [dbo].[GamePageItem]    脚本日期: 03/17/2017 10:10:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GamePageItem](
	[PageID] [int] NOT NULL,
	[KindID] [int] NOT NULL,
	[NodeID] [int] NOT NULL,
	[SortID] [int] NOT NULL,
	[OperateType] [int] NOT NULL,
	[DisplayName] [nvarchar](32) NOT NULL,
	[ResponseUrl] [nvarchar](256) NOT NULL CONSTRAINT [DF_GamePageItem_ResponseUrl]  DEFAULT (N''),
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_GameCustomItem_Nullity]  DEFAULT ((0)),
 CONSTRAINT [PK_GameCustomItem_CustomID] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页面标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePageItem', @level2type=N'COLUMN',@level2name=N'PageID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型索引' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePageItem', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点索引' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePageItem', @level2type=N'COLUMN',@level2name=N'NodeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePageItem', @level2type=N'COLUMN',@level2name=N'SortID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePageItem', @level2type=N'COLUMN',@level2name=N'OperateType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePageItem', @level2type=N'COLUMN',@level2name=N'DisplayName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'跳转地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePageItem', @level2type=N'COLUMN',@level2name=N'ResponseUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'无效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GamePageItem', @level2type=N'COLUMN',@level2name=N'Nullity'
GO
/****** 对象:  Table [dbo].[GameTypeItem]    脚本日期: 03/17/2017 10:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameTypeItem](
	[TypeID] [int] NOT NULL,
	[JoinID] [int] NOT NULL CONSTRAINT [DF_GameTypeItem_JoinID]  DEFAULT ((0)),
	[SortID] [int] NOT NULL CONSTRAINT [DF_GameTypeItem_SortID]  DEFAULT ((1000)),
	[TypeName] [nvarchar](32) NOT NULL,
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_GameTypeItem_Nullity]  DEFAULT ((0)),
 CONSTRAINT [PK_GameTypeItem_TypeID] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameTypeItem', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'挂接标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameTypeItem', @level2type=N'COLUMN',@level2name=N'JoinID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameTypeItem', @level2type=N'COLUMN',@level2name=N'SortID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameTypeItem', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'无效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameTypeItem', @level2type=N'COLUMN',@level2name=N'Nullity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameTypeItem'
GO



/****** Object:  Table [dbo].[RecordBackInfo]    Script Date: 2016/10/20 9:55:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- 判断要创建的表名是否存在
IF EXISTS  (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[RecordBackInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
-- 删除表
drop table [dbo].[RecordBackInfo]
GO

CREATE TABLE [dbo].[RecordBackInfo](
	[ID] [varchar](22) NOT NULL ,
	[PersonalRoomGUID] [nvarchar](31),
	[UserID] [int] NOT NULL,
	[RoomID] [nvarchar](6) NOT NULL,
	[Score] [bigint] NOT NULL  DEFAULT ((0)),
	[GamesNum][int] NOT NULL,
	[Dates][datetime] NOT NULL CONSTRAINT [DF_RecordBackInfo_Dates]  DEFAULT (getdate())
)

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'一局标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBackInfo', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'约战房间唯一标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBackInfo', @level2type=N'COLUMN',@level2name=N'PersonalRoomGUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBackInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBackInfo', @level2type=N'COLUMN',@level2name=N'RoomID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户积分（货币）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBackInfo', @level2type=N'COLUMN',@level2name=N'Score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏局数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBackInfo', @level2type=N'COLUMN',@level2name=N'GamesNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'写入日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBackInfo', @level2type=N'COLUMN',@level2name=N'Dates'
GO