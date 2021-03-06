/****** Object:  Table [dbo].[FP_Work_WorkFlowInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Work_WorkFlowInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sortid] [int] NULL,
	[app] [nvarchar](100) NULL,
	[departid] [int] NULL,
	[uid] [int] NULL,
	[parentid] [int] NULL,
	[formid] [int] NULL,
	[flowid] [int] NULL,
	[type] [int] NULL,
	[rawuid] [int] NULL,
	[fromuid] [int] NULL,
	[receiveid] [int] NULL,
	[postid] [int] NULL,
	[fromid] [int] NULL,
	[typeid] [int] NULL,
	[step] [int] NULL,
	[stepname] [nvarchar](100) NULL,
	[stepid] [int] NULL,
	[curstep] [int] NULL,
	[curstepid] [int] NULL,
	[curuid] [int] NULL,
	[isadmin] [int] NULL,
	[turnuid] [int] NULL,
	[touid] [nvarchar](250) NULL,
	[title] [nvarchar](250) NULL,
	[markup] [nvarchar](250) NULL,
	[content] [ntext] NULL,
	[attachid] [nvarchar](250) NULL,
	[postdatetime] [datetime] NULL,
	[starttime] [datetime] NULL,
	[endtime] [datetime] NULL,
	[allowback] [int] NULL,
	[status] [int] NULL,
	[isdelegate] [int] NULL,
	[isback] [int] NULL,
	[isend] [int] NULL,
	[isdelete] [int] NULL,
	[isrepeat] [int] NULL,
	[formimg] [int] NULL,
	[isfav] [int] NULL,
 CONSTRAINT [PK_FP_WF_FlowRunInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在流程栏目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'sortid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发始部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'departid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发始人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'继续交办关联的工作id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'parentid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用的表单id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'formid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用的流程id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'flowid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原始发始人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'rawuid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'fromuid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收者id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'receiveid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布创始id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'postid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'fromid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'typeid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'我办理的步骤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'step'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'curstepid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前办理人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'curuid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是主办' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'isadmin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收者用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'touid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'attachid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'postdatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'办理开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'starttime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'办理结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'endtime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'办理状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是委托' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'isdelegate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否还可以撤回' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'isback'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是结束步骤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'isend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'isdelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是重复工作项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_WorkFlowInfo', @level2type=N'COLUMN',@level2name=N'isrepeat'
GO
SET IDENTITY_INSERT [dbo].[FP_Work_WorkFlowInfo] ON
INSERT [dbo].[FP_Work_WorkFlowInfo] ([id], [sortid], [app], [departid], [uid], [parentid], [formid], [flowid], [type], [rawuid], [fromuid], [receiveid], [postid], [fromid], [typeid], [step], [stepname], [stepid], [curstep], [curstepid], [curuid], [isadmin], [turnuid], [touid], [title], [markup], [content], [attachid], [postdatetime], [starttime], [endtime], [allowback], [status], [isdelegate], [isback], [isend], [isdelete], [isrepeat], [formimg], [isfav]) VALUES (1, 8, N'app_workflow', 4, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, N'办公室文秘拟办意见', 1, 0, 1, 1, 1, 0, N'', N'测试收文', N'', N'', N'Z8JX26X42RJF2VD2488L', CAST(0x0000A87F00F4941C AS DateTime), CAST(0x0000A87F00F4941C AS DateTime), CAST(0x0000A87F00F4941C AS DateTime), 0, 1, 0, 0, 0, 0, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[FP_Work_WorkFlowInfo] OFF
/****** Object:  Table [dbo].[FP_Work_SignInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Work_SignInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[type] [int] NULL,
	[content] [nvarchar](250) NULL,
 CONSTRAINT [PK_FP_Work_SignInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_SignInfo', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_SignInfo', @level2type=N'COLUMN',@level2name=N'uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_SignInfo', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快捷内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_SignInfo', @level2type=N'COLUMN',@level2name=N'content'
GO
/****** Object:  Table [dbo].[FP_Work_CommentInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Work_CommentInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[realname] [nvarchar](100) NULL,
	[departname] [nvarchar](100) NULL,
	[postid] [int] NULL,
	[workid] [int] NULL,
	[step] [int] NULL,
	[stepname] [nvarchar](50) NULL,
	[title] [nvarchar](250) NULL,
	[content] [ntext] NULL,
	[postdatetime] [datetime] NULL,
	[attachid] [nvarchar](100) NULL,
 CONSTRAINT [PK_FP_Flow_CommentInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_CommentInfo', @level2type=N'COLUMN',@level2name=N'uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_CommentInfo', @level2type=N'COLUMN',@level2name=N'workid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_CommentInfo', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_CommentInfo', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_CommentInfo', @level2type=N'COLUMN',@level2name=N'postdatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Work_CommentInfo', @level2type=N'COLUMN',@level2name=N'attachid'
GO
/****** Object:  Table [dbo].[FP_WMS_UserInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_UserInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roleid] [int] NULL,
	[roles] [nvarchar](250) NULL,
	[departid] [int] NULL,
	[departname] [nvarchar](100) NULL,
	[departlist] [nvarchar](250) NULL,
	[departs] [nvarchar](250) NULL,
	[display] [int] NULL,
	[gradeid] [int] NULL,
	[types] [nvarchar](200) NULL,
	[username] [nvarchar](100) NULL,
	[password] [nvarchar](32) NULL,
	[password2] [nvarchar](32) NULL,
	[email] [nvarchar](30) NULL,
	[isemail] [int] NULL,
	[mobile] [nvarchar](200) NULL,
	[ismobile] [int] NULL,
	[realname] [nvarchar](100) NULL,
	[cardtype] [nvarchar](50) NULL,
	[idcard] [nvarchar](100) NULL,
	[isreal] [int] NULL,
	[usercode] [nvarchar](200) NULL,
	[nickname] [nvarchar](100) NULL,
	[avatar] [nvarchar](200) NULL,
	[sex] [nvarchar](60) NULL,
	[exp] [int] NULL,
	[credits] [int] NULL,
	[regip] [nvarchar](15) NULL,
	[joindatetime] [datetime] NULL,
	[sumlogin] [int] NULL,
	[lastip] [nvarchar](15) NULL,
	[lastvisit] [datetime] NULL,
	[secques] [nvarchar](8) NULL,
	[authstr] [nvarchar](20) NULL,
	[authtime] [datetime] NULL,
	[authflag] [int] NULL,
	[vipdate] [nvarchar](20) NULL,
	[state] [int] NULL,
	[issso] [int] NULL,
	[bday] [nvarchar](30) NULL,
	[bloodtype] [nvarchar](30) NULL,
	[height] [nvarchar](30) NULL,
	[weight] [nvarchar](30) NULL,
	[married] [nvarchar](60) NULL,
	[education] [nvarchar](30) NULL,
	[school] [nvarchar](60) NULL,
	[job] [nvarchar](30) NULL,
	[position] [nvarchar](30) NULL,
	[politics] [nvarchar](30) NULL,
	[company] [nvarchar](60) NULL,
	[nation] [nvarchar](30) NULL,
	[phone] [nvarchar](30) NULL,
	[qq] [nvarchar](30) NULL,
	[blog] [nvarchar](60) NULL,
	[province] [nvarchar](30) NULL,
	[city] [nvarchar](30) NULL,
	[address] [nvarchar](60) NULL,
	[zipcode] [nvarchar](30) NULL,
	[content] [ntext] NULL,
	[jobdate] [nvarchar](60) NULL,
	[origin] [nvarchar](60) NULL,
	[sid] [int] NULL,
 CONSTRAINT [PK_FP_WMS_IUser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'roleid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'departid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户等级id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'gradeid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'types'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'password2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已验证邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'isemail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已验证手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'ismobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'realname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'idcard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已实名认证' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'isreal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户身份验证码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'usercode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'nickname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别 0女 1男' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'exp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'credits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'regip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'joindatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'sumlogin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次登录IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'lastip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次访问时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'lastvisit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全问题码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'secques'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'authstr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证码生成日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'authtime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证码使用标志 0未使用 1用户邮箱验证及用户信息激活 2用户密码找回)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'authflag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VIP到期时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'vipdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'bday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'血型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'bloodtype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身高' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'height'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'体重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'weight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'婚姻状况 0未婚 1已婚 -1离婚' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'married'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育程度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'education'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毕业院校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'school'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职业' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'job'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务/职位/职称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'position'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'政治面貌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'politics'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民族' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'nation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'博客地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'blog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在省份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'province'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'zipcode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_UserInfo', @level2type=N'COLUMN',@level2name=N'content'
GO
SET IDENTITY_INSERT [dbo].[FP_WMS_UserInfo] ON
INSERT [dbo].[FP_WMS_UserInfo] ([id], [roleid], [roles], [departid], [departname], [departlist], [departs], [display], [gradeid], [types], [username], [password], [password2], [email], [isemail], [mobile], [ismobile], [realname], [cardtype], [idcard], [isreal], [usercode], [nickname], [avatar], [sex], [exp], [credits], [regip], [joindatetime], [sumlogin], [lastip], [lastvisit], [secques], [authstr], [authtime], [authflag], [vipdate], [state], [issso], [bday], [bloodtype], [height], [weight], [married], [education], [school], [job], [position], [politics], [company], [nation], [phone], [qq], [blog], [province], [city], [address], [zipcode], [content], [jobdate], [origin], [sid]) VALUES (1, 1, N'', 4, N'行政部', N'0,1,4', N'', 6, 7, N'3', N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'', N'12677206@qq.com', 1, N'13481092810', 1, N'方配', NULL, N'', 1, N'', N'方配', N'common/avatar/1.png', N'-1', 0, 0, N'', CAST(0x0000A31900000000 AS DateTime), 1, N'0.0.0.0', CAST(0x0000A6A7012DAE14 AS DateTime), N'', N'', CAST(0x0000A31900000000 AS DateTime), 0, N'', 1, 0, N',,', N'', N'', N'', N'0', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL)
INSERT [dbo].[FP_WMS_UserInfo] ([id], [roleid], [roles], [departid], [departname], [departlist], [departs], [display], [gradeid], [types], [username], [password], [password2], [email], [isemail], [mobile], [ismobile], [realname], [cardtype], [idcard], [isreal], [usercode], [nickname], [avatar], [sex], [exp], [credits], [regip], [joindatetime], [sumlogin], [lastip], [lastvisit], [secques], [authstr], [authtime], [authflag], [vipdate], [state], [issso], [bday], [bloodtype], [height], [weight], [married], [education], [school], [job], [position], [politics], [company], [nation], [phone], [qq], [blog], [province], [city], [address], [zipcode], [content], [jobdate], [origin], [sid]) VALUES (6, 5, N'', 0, N'', N'', N'', 0, 7, N'', N'test', N'e10adc3949ba59abbe56e057f20f883e', N'', N'', 0, N'12345678911', 0, N'测试', N'', N'', 0, NULL, N'', N'', N'-1', 0, 0, N'', CAST(0x0000A85100BAFF18 AS DateTime), 0, N'', CAST(0x0000A85100BAFF18 AS DateTime), N'', N'', CAST(0x0000A85100BAFF18 AS DateTime), 0, N'', 1, 0, N',,', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL)
INSERT [dbo].[FP_WMS_UserInfo] ([id], [roleid], [roles], [departid], [departname], [departlist], [departs], [display], [gradeid], [types], [username], [password], [password2], [email], [isemail], [mobile], [ismobile], [realname], [cardtype], [idcard], [isreal], [usercode], [nickname], [avatar], [sex], [exp], [credits], [regip], [joindatetime], [sumlogin], [lastip], [lastvisit], [secques], [authstr], [authtime], [authflag], [vipdate], [state], [issso], [bday], [bloodtype], [height], [weight], [married], [education], [school], [job], [position], [politics], [company], [nation], [phone], [qq], [blog], [province], [city], [address], [zipcode], [content], [jobdate], [origin], [sid]) VALUES (7, 5, N'', 0, N'', N'', N'', 0, 7, N'', N'demo', N'e10adc3949ba59abbe56e057f20f883e', N'', N'', 0, N'', 0, N'陈总', N'', N'', 0, NULL, N'', N'', N'-1', 0, 0, N'', CAST(0x0000A85400B32554 AS DateTime), 0, N'', CAST(0x0000A85400B32554 AS DateTime), N'', N'', CAST(0x0000A85400B32554 AS DateTime), 0, N'', 1, 0, N',,', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL)
SET IDENTITY_INSERT [dbo].[FP_WMS_UserInfo] OFF
/****** Object:  Table [dbo].[FP_WMS_TypeInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_TypeInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[markup] [nvarchar](50) NULL,
	[type] [int] NULL,
	[required] [int] NULL,
	[description] [nvarchar](60) NULL,
	[otherurl] [nvarchar](250) NULL,
	[display] [int] NULL,
	[img] [nvarchar](200) NULL,
	[attach_img] [nvarchar](100) NULL,
	[subcounts] [int] NULL,
	[sortids] [nvarchar](250) NULL,
	[posts] [nvarchar](250) NULL,
 CONSTRAINT [PK_WMS_TypeInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_TypeInfo', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_TypeInfo', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_TypeInfo', @level2type=N'COLUMN',@level2name=N'markup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_TypeInfo', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_TypeInfo', @level2type=N'COLUMN',@level2name=N'display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_TypeInfo', @level2type=N'COLUMN',@level2name=N'img'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_TypeInfo', @level2type=N'COLUMN',@level2name=N'posts'
GO
SET IDENTITY_INSERT [dbo].[FP_WMS_TypeInfo] ON
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (1, 0, N'部门工作分类', N'', NULL, NULL, N'', NULL, 1, N'', NULL, 2, N'', N'')
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (2, 1, N'运维维护', N'', NULL, NULL, N'', NULL, 2, N'', NULL, 0, N'', N'')
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (3, 1, N'日常工作', N'', NULL, NULL, N'', NULL, 3, N'', NULL, 0, N'', N'')
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (4, 0, N'转办分类', N'transfer', 0, 0, N'', N'', 4, N'', N'6LZB282BR8L0ZN4FF8NR', 7, N'', N'')
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (7, 4, N'转发公文', N'document', 0, 0, N'', N'/app/document/create.aspx', 7, N'', N'TFZ22T4B46XN2V848PV0', 0, N'', N'')
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (8, 4, N'转发邮件', N'email', 0, 0, N'', N'/app/email/create.aspx', 8, N'', N'4V4V80LL8LR4TL6T242T', 0, N'', N'')
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (9, 4, N'转发公告', N'notice', 0, 0, N'', N'/app/notice/noticeadd.aspx', 9, N'', N'NZL86V224806R408TRHH', 0, N'', N'')
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (11, 0, N'部门类型', N'depart_type', 0, 0, N'', N'', 11, N'', N'Z8H88NLLH64R2R6LBF06', 5, N'', N'')
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (12, 11, N'销售部门', N'', 0, 0, N'', N'', 2, N'', N'T0H6P8Z820Z6DLR0LNVF', 0, N'', N'')
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (16, 0, N'通知类型', N'app_notice', 0, 0, N'', N'', 16, N'', N'RF2N80NND0D6D46N40FD', 3, N'', N'')
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (17, 16, N'普通', N'', 0, 0, N'', N'', 17, N'', N'6462280JNBRP0X8F2BB2', 0, N'', N'')
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (18, 16, N'重要', N'', 0, 0, N'', N'', 18, N'', N'0VPF2620J8J0NF0JB84V', 0, N'', N'')
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (19, 16, N'紧急', N'', 0, 0, N'', N'', 19, N'', N'68J6BRF46848600NHLT0', 0, N'', N'')
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (20, 11, N'行政部门', N'', 0, 0, N'', N'', 1, N'', N'H82T8Z0X2JD8PR828T60', 0, N'', N'')
SET IDENTITY_INSERT [dbo].[FP_WMS_TypeInfo] OFF
/****** Object:  Table [dbo].[FP_WMS_TaskInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FP_WMS_TaskInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NULL,
	[key] [varchar](50) NULL,
	[timeofday] [int] NULL,
	[minutes] [int] NULL,
	[type] [nvarchar](50) NULL,
	[lastexecuted] [nvarchar](20) NULL,
	[enabled] [int] NULL,
 CONSTRAINT [PK_WMS_TasksEvents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_TaskInfo', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务标识符' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_TaskInfo', @level2type=N'COLUMN',@level2name=N'key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行时间点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_TaskInfo', @level2type=N'COLUMN',@level2name=N'timeofday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行间隔时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_TaskInfo', @level2type=N'COLUMN',@level2name=N'minutes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务执行类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_TaskInfo', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后执行时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_TaskInfo', @level2type=N'COLUMN',@level2name=N'lastexecuted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用此任务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_TaskInfo', @level2type=N'COLUMN',@level2name=N'enabled'
GO
/****** Object:  Table [dbo].[FP_WMS_SysLogInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_SysLogInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[name] [nvarchar](100) NULL,
	[content] [nvarchar](200) NULL,
	[ip] [nvarchar](30) NULL,
	[postdatetime] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_WMS_LogInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作者Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SysLogInfo', @level2type=N'COLUMN',@level2name=N'uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SysLogInfo', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SysLogInfo', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SysLogInfo', @level2type=N'COLUMN',@level2name=N'ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SysLogInfo', @level2type=N'COLUMN',@level2name=N'postdatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SysLogInfo', @level2type=N'COLUMN',@level2name=N'status'
GO
/****** Object:  Table [dbo].[FP_WMS_SortInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_SortInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channelid] [int] NULL,
	[appid] [int] NULL,
	[display] [int] NULL,
	[parentid] [int] NULL,
	[parentlist] [nvarchar](200) NULL,
	[name] [nvarchar](60) NULL,
	[markup] [nvarchar](60) NULL,
	[pagesize] [int] NULL,
	[description] [nvarchar](200) NULL,
	[icon] [nvarchar](100) NULL,
	[attach_icon] [nvarchar](100) NULL,
	[img] [nvarchar](100) NULL,
	[attach_img] [nvarchar](100) NULL,
	[subcounts] [int] NULL,
	[types] [nvarchar](200) NULL,
	[showtype] [int] NULL,
	[otherurl] [nvarchar](200) NULL,
	[posts] [int] NULL,
 CONSTRAINT [PK_WMS_SortInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortInfo', @level2type=N'COLUMN',@level2name=N'channelid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目应用Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortInfo', @level2type=N'COLUMN',@level2name=N'appid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortInfo', @level2type=N'COLUMN',@level2name=N'display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父栏目编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortInfo', @level2type=N'COLUMN',@level2name=N'parentid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父目录id集合,包括自身的id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortInfo', @level2type=N'COLUMN',@level2name=N'parentlist'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortInfo', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目标识符' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortInfo', @level2type=N'COLUMN',@level2name=N'markup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortInfo', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortInfo', @level2type=N'COLUMN',@level2name=N'icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortInfo', @level2type=N'COLUMN',@level2name=N'img'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子栏目数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortInfo', @level2type=N'COLUMN',@level2name=N'subcounts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目分类id，以,分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortInfo', @level2type=N'COLUMN',@level2name=N'types'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外部连接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortInfo', @level2type=N'COLUMN',@level2name=N'otherurl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布统计' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortInfo', @level2type=N'COLUMN',@level2name=N'posts'
GO
SET IDENTITY_INSERT [dbo].[FP_WMS_SortInfo] ON
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (1, 1, 3, 3, 0, N'0,1', N'工作办理表单', N'', 20, N'', N'', N'', N'', N'022FTVJ08R2RXR2RNXP2', 0, N'', 0, N'', 0)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (2, 2, 2, 1, 0, N'0,2', N'行政管理', N'', 20, N'', N'', N'', N'', N'J8604844TVP6F08862RR', 0, N'', 0, N'', 0)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (3, 2, 2, 3, 0, N'0,3', N'财务管理', N'', 20, N'', N'', N'', N'', N'RT4XRNB868L462HLZ866', 0, N'', 0, N'', 0)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (4, 2, 2, 4, 0, N'0,4', N'印章管理', N'', 20, N'', N'', N'', N'', N'TDN2H24N6BZL88HRZV4X', 0, N'', 0, N'', 0)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (5, 1, 3, 1, 0, N'0,5', N'行政管理表单', N'', 20, N'', N'', N'', N'', N'40X6T0F8LLL4Z8JPDHB4', 0, N'1', 1, N'', 0)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (6, 1, 3, 2, 0, N'0,6', N'公文管理表单', N'', 20, N'', N'', N'', N'', N'LB204RRD604606PJ2H08', 0, N'', 0, N'', 0)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (7, 1, 3, 4, 0, N'0,7', N'财务管理表单', N'', 20, N'', N'', N'', N'', N'V6H0X0HVP4DR8J4BNRJ6', 0, N'', 0, N'', 0)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (8, 2, 2, 2, 0, N'0,8', N'公文管理', N'', 20, N'', N'', N'', N'', N'PB22B662Z20082RTDHPF', 0, N'', 0, N'', 0)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (9, 3, 4, 1, 0, N'0,9', N'行政公办', N'', 20, N'', N'', N'', N'', N'2TNVPX4HX822JF42VZX4', 0, N'', 0, N'', 0)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (10, 3, 4, 2, 0, N'0,10', N'任免公报', N'', 20, N'', N'', N'', N'', N'84J08L44ZXLHNJ0228FB', 0, N'', 0, N'', 0)
SET IDENTITY_INSERT [dbo].[FP_WMS_SortInfo] OFF
/****** Object:  Table [dbo].[FP_WMS_SortAppInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_SortAppInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [nvarchar](50) NULL,
	[type] [nvarchar](30) NULL,
	[installpath] [nvarchar](60) NULL,
	[name] [nvarchar](60) NULL,
	[markup] [nvarchar](30) NULL,
	[indexpage] [nvarchar](200) NULL,
 CONSTRAINT [PK_WMS_SortAppInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortAppInfo', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目应用名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortAppInfo', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用管理页地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SortAppInfo', @level2type=N'COLUMN',@level2name=N'indexpage'
GO
SET IDENTITY_INSERT [dbo].[FP_WMS_SortAppInfo] ON
INSERT [dbo].[FP_WMS_SortAppInfo] ([id], [guid], [type], [installpath], [name], [markup], [indexpage]) VALUES (2, N'86791b37-02af-4340-8c45-288298c294c9', N'app', N'flow', N'流程管理', N'flow', N'flowmanage.aspx;/app/workflow/workmanage.aspx')
INSERT [dbo].[FP_WMS_SortAppInfo] ([id], [guid], [type], [installpath], [name], [markup], [indexpage]) VALUES (3, N'67406a52-2f88-48e2-b5d4-008163f99d37', N'app', N'form', N'表单管理', N'form', N'formmanage.aspx')
INSERT [dbo].[FP_WMS_SortAppInfo] ([id], [guid], [type], [installpath], [name], [markup], [indexpage]) VALUES (4, N'3020fb8c-e831-401d-8b89-cf52745d7f26', N'app', N'document', N'发文管理', N'document', N'documentmanage.aspx')
INSERT [dbo].[FP_WMS_SortAppInfo] ([id], [guid], [type], [installpath], [name], [markup], [indexpage]) VALUES (5, N'0eb5ae2c-9886-458d-aaa4-99859efa465b', N'app', N'news', N'新闻文章', N'news', N'newsmanage.aspx')
INSERT [dbo].[FP_WMS_SortAppInfo] ([id], [guid], [type], [installpath], [name], [markup], [indexpage]) VALUES (6, N'0eb5ae2c-9886-458d-aaa4-99859efa465b', N'app', N'news', N'文件下载', N'download', N'downloadmanage.aspx')
SET IDENTITY_INSERT [dbo].[FP_WMS_SortAppInfo] OFF
/****** Object:  Table [dbo].[FP_WMS_SessionInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_SessionInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [nvarchar](60) NULL,
	[uid] [int] NULL,
	[username] [nvarchar](60) NULL,
	[password] [nvarchar](60) NULL,
	[realname] [nvarchar](60) NULL,
	[avatar] [nvarchar](60) NULL,
	[platform] [nvarchar](50) NULL,
	[token] [nvarchar](60) NULL,
	[address] [nvarchar](250) NULL,
	[roleid] [int] NULL,
	[rolename] [nvarchar](100) NULL,
	[departid] [int] NULL,
	[departname] [nvarchar](150) NULL,
	[createtime] [datetime] NULL,
	[updatetime] [datetime] NULL,
	[timeout] [int] NULL,
	[invisible] [int] NULL,
	[state] [int] NULL,
 CONSTRAINT [PK_FP_SSO_SessionInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SessionID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SessionInfo', @level2type=N'COLUMN',@level2name=N'sid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SessionInfo', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MD5加密后的用户密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SessionInfo', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SessionInfo', @level2type=N'COLUMN',@level2name=N'realname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户凭证' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SessionInfo', @level2type=N'COLUMN',@level2name=N'token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SessionInfo', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户所在的角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SessionInfo', @level2type=N'COLUMN',@level2name=N'roleid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最的更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SessionInfo', @level2type=N'COLUMN',@level2name=N'updatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户状态 0不在线   1在线' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_SessionInfo', @level2type=N'COLUMN',@level2name=N'invisible'
GO
SET IDENTITY_INSERT [dbo].[FP_WMS_SessionInfo] ON
INSERT [dbo].[FP_WMS_SessionInfo] ([id], [sid], [uid], [username], [password], [realname], [avatar], [platform], [token], [address], [roleid], [rolename], [departid], [departname], [createtime], [updatetime], [timeout], [invisible], [state]) VALUES (1, N'ZPDJX80Z8H2TTF0240TV2DR28Z8XV2HV', 1, N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'方配', N'common/avatar/1.png', N'FP_OA', N'48ddf1a4ffac465e282641417dc79602', N'127.0.0.1', 1, N'系统管理员', 4, N'行政部', CAST(0x0000A87F00F9B370 AS DateTime), CAST(0x0000A87F00F9B370 AS DateTime), 60, 0, 1)
SET IDENTITY_INSERT [dbo].[FP_WMS_SessionInfo] OFF
/****** Object:  Table [dbo].[FP_WMS_RoleInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_RoleInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](60) NULL,
	[markup] [nvarchar](60) NULL,
	[description] [nvarchar](100) NULL,
	[desktopurl] [nvarchar](100) NULL,
	[sorts] [nvarchar](250) NULL,
	[menus] [nvarchar](250) NULL,
	[desktop] [nvarchar](250) NULL,
	[permission] [nvarchar](250) NULL,
	[isadmin] [int] NULL,
	[isupload] [int] NULL,
	[isdownload] [int] NULL,
	[issms] [int] NULL,
 CONSTRAINT [PK_FP_RoleInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_RoleInfo', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_RoleInfo', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统桌面地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_RoleInfo', @level2type=N'COLUMN',@level2name=N'desktopurl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_RoleInfo', @level2type=N'COLUMN',@level2name=N'sorts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_RoleInfo', @level2type=N'COLUMN',@level2name=N'menus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'桌面权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_RoleInfo', @level2type=N'COLUMN',@level2name=N'desktop'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_RoleInfo', @level2type=N'COLUMN',@level2name=N'permission'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'后台登录权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_RoleInfo', @level2type=N'COLUMN',@level2name=N'isadmin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传文件权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_RoleInfo', @level2type=N'COLUMN',@level2name=N'isupload'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载文件权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_RoleInfo', @level2type=N'COLUMN',@level2name=N'isdownload'
GO
SET IDENTITY_INSERT [dbo].[FP_WMS_RoleInfo] ON
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [markup], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload], [issms]) VALUES (1, N'系统管理员', N'', N'', N'', N'1,2', N'1,2,3,22,41,36,30,9,5,6,42,7,8,21,34,31,23,32,13,14,15,16,17,18,19,20,40,10,11,12,25,26,27,28,39,29,43,44,45,46,47,48', N'6,5,2,1,3,4,26,41,7,10,11,15,18,12,14,9,8,13,16,42,39,40,44,38,27,47,46,48,34,35,19,28,29,30', N'1,2,3,4,5,6,7,8,9,10,11', 0, 1, 1, 1)
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [markup], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload], [issms]) VALUES (2, N'游客', NULL, N'', N'', N'', N'', N'', N'', 0, 0, 0, NULL)
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [markup], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload], [issms]) VALUES (3, N'等待验证', NULL, N'', N'', N'', N'', N'', N'', 0, 0, 0, NULL)
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [markup], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload], [issms]) VALUES (4, N'禁止访问', NULL, N'', N'', N'', N'', N'', N'', 0, 0, 0, NULL)
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [markup], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload], [issms]) VALUES (5, N'注册用户', N'', N'', N'', N'', N'', N'7,10,11,15,18,12,14,9,8,13,16,39,40,38,27,33,34,35,19,28,29,30', N'5,6,7', 0, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[FP_WMS_RoleInfo] OFF
/****** Object:  Table [dbo].[FP_WMS_Permission]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_Permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[flagpage] [ntext] NULL,
	[isadd] [int] NULL,
	[isupdate] [int] NULL,
	[isdelete] [int] NULL,
	[isaudit] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_WMS_Permission] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问权限名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Permission', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问权限页面' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Permission', @level2type=N'COLUMN',@level2name=N'flagpage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Permission', @level2type=N'COLUMN',@level2name=N'isadd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Permission', @level2type=N'COLUMN',@level2name=N'isupdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Permission', @level2type=N'COLUMN',@level2name=N'isdelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Permission', @level2type=N'COLUMN',@level2name=N'isaudit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Permission', @level2type=N'COLUMN',@level2name=N'status'
GO
SET IDENTITY_INSERT [dbo].[FP_WMS_Permission] ON
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (1, N'栏目管理', N'admin/sort/sortmanage.aspx
admin/sort/sortadd.aspx', 1, 1, 0, 0, 1)
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (2, N'用户查看', N'admin/user/usermanage.aspx', 0, 0, 0, 0, 1)
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (3, N'发送短消息', N'/app/message/msgadd.aspx
/app/message/msglist.aspx
/app/message/sendlist.aspx', 1, 1, 1, 1, 1)
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (4, N'值班安排', N'app/duty/index.aspx', 1, 1, 1, 1, 1)
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (5, N'发布通知公告', N'/app/notice/noticeadd.aspx
/app/notice/noticemanage.aspx
/app/notice/noticelist.aspx
/app/notice/noticeread.aspx', 1, 1, 1, 1, 1)
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (6, N'发布公文查询', N'add/docquery/create.aspx
add/docquery/docquery.aspx
add/docquery/sendlist.aspx', 1, 1, 1, 1, 1)
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (7, N'新建工作', N'app/workflow/workinbox.aspx
app/workflow/worklist.aspx
app/workflow/taskadd.aspx
app/workflow/workadd.aspx
app/workflow/worknew.aspx', 1, 1, 1, 1, 1)
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (8, N'新建发文', N'app/document/create.aspx
app/document/inbox.aspx
app/document/sendlist.aspx', 1, 1, 1, 1, 1)
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (9, N'会议管理', N'app/meeting/index.aspx
app/meeting/meet_room.aspx
app/meeting/meet_device.aspx
app/meeting/meet_type.aspx
app/meeting/meet_manager.aspx
app/meeting/meet_see.aspx
app/meeting/meet_approve.aspx', 1, 1, 1, 1, 1)
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (10, N'值班安排', N'app/study/study_new.aspx
app/study/study_manage.aspx
app/study/index.aspx', 1, 1, 1, 1, 1)
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (11, N'工作周报', N'', 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[FP_WMS_Permission] OFF
/****** Object:  Table [dbo].[FP_WMS_MsgTempInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_MsgTempInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [int] NULL,
	[name] [nvarchar](50) NULL,
	[markup] [nvarchar](20) NULL,
	[subject] [nvarchar](50) NULL,
	[content] [ntext] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_FP_WMS_EmailTemplate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板类型 0为站内信 1为邮件 2为短信' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_MsgTempInfo', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_MsgTempInfo', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_MsgTempInfo', @level2type=N'COLUMN',@level2name=N'markup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_MsgTempInfo', @level2type=N'COLUMN',@level2name=N'content'
GO
SET IDENTITY_INSERT [dbo].[FP_WMS_MsgTempInfo] ON
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (1, 1, N'新用户激活邮件', N'email_register', N'方配网站管理系统用户注册激活邮件', N'亲爱的【姓名】, 您好！<br />
<br />
感谢您注册方配网站管理系统的用户，您登录的邮箱帐号为 【邮箱帐号】<br />
请在三天内点击或将该链接复制到浏览器地址栏中访问，确认您的邮件地址并激活账号。<br />
【激活链接】<br />
(如果链接无法点击，请将它拷贝到浏览器的地址栏中)<br />
感谢您对我们的支持！<br />
<br />
-----------------------------------------------------------------------<br />
此为系统邮件，请勿回复。<br />
方配软件技术有限公司<br />
如有任何疑问，可访问 <a href="http://www.fangpage.com" target="_blank">http://www.fangpage.com</a> <br />
<p>
	<br />
</p>', 1)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (3, 1, N'新用户激活成功邮件', N'email_registed', N'方配网站管理系统用户激法成功！', N'尊敬的【姓名】，您好！<br />
恭喜您成功注册账号 <span>【邮箱帐号】</span>！<br />
<p>
	为了让您正常愉快的享受我们的服务，请妥善保管您好的账号和密码，以免遭到泄漏被他人盗用。
</p>
<p>
	<br />
</p>
<p>
	<span>-----------------------------------------------------------------------</span><br />
<span>此为系统邮件，请勿回复。</span><br />
<span>方配软件技术有限公司</span><br />
<span>如有任何疑问，可访问 </span><a href="http://www.fangpage.com/" target="_blank">http://www.fangpage.com</a><span> </span> 
</p>', 1)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (5, 1, N'重置密码邮件', N'email_resetpassword', N'方配网站管理系统重置密码邮件', N'亲爱的【姓名】，您好：<br />
<br />
很高兴您使用方配网站管理系统(WMS)。<br />
<br />
请在30分钟内点击以下链接重置您的密码：<br />
【激活链接】<br />
(如果链接无法点击，请将它拷贝到浏览器的地址栏中)<br />
感谢您对我们的支持！<br />
<br />
-----------------------------------------------------------------------<br />
此为系统邮件，请勿回复。<br />
方配软件技术有限公司<br />
如有任何疑问，可访问 http://www.fangpage.com <br />
<br />', 1)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (6, 1, N'注册成功邮件', N'email_success', N'恭喜您成功注册账号', N'<h4 style="font-size:14px;font-family:''lucida Grande'', Verdana, ''Microsoft YaHei'';background-color:#FFFFFF;">
	尊敬的客户，您好！
</h4>
<h4 style="text-align:start;font-size:14px;font-family:''lucida Grande'', Verdana, ''Microsoft YaHei'';background-color:#FFFFFF;">
	<span style="line-height:1.5;"> </span><span style="font-weight:normal;line-height:1.5;">恭喜您成功注册账号 【用户名】（【姓名】）</span><span style="font-weight:normal;line-height:1.5;">！</span> 
</h4>
<div style="font-family:''lucida Grande'', Verdana, ''Microsoft YaHei'';font-size:14px;background-color:#FFFFFF;margin:0px;">
	为了让您正常愉快的享受我们的服务，请妥善保管您的账号和密码，以免遭到泄漏被他人盗用。如果您忘记了密码，请点击【重置密码】。
</div>', 0)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (7, 1, N'测试发送邮件', N'email_test', N'方配网站管理系统(WMS)发送系统测试邮件', N'您好，这是一封方配网站管理系统(WMS)邮箱设置页面发送的测试邮件!，如果您收到这款邮件说明您的邮箱配置是正确的。', 1)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (8, 2, N'测试发送短信', N'sms_test', N'', N'您的验证码是：【验证码】。请不要把验证码泄露给其他人。如非本人操作，可不用理会！', 1)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (9, 2, N'验证码短信', N'sms_verify', N'', N'您的验证码是：【验证码】。请不要把验证码泄露给其他人。如非本人操作，可不用理会！', 1)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (10, 2, N'短信前辍', N'sms_prefix', N'', N'【方配软件】', 1)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (11, 2, N'短信后辍', N'sms_suffix', N'', N'(${name})', 1)
SET IDENTITY_INSERT [dbo].[FP_WMS_MsgTempInfo] OFF
/****** Object:  Table [dbo].[FP_WMS_MenuInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_MenuInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[platform] [nvarchar](100) NULL,
	[lefturl] [nvarchar](200) NULL,
	[righturl] [nvarchar](200) NULL,
	[display] [int] NULL,
	[hidden] [int] NULL,
	[system] [int] NULL,
 CONSTRAINT [PK_WMS_MenuInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FP_WMS_MenuInfo] ON
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (1, 0, N'系统管理', N'SYSTEM', N'sysmenu.aspx?parentid=1', N'desktop.aspx', 1, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (2, 1, N'系统常规设置', N'SYSTEM', N'', N'', 1, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (3, 2, N'系统基础配置', N'SYSTEM', N'', N'global/sysconfigmanage.aspx', 1, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (5, 2, N'系统文件管理', N'SYSTEM', N'', N'global/sysfilesmanage.aspx', 7, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (6, 2, N'系统缓存管理', N'SYSTEM', N'', N'global/cachemanage.aspx', 8, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (7, 2, N'系统日志管理', N'SYSTEM', N'', N'global/syslogmanage.aspx', 10, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (8, 2, N'邮箱短信配置', N'SYSTEM', N'', N'global/emailconfigmanage.aspx', 11, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (9, 2, N'系统菜单管理', N'SYSTEM', N'', N'global/sysmenumanage.aspx', 6, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (10, 40, N'上传图片配置', N'SYSTEM', N'', N'global/watermarkset.aspx', 10, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (11, 40, N'上传附件类型', N'SYSTEM', N'', N'global/attachtypemanage.aspx', 11, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (12, 40, N'上传附件管理', N'SYSTEM', N'', N'global/attachmanage.aspx', 12, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (13, 1, N'系统用户设置', N'SYSTEM', N'', N'', 3, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (14, 13, N'系统角色管理', N'SYSTEM', N'', N'user/rolemanage.aspx', 1, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (15, 13, N'操作权限管理', N'SYSTEM', N'', N'user/permissionmanage.aspx', 2, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (16, 13, N'用户部门管理', N'SYSTEM', N'', N'user/departmentmanage.aspx', 3, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (17, 13, N'用户岗位管理', N'SYSTEM', N'', N'user/grademanage.aspx', 4, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (18, 13, N'用户注册配置', N'SYSTEM', N'', N'user/regconfigmanage.aspx', 5, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (19, 13, N'等待验证用户', N'SYSTEM', N'', N'user/userauditing.aspx', 6, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (20, 13, N'系统用户管理', N'SYSTEM', N'', N'user/usermanage.aspx', 11, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (21, 1, N'系统栏目设置', N'SYSTEM', N'', N'', 2, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (22, 2, N'系统站点管理', N'SYSTEM', N'', N'global/sitemanage.aspx', 2, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (23, 21, N'系统栏目管理', N'SYSTEM', N'', N'sort/sortmanage.aspx', 2, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (25, 1, N'系统数据库设置', N'SYSTEM', N'', N'', 5, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (26, 25, N'在线运行SQL命令', N'SYSTEM', N'', N'dbset/runsql.aspx', 1, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (27, 25, N'数据库备份还原', N'SYSTEM', N'', N'dbset/dbbackup.aspx', 2, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (28, 25, N'数据库收缩优化', N'SYSTEM', N'', N'dbset/dbshrink.aspx', 3, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (29, 0, N'表单管理', N'FP_OA', N'sorttree.aspx?channelid=1', N'/app/form/formmanage.aspx?channelid=1', 2, 0, 0)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (30, 2, N'系统桌面管理', N'SYSTEM', N'', N'global/desktopmanage.aspx', 5, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (31, 21, N'栏目功能管理', N'SYSTEM', N'', N'sort/sortappmanage.aspx', 4, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (32, 21, N'系统类型管理', N'SYSTEM', N'', N'sort/typemanage.aspx', 3, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (34, 21, N'系统频道管理', N'SYSTEM', N'', N'sort/channelmanage.aspx', 1, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (36, 2, N'系统插件管理', N'SYSTEM', N'', N'global/pluginmanage.aspx', 4, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (39, 25, N'重置清空数据库', N'SYSTEM', N'', N'dbset/dbreset.aspx', 4, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (40, 1, N'上传附件设置', N'SYSTEM', N'', N'', 4, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (41, 2, N'系统应用管理', N'SYSTEM', N'', N'global/appmanage.aspx', 3, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (42, 2, N'系统计划任务', N'SYSTEM', N'', N'global/taskmanage.aspx', 9, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (43, 0, N'流程管理', N'FP_OA', N'sorttree.aspx?channelid=2', N'/app/flow/flowmanage.aspx?channelid=2', 3, 0, 0)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (44, 0, N'工作管理', N'FP_OA', N'sorttree.aspx?channelid=2&index=1', N'/app/workflow/workmanage.aspx', 4, 0, 0)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (45, 0, N'发文管理', N'FP_OA', N'sorttree.aspx?channelid=3', N'/app/document/documentmanage.aspx?channelid=3', 5, 0, 0)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (46, 13, N'单点登录配置', N'SYSTEM', N'', N'global/ssoconfigs.aspx', 9, 0, 0)
SET IDENTITY_INSERT [dbo].[FP_WMS_MenuInfo] OFF
/****** Object:  Table [dbo].[FP_WMS_GradeInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_GradeInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[description] [nvarchar](200) NULL,
	[manager] [nvarchar](250) NULL,
 CONSTRAINT [PK_WMS_UserGrade] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FP_WMS_GradeInfo] ON
INSERT [dbo].[FP_WMS_GradeInfo] ([id], [name], [description], [manager]) VALUES (5, N'董事长', N'', N'')
INSERT [dbo].[FP_WMS_GradeInfo] ([id], [name], [description], [manager]) VALUES (6, N'部门经理', N'', N'')
INSERT [dbo].[FP_WMS_GradeInfo] ([id], [name], [description], [manager]) VALUES (7, N'员工', N'', N'')
SET IDENTITY_INSERT [dbo].[FP_WMS_GradeInfo] OFF
/****** Object:  Table [dbo].[FP_WMS_DesktopInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_DesktopInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[app] [nvarchar](50) NULL,
	[parentid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[markup] [nvarchar](60) NULL,
	[platform] [nvarchar](100) NULL,
	[description] [nvarchar](200) NULL,
	[icon] [nvarchar](200) NULL,
	[attach_icon] [nvarchar](100) NULL,
	[url] [nvarchar](200) NULL,
	[target] [nvarchar](20) NULL,
	[desk] [int] NULL,
	[width] [int] NULL,
	[height] [int] NULL,
	[hidden] [int] NULL,
	[display] [int] NULL,
 CONSTRAINT [PK_FP_WMS_DesktopInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'桌面图标用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_DesktopInfo', @level2type=N'COLUMN',@level2name=N'uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'桌面名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_DesktopInfo', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'桌面描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_DesktopInfo', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'桌面图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_DesktopInfo', @level2type=N'COLUMN',@level2name=N'icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打开目标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_DesktopInfo', @level2type=N'COLUMN',@level2name=N'url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_DesktopInfo', @level2type=N'COLUMN',@level2name=N'target'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_DesktopInfo', @level2type=N'COLUMN',@level2name=N'hidden'
GO
SET IDENTITY_INSERT [dbo].[FP_WMS_DesktopInfo] ON
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (1, 0, N'sites_admin', 6, N'站点管理', N'', N'SYSTEM', N'', N'statics/desktop/sites.gif', N'688P0462PZ682X42VV64', N'global/sitemanage.aspx', N'_self', 0, 0, 0, 0, 3)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (2, 0, N'sites_admin', 6, N'角色管理', N'', N'SYSTEM', N'', N'statics/desktop/role.gif', N'P48602804LPLR04L8BJ8', N'user/rolemanage.aspx', N'_self', 0, 0, 0, 0, 2)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (3, 0, N'sites_admin', 6, N'用户管理', N'', N'SYSTEM', N'', N'/admin/statics/desktop/users.gif', N'N4V628N0680X8LPHF0RP', N'user/usermanage.aspx', N'_self', 0, 0, 0, 0, 4)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (4, 0, N'sites_admin', 6, N'栏目管理', N'', N'SYSTEM', N'', N'statics/desktop/sort.gif', N'24NXN244DRZRR4TJP4P2', N'sort/sortmanage.aspx', N'_self', 1, 0, 0, 0, 5)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (5, 1, N'sites_admin', 6, N'系统配置', N'', N'SYSTEM', N'', N'statics/desktop/sys.gif', N'PHJLD2X2DHTPL02ZR0DD', N'global/sysconfigmanage.aspx', N'_self', 0, 0, 0, 0, 1)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (6, 1, N'sites_admin', 0, N'后台桌面', N'wms_desktop', N'SYSTEM', N'', N'statics/desktop/bms.png', N'8VZ428B462ZFDLH02F08', N'', N'_self', 0, 650, 500, 0, 0)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (7, 1, N'FP_OA', 0, N'OA系统桌面', N'oa_desktop', N'FP_OA', N'', N'oa.png', N'Z20880D8LD8N6NF0VN6Z', N'', N'_self', 0, 0, 0, 0, 2)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (9, 1, N'app_document', 7, N'公文收发', N'', N'FP_OA', N'', N'document.png', N'V046FTT2RP0DJ66N4664', N'inbox.aspx', N'_self', 1, 0, 0, 0, 2)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (10, 1, N'app_email', 7, N'内部邮件', N'', N'FP_OA', N'', N'email.png', N'ZTTPN626H6N442ZT2PRT', N'inbox.aspx', N'_self', 0, 0, 0, 0, 1)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (11, 1, N'app_message', 7, N'系统消息', N'', N'FP_OA', N'', N'message.png', N'0080246284F0P4DR06PF', N'msglist.aspx', N'_self', 0, 0, 0, 0, 2)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (12, 1, N'app_settings', 7, N'系统设置', N'settings', N'FP_OA', N'', N'settings.png', N'80008NLJDF6LN8B606J8', N'settings.aspx', N'_self', 0, 0, 0, 0, 5)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (13, 1, N'app_sms', 7, N'手机短信', N'', N'FP_OA', N'', N'sms.png', N'D2R6RBXPZVVD0RL2HLPR', N'smssend.aspx', N'_self', 1, 0, 0, 0, 4)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (14, 1, N'app_workflow', 7, N'工作办理', N'', N'FP_OA', N'', N'workflow.png', N'8B4V0L4FRFD4D002F62L', N'workinbox.aspx?username=[username]', N'_self', 1, 0, 0, 0, 1)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (15, 1, N'app_notice', 7, N'通知公告', N'', N'FP_OA', N'', N'notice.png', N'F06V2J064R0TZ02L4FPR', N'noticelist.aspx', N'_self', 0, 0, 0, 0, 3)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (18, 1, N'app_address', 7, N'通信录', N'', N'FP_OA', N'', N'address.png', N'P4X0LX2F28RB42V8D264', N'index.aspx', N'_self', 0, 0, 0, 0, 4)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (19, 1, N'FP_OA', 0, N'OA开始菜单', N'oa_startmenu', N'FP_OA', N'', N'public/images/startmenu.png', N'4T08R2B66Z646B0B842R', N'', N'_self', 0, 0, 0, 0, 3)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (26, 1, N'FP_OA', 6, N'面板设置', N'', N'FP_OA', N'', N'/oa/public/images/board.png', N'46JXJ200N2D6B086DDRJ', N'/plugins/board/boardconfig.aspx', N'_open', 1, 900, 500, 0, 6)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (28, 1, N'app_settings', 19, N'个人资料', N'profile', N'FP_OA', N'', N'images/profile_btn.png', N'P2FL46DZ48RR0LNJ484B', N'profile.aspx', N'_self', 0, 0, 0, 0, 1)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (29, 1, N'app_settings', 19, N'修改密码', N'userpwd', N'FP_OA', N'', N'images/password_btn.png', N'442D88ZV8TVZR8682824', N'userpwd.aspx', N'_self', 0, 0, 0, 0, 2)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (30, 1, N'app_settings', 19, N'系统设置', N'settings', N'FP_OA', N'', N'images/sysconfig_btn.png', N'J6VJ6B8T0JJZLBD08F40', N'settings.aspx', N'_self', 0, 0, 0, 0, 3)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (40, 1, N'app_car', 7, N'车辆申请', N'', N'FP_OA', N'', N'car.png', N'8R22L0J2VPXLRP2608V6', N'workinbox.aspx', N'_self', 1, 0, 0, 0, 17)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (41, 1, N'FP_OA', 6, N'计数设置', N'', N'FP_OA', N'', N'/plugins/count/count.png', N'P484D2L0B02TRL48VP4R', N'/plugins/count/countconfig.aspx', N'_open', 1, 700, 500, 0, 7)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (46, 1, N'app_leave', 7, N'请假申请', N'', N'FP_OA', N'', N'leave.png', N'Z6N82V44BPF8H4Z0DN2D', N'leave_inbox.aspx', N'_self', 1, 0, 0, 0, 20)
SET IDENTITY_INSERT [dbo].[FP_WMS_DesktopInfo] OFF
/****** Object:  Table [dbo].[FP_WMS_Department]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_Department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[keyid] [nvarchar](100) NULL,
	[parentid] [int] NULL,
	[parentlist] [nvarchar](100) NULL,
	[departlist] [nvarchar](250) NULL,
	[name] [nvarchar](60) NULL,
	[shortname] [nvarchar](100) NULL,
	[types] [nvarchar](200) NULL,
	[markup] [nvarchar](60) NULL,
	[manager] [nvarchar](max) NULL,
	[departer] [nvarchar](max) NULL,
	[usercount] [int] NULL,
	[description] [nvarchar](100) NULL,
	[display] [int] NULL,
	[subcounts] [int] NULL,
	[posts] [int] NULL,
 CONSTRAINT [PK_WMS_Department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Department', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Department', @level2type=N'COLUMN',@level2name=N'parentid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门层级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Department', @level2type=N'COLUMN',@level2name=N'parentlist'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Department', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门用户数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Department', @level2type=N'COLUMN',@level2name=N'usercount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Department', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Department', @level2type=N'COLUMN',@level2name=N'display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子部门数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Department', @level2type=N'COLUMN',@level2name=N'subcounts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门发布数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_Department', @level2type=N'COLUMN',@level2name=N'posts'
GO
SET IDENTITY_INSERT [dbo].[FP_WMS_Department] ON
INSERT [dbo].[FP_WMS_Department] ([id], [keyid], [parentid], [parentlist], [departlist], [name], [shortname], [types], [markup], [manager], [departer], [usercount], [description], [display], [subcounts], [posts]) VALUES (1, NULL, 0, N'0,1', N'方配软件公司', N'方配软件公司', NULL, N'', N'', N'admin', N'', 0, N'', 1, 4, 0)
INSERT [dbo].[FP_WMS_Department] ([id], [keyid], [parentid], [parentlist], [departlist], [name], [shortname], [types], [markup], [manager], [departer], [usercount], [description], [display], [subcounts], [posts]) VALUES (2, NULL, 1, N'0,1,2', NULL, N'研发部', NULL, N'12', N'', NULL, NULL, 0, N'', 3, 0, 0)
INSERT [dbo].[FP_WMS_Department] ([id], [keyid], [parentid], [parentlist], [departlist], [name], [shortname], [types], [markup], [manager], [departer], [usercount], [description], [display], [subcounts], [posts]) VALUES (3, NULL, 1, N'0,1,3', NULL, N'营运部', NULL, N'12', N'', NULL, NULL, 0, N'', 2, 0, 0)
INSERT [dbo].[FP_WMS_Department] ([id], [keyid], [parentid], [parentlist], [departlist], [name], [shortname], [types], [markup], [manager], [departer], [usercount], [description], [display], [subcounts], [posts]) VALUES (4, NULL, 1, N'0,1,4', NULL, N'行政部', NULL, N'15', N'', NULL, NULL, 0, N'', 1, 0, 0)
INSERT [dbo].[FP_WMS_Department] ([id], [keyid], [parentid], [parentlist], [departlist], [name], [shortname], [types], [markup], [manager], [departer], [usercount], [description], [display], [subcounts], [posts]) VALUES (6, NULL, 1, N'0,1,6', N'', N'策划部', NULL, N'', N'', N'', N'', 0, N'', 4, 0, 0)
SET IDENTITY_INSERT [dbo].[FP_WMS_Department] OFF
/****** Object:  Table [dbo].[FP_WMS_CreditInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_CreditInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[type] [int] NULL,
	[credits] [int] NULL,
	[postdatetime] [datetime] NULL,
	[doid] [int] NULL,
	[doname] [nvarchar](30) NULL,
 CONSTRAINT [PK_FP_CreditLogInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_CreditInfo', @level2type=N'COLUMN',@level2name=N'uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_CreditInfo', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_CreditInfo', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_CreditInfo', @level2type=N'COLUMN',@level2name=N'credits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_CreditInfo', @level2type=N'COLUMN',@level2name=N'postdatetime'
GO
/****** Object:  Table [dbo].[FP_WMS_ChannelInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_ChannelInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[display] [int] NULL,
	[markup] [nvarchar](20) NULL,
	[sortapps] [nvarchar](250) NULL,
	[description] [nvarchar](100) NULL,
 CONSTRAINT [PK_WMS_ChannelInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FP_WMS_ChannelInfo] ON
INSERT [dbo].[FP_WMS_ChannelInfo] ([id], [name], [display], [markup], [sortapps], [description]) VALUES (1, N'表单管理', 1, N'workform', N'3', N'表单栏目管理')
INSERT [dbo].[FP_WMS_ChannelInfo] ([id], [name], [display], [markup], [sortapps], [description]) VALUES (2, N'流程管理', 2, N'workflow', N'2', N'流程栏目管理')
INSERT [dbo].[FP_WMS_ChannelInfo] ([id], [name], [display], [markup], [sortapps], [description]) VALUES (3, N'发文管理', 3, N'document', N'4', N'发文分类管理')
SET IDENTITY_INSERT [dbo].[FP_WMS_ChannelInfo] OFF
/****** Object:  Table [dbo].[FP_WMS_CacheInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_CacheInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[key] [nvarchar](50) NULL,
	[expires] [int] NULL,
	[cachedatetime] [datetime] NULL,
	[file] [nvarchar](250) NULL,
 CONSTRAINT [PK_FP_WMS_CacheInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缓存名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_CacheInfo', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缓存键值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_CacheInfo', @level2type=N'COLUMN',@level2name=N'key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过期时间(分钟)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_CacheInfo', @level2type=N'COLUMN',@level2name=N'expires'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缓存时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_WMS_CacheInfo', @level2type=N'COLUMN',@level2name=N'cachedatetime'
GO
SET IDENTITY_INSERT [dbo].[FP_WMS_CacheInfo] ON
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (1, N'系统文件大小缓存', N'WMS_SYSSIZE', 10, CAST(0x0000A6A6012FC5A0 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (2, N'系统桌面信息缓存', N'FP_DESKLIST', -1, CAST(0x0000A7C100FE8B48 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (3, N'系统邮箱配置缓存', N'FP_EMAILCONFIG', 0, CAST(0x0000A87F00F4284C AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (4, N'系统角色信息缓存', N'FP_ROLELIST', -1, CAST(0x0000A87F00FF0780 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (5, N'系统短信配置缓存', N'FP_SMSCONFIG', 0, CAST(0x0000A87F00F43D64 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (6, N'栏目功能信息缓存', N'FP_SORTAPPLIST', -1, CAST(0x0000A87F00FEA2B8 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (7, N'用户注册配置缓存', N'FP_REGCONFIG', 0, CAST(0x0000A87F00F9A68C AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (8, N'系统应用信息缓存', N'FP_APPLIST', -1, CAST(0x0000A87F01051968 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (9, N'系统部门信息缓存', N'FP_DEPARTLIST', -1, CAST(0x0000A87F00FF0780 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (10, N'用户级别信息缓存', N'FP_USERGRADE', -1, CAST(0x0000A77E0108FD80 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (11, N'系统插件信息缓存', N'FP_PLUGINLIST', -1, CAST(0x0000A87F00FEFF4C AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (12, N'系统用户信息缓存', N'FP_USERLIST', -1, CAST(0x0000A87F00FF0780 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (13, N'系统菜单信息缓存', N'FP_MENULIST', 30, CAST(0x0000A87F010529D0 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (14, N'OA用户系统配置缓存', N'FP_OA_SETTINGINFO', -1, CAST(0x0000A87F00FF08AC AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (15, N'用户面板信息缓存', N'FP_BOARDLIST', -1, CAST(0x0000A72B00B88FA8 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (16, N'部门计数信息缓存', N'FP_DEPARTCOUNTLIST', -1, CAST(0x0000A7220103E2DC AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (17, N'用户计数信息缓存', N'FP_COUNTLIST', -1, CAST(0x0000A7B401020E1C AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (18, N'部门提醒消息缓存', N'FP_DEPARTMSGLIST', -1, CAST(0x0000A72800CB370C AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (19, N'用户提醒消息缓存', N'FP_MESSAGELIST', -1, CAST(0x0000A72A01852E78 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (20, N'系统流程列表缓存', N'FP_FLOWLIST', -1, CAST(0x0000A87F00FFA488 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (21, N'系统分类信息缓存', N'FP_TYPELIST', -1, CAST(0x0000A87F00FFA488 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (22, N'附件类型信息缓存', N'FP_ATTACHTYPE', -1, CAST(0x0000A87F00FFC0A8 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (23, N'面板配置信息缓存', N'FP_BOARDCONFIG', -1, CAST(0x0000A87F00FF0780 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (24, N'单点登录配置缓存', N'FP_SSOCONFIG', 0, CAST(0x0000A87F00F39CD8 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (25, N'计数统计配置缓存', N'FP_COUNTCONFIG', -1, CAST(0x0000A87F00FF0780 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (26, N'系统桌面信息缓存', N'FP_DESKTOPLIST', -1, CAST(0x0000A87F00FF08AC AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (27, N'认证服务配置缓存', N'JITDSignConfig', 0, CAST(0x0000A7E400CCDCEC AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[FP_WMS_CacheInfo] OFF
/****** Object:  Table [dbo].[FP_WMS_AttachType]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_AttachType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[extension] [nvarchar](10) NULL,
	[maxsize] [int] NULL,
	[type] [nvarchar](30) NULL,
 CONSTRAINT [PK_attachtype] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FP_WMS_AttachType] ON
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (1, N'jpg', 4096, N'图片文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (3, N'gif', 4096, N'图片文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (4, N'zip', 4096, N'压缩文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (6, N'png', 4096, N'图片文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (7, N'rar', 4096, N'压缩文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (8, N'doc', 102400, N'文档文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (9, N'xls', 4096, N'文档文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (10, N'flv', 1024000, N'视频文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (11, N'ppt', 4096, N'文档文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (12, N'swf', 4096, N'动画文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (13, N'docx', 4096, N'文档文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (14, N'xlsx', 4096, N'文档文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (15, N'pdf', 4096, N'文档文件')
SET IDENTITY_INSERT [dbo].[FP_WMS_AttachType] OFF
/****** Object:  Table [dbo].[FP_WMS_AttachInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_AttachInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[attachid] [nvarchar](50) NULL,
	[parentid] [int] NULL,
	[platform] [nvarchar](150) NULL,
	[app] [nvarchar](150) NULL,
	[postid] [int] NULL,
	[uid] [int] NULL,
	[name] [nvarchar](250) NULL,
	[filename] [nvarchar](200) NULL,
	[filetype] [nvarchar](100) NULL,
	[filesize] [int] NULL,
	[description] [nvarchar](200) NULL,
	[uploadtime] [datetime] NULL,
	[downloads] [int] NULL,
	[reads] [int] NULL,
	[issync] [int] NULL,
 CONSTRAINT [PK_WMS_FileInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FP_SMS_SMSInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_SMS_SMSInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[sendname] [nvarchar](60) NULL,
	[departs] [nvarchar](250) NULL,
	[departs_name] [nvarchar](250) NULL,
	[users] [nvarchar](250) NULL,
	[users_name] [nvarchar](250) NULL,
	[others] [nvarchar](250) NULL,
	[content] [nvarchar](250) NULL,
	[postdatetime] [datetime] NULL,
	[status] [int] NULL,
	[errmsg] [nvarchar](200) NULL,
 CONSTRAINT [PK_FP_SMSInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_SMS_SMSInfo', @level2type=N'COLUMN',@level2name=N'uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送至' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_SMS_SMSInfo', @level2type=N'COLUMN',@level2name=N'users'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_SMS_SMSInfo', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_SMS_SMSInfo', @level2type=N'COLUMN',@level2name=N'status'
GO
/****** Object:  Table [dbo].[FP_OA_SettingInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_OA_SettingInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[wallpaper] [nvarchar](100) NULL,
	[msg_sound] [int] NULL,
	[desktop] [nvarchar](250) NULL,
 CONSTRAINT [PK_FP_OA_SettingInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_OA_SettingInfo', @level2type=N'COLUMN',@level2name=N'uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'背景id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_OA_SettingInfo', @level2type=N'COLUMN',@level2name=N'wallpaper'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'铃声id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_OA_SettingInfo', @level2type=N'COLUMN',@level2name=N'msg_sound'
GO
SET IDENTITY_INSERT [dbo].[FP_OA_SettingInfo] ON
INSERT [dbo].[FP_OA_SettingInfo] ([id], [uid], [wallpaper], [msg_sound], [desktop]) VALUES (1, 1, N'/oa/wallpapers/1.jpg', 1, N'')
INSERT [dbo].[FP_OA_SettingInfo] ([id], [uid], [wallpaper], [msg_sound], [desktop]) VALUES (2, 2, N'/oa/wallpapers/1.jpg', 1, N'')
INSERT [dbo].[FP_OA_SettingInfo] ([id], [uid], [wallpaper], [msg_sound], [desktop]) VALUES (3, 3, N'/oa/wallpapers/1.jpg', 1, N'')
INSERT [dbo].[FP_OA_SettingInfo] ([id], [uid], [wallpaper], [msg_sound], [desktop]) VALUES (4, 4, N'/oa/wallpapers/1.jpg', 1, N'')
SET IDENTITY_INSERT [dbo].[FP_OA_SettingInfo] OFF
/****** Object:  Table [dbo].[FP_Notice_NoticeRead]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Notice_NoticeRead](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nid] [int] NULL,
	[uid] [int] NULL,
	[readdatetime] [datetime] NULL,
 CONSTRAINT [PK_FP_Notice_NoticeRead] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FP_Notice_NoticeInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Notice_NoticeInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[app] [nvarchar](60) NULL,
	[typeid] [int] NULL,
	[title] [nvarchar](200) NULL,
	[content] [ntext] NULL,
	[attachid] [nvarchar](255) NULL,
	[postdatetime] [datetime] NULL,
	[starttime] [datetime] NULL,
	[endtime] [datetime] NULL,
	[autoend] [int] NULL,
	[departs] [nvarchar](250) NULL,
	[departs_name] [nvarchar](250) NULL,
	[users] [nvarchar](250) NULL,
	[users_name] [nvarchar](250) NULL,
	[viewuid] [nvarchar](250) NULL,
	[istop] [int] NULL,
	[status] [int] NULL,
	[sync] [int] NULL,
	[startdate] [nvarchar](50) NULL,
	[enddate] [nvarchar](50) NULL,
 CONSTRAINT [PK_FP_Notice_NoticeInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属应用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Notice_NoticeInfo', @level2type=N'COLUMN',@level2name=N'app'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Notice_NoticeInfo', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Notice_NoticeInfo', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Notice_NoticeInfo', @level2type=N'COLUMN',@level2name=N'postdatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Notice_NoticeInfo', @level2type=N'COLUMN',@level2name=N'viewuid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Notice_NoticeInfo', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值班安排开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Notice_NoticeInfo', @level2type=N'COLUMN',@level2name=N'startdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值班安排结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Notice_NoticeInfo', @level2type=N'COLUMN',@level2name=N'enddate'
GO
/****** Object:  Table [dbo].[FP_Msg_MessageInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Msg_MessageInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fromuid] [int] NULL,
	[departs] [nvarchar](250) NULL,
	[departs_name] [nvarchar](250) NULL,
	[users] [nvarchar](250) NULL,
	[users_name] [nvarchar](250) NULL,
	[reminds] [nvarchar](250) NULL,
	[views] [nvarchar](250) NULL,
	[removes] [nvarchar](250) NULL,
	[subject] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[url] [nvarchar](250) NULL,
	[target] [nvarchar](20) NULL,
	[postdatetime] [datetime] NULL,
	[maxuid] [int] NULL,
	[status] [int] NULL,
	[attachid] [nvarchar](60) NULL,
	[issend] [int] NULL,
 CONSTRAINT [PK_FP_MSG_Message] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收信人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Msg_MessageInfo', @level2type=N'COLUMN',@level2name=N'users'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Msg_MessageInfo', @level2type=N'COLUMN',@level2name=N'views'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Msg_MessageInfo', @level2type=N'COLUMN',@level2name=N'subject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Msg_MessageInfo', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Msg_MessageInfo', @level2type=N'COLUMN',@level2name=N'url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联链接打开方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Msg_MessageInfo', @level2type=N'COLUMN',@level2name=N'target'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Msg_MessageInfo', @level2type=N'COLUMN',@level2name=N'postdatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Msg_MessageInfo', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Msg_MessageInfo', @level2type=N'COLUMN',@level2name=N'attachid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Msg_MessageInfo', @level2type=N'COLUMN',@level2name=N'issend'
GO
/****** Object:  Table [dbo].[FP_Form_FormInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Form_FormInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channelid] [int] NULL,
	[sortid] [int] NULL,
	[name] [nvarchar](100) NULL,
	[markup] [nvarchar](50) NULL,
	[display] [int] NULL,
	[content] [ntext] NULL,
	[fields] [int] NULL,
	[fieldlist] [nvarchar](255) NULL,
	[dateline] [datetime] NULL,
	[updatetime] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_FP_WF_WorkFormInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在表单栏目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormInfo', @level2type=N'COLUMN',@level2name=N'sortid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormInfo', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormInfo', @level2type=N'COLUMN',@level2name=N'display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单原html模板未经处理的' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormInfo', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormInfo', @level2type=N'COLUMN',@level2name=N'fields'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单字段Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormInfo', @level2type=N'COLUMN',@level2name=N'fieldlist'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormInfo', @level2type=N'COLUMN',@level2name=N'dateline'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormInfo', @level2type=N'COLUMN',@level2name=N'updatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单状态 0禁用 1启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormInfo', @level2type=N'COLUMN',@level2name=N'status'
GO
SET IDENTITY_INSERT [dbo].[FP_Form_FormInfo] ON
INSERT [dbo].[FP_Form_FormInfo] ([id], [channelid], [sortid], [name], [markup], [display], [content], [fields], [fieldlist], [dateline], [updatetime], [status]) VALUES (1, 1, 6, N'收文处理笺', N'', 0, N'<table border="0" cellspacing="0" cellpadding="0" width="800" align="center"><tbody><tr class="firstRow"><td height="60" valign="center" align="middle"><p>&nbsp; &nbsp; &nbsp;</p><span style="font-size: 24px; color: rgb(255, 0, 0);"><strong>方配软件技术有限责任公司</strong></span><br><br> <span style="font-size: 24px; color: rgb(255, 0, 0);"><strong>电子公文收文处理笺</strong></span><br><br></td></tr></tbody></table><table style="border-collapse: collapse;" border="1" cellspacing="0" bordercolor="#ff0000" cellpadding="0" width="800" align="center"><tbody><tr class="firstRow"><td height="48" valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>来文单位</strong></p></td><td height="40" colspan="3"><p style="TEXT-INDENT: 5px"><input style="border-left: 1px solid rgb(255, 255, 255); width: 580px; height: 32px; margin-left: 5px; border-top: 1px solid rgb(255, 255, 255); border-right: 1px solid rgb(255, 255, 255); font-size: 15px; text-align: left;" title="来文单位" leipiplugins="text" name="来文单位" id="1" value="" orghide="0" orgalign="left" orgwidth="580" orgheight="32" orgtype="text" orgfontsize="15"></p></td></tr><tr style="BORDER-COLLAPSE: collapse"><td height="48" valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>文件名称</strong></p></td><td height="40" colspan="3"><input style="border-left: 1px solid rgb(255, 255, 255); width: 580px; margin-left: 5px; border-top: 1px solid rgb(255, 255, 255); border-right: 1px solid rgb(255, 255, 255); text-align: left; font-size: 15px; height: 32px;" title="文件名称" datafld="SYS_RUNNAME" value="{title}" size="17" leipiplugins="text" name="文件名称" id="3" orghide="0" orgalign="left" orgwidth="580" orgheight="32" orgtype="text" orgfontsize="15"></td></tr><tr style="BORDER-COLLAPSE: collapse"><td height="48" valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>文件编号</strong></p></td><td height="40" width="280"><p style="TEXT-INDENT: 5px"><input style="border-left: 1px solid rgb(255, 255, 255); width: 70px; margin-left: 5px; border-top: 1px solid rgb(255, 255, 255); border-right: 1px solid rgb(255, 255, 255); text-align: left; font-size: 15px; height: 32px;" title="文号1" leipiplugins="text" name="文号1" id="4" value="" orghide="0" orgalign="left" orgwidth="70" orgheight="32" orgtype="text" orgfontsize="15">〔<input style="border-left: 1px solid rgb(255, 255, 255); width: 50px; margin-left: 5px; border-top: 1px solid rgb(255, 255, 255); border-right: 1px solid rgb(255, 255, 255); text-align: left; font-size: 15px; height: 32px;" name="文号2" type="text" title="文号2" value="" leipiplugins="text" orghide="0" orgalign="left" orgwidth="50" orgtype="text" id="37" orgheight="32" orgfontsize="15">〕<input name="文号3" style="border-left: 1px solid rgb(255, 255, 255); width: 50px; margin-left: 5px; border-top: 1px solid rgb(255, 255, 255); border-right: 1px solid rgb(255, 255, 255); text-align: left; font-size: 15px; height: 32px;" type="text" title="文号3" value="" leipiplugins="text" orghide="0" orgalign="left" orgwidth="50" orgtype="text" id="38" orgheight="32" orgfontsize="15">号</p></td><td height="40" valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>时&nbsp; 间</strong></p></td><td height="40" width="210"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" title="时间" datafld="SYS_DATETIME" value="{date}" size="17" leipiplugins="text" name="时间" id="2" orghide="0" orgalign="left" orgwidth="" orgheight="" orgtype="text" orgfontsize=""></p></td></tr><tr><td height="48" valign="center" align="middle" class="th"><strong>文件附件</strong></td><td height="40" colspan="3" style="word-break: break-all;"><span style="FONT-SIZE: 16px"><input name="附件" type="text" value="{宏控件}" title="附件" leipiplugins="macros" orgtype="sys_file" orghide="" orgwidth="150" style="width: 150px;" id="8" orgalign="left" orgheight=""></span></td></tr><tr><td valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>拟办意见</strong></p></td><td height="130" colspan="3"><p><textarea style="BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; OVERFLOW-X: hidden; OVERFLOW-Y: hidden; WIDTH: 580px; HEIGHT: 96px; MARGIN-LEFT: 5px; BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid" class="EDITOR-MINI" title="拟办意见" name="拟办意见" rich="0" leipiplugins="textarea" id="9" value="" orgrich="0" orgfontsize="" orgwidth="300" orgheight="80"></textarea><br></p></td></tr><tr><td valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>领导批示</strong></p></td><td height="130" colspan="3"><p><strong>{sign(领导批示)}<br><textarea title="领导批示" name="领导批示" leipiplugins="sign" value="" orgrich="0" orgfontsize="" orgwidth="300" orgheight="80" style="width: 585px; height: 80px; margin: 0px;" id="48"></textarea></strong></p></td></tr><tr><td valign="center" width="100" align="middle" class="th"><strong><p class="STYLE3" style="text-align:center;">承办部室意见</p></strong></td><td height="130" colspan="3"><p><span style="FONT-SIZE: 18px"><strong>{sign(承办部室意见)}<textarea style="BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; OVERFLOW-X: hidden; OVERFLOW-Y: hidden; WIDTH: 580px; HEIGHT: 95px; MARGIN-LEFT: 5px; BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid" class="EDITOR-MINI" title="承办部室意见" name="承办部室意见" rich="0" leipiplugins="sign" id="11" value="" orgrich="0" orgfontsize="" orgwidth="300" orgheight="80"></textarea></strong></span></p></td></tr><tr><td valign="center" width="100" align="middle" class="th"><strong><p class="STYLE3" style="text-align:center;">处理结果</p></strong></td><td height="130" colspan="3"><span style="FONT-SIZE: 18px"><strong><textarea style="BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; OVERFLOW-X: hidden; OVERFLOW-Y: hidden; WIDTH: 580px; HEIGHT: 95px; MARGIN-LEFT: 5px; BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid" class="EDITOR-MINI" title="处理结果" name="处理结果" rich="0" leipiplugins="textarea" id="12" value="" orgrich="0" orgfontsize="" orgwidth="300" orgheight="80"></textarea></strong></span></td></tr><tr><td valign="center" width="100" align="middle" class="th"><strong><p class="STYLE3" style="text-align:center;">备注</p></strong></td><td height="130" colspan="3"><span style="FONT-SIZE: 18px"><strong><textarea style="BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; OVERFLOW-X: hidden; OVERFLOW-Y: hidden; WIDTH: 580px; HEIGHT: 95px; MARGIN-LEFT: 5px; BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid" class="EDITOR-MINI" title="备注" name="备注" rich="0" leipiplugins="textarea" value="" orgrich="0" orgfontsize="" orgwidth="300" orgheight="80" id="45"></textarea></strong></span></td></tr></tbody></table>', 12, N'1,3,4,37,38,2,8,9,48,11,12,45', CAST(0x0000A56A00AFD034 AS DateTime), CAST(0x0000A64200BEAAF0 AS DateTime), 1)
INSERT [dbo].[FP_Form_FormInfo] ([id], [channelid], [sortid], [name], [markup], [display], [content], [fields], [fieldlist], [dateline], [updatetime], [status]) VALUES (2, 1, 6, N'发文处理笺', N'', 0, N'<table border="0" cellspacing="0" cellpadding="0" width="800" align="center"><tbody><tr class="firstRow"><td style="LETTER-SPACING: 6px; COLOR: #f00; FONT-SIZE: 28px; FONT-WEIGHT: bold" height="80" valign="center" align="middle">方配软件技术有限责任公司<br><br>发文处理笺</td></tr></tbody></table><table style="border-collapse: collapse;" border="1" cellspacing="0" bordercolor="#ff0000" cellpadding="0" width="800" align="center"><tbody><tr style="BORDER-COLLAPSE: collapse" class="firstRow"><td height="48" valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>文件标题</strong></p></td><td height="40" colspan="3"><p style="TEXT-ALIGN: left; TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left; font-size: 12px; width: 580px; height: 30px;" title="文件标题" datafld="SYS_RUNNAME" value="{title}" size="17" leipiplugins="text" name="文件标题" id="13" orghide="0" orgalign="left" orgwidth="580" orgheight="30" orgtype="text" orgfontsize="12"></p></td></tr><tr><td valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>签发</strong></p></td><td height="130" colspan="3" style="padding-left:20px;"><textarea style="border: 1px solid rgb(204, 204, 204); width: 650px;overflow:hidden; height: 80px; margin-left: 5px;" title="签发" name="签发" rich="0" leipiplugins="textarea" id="26" value="" orgrich="1" orgfontsize="" orgwidth="650" orgheight="80" class="EDITOR-MINI"></textarea></td></tr><tr><td valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>分管领导意见</strong></p></td><td height="130" colspan="3"><p style="TEXT-ALIGN: left"><span style="FONT-SIZE: 18px"><span style="FONT-SIZE: 18px"><textarea style="border: 1px solid rgb(204, 204, 204); overflow: hidden; width: 650px; height: 80px; margin-left: 5px;" title="分管领导意见" name="分管领导意见" rich="0" leipiplugins="textarea" id="27" value="" orgrich="0" orgfontsize="" orgwidth="650" orgheight="80"></textarea></span></span></p></td></tr><tr><td height="48" valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>文件编号</strong></p></td><td height="40" valign="center" width="280"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left; width: 70px;" title="文号1" leipiplugins="text" name="文号1" id="14" value="" orghide="0" orgalign="left" orgwidth="70" orgheight="" orgtype="text" orgfontsize="">(<input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left; width: 50px;" title="文号2" leipiplugins="text" name="文号2" value="" orghide="0" orgalign="left" orgwidth="50" orgheight="" orgtype="text" orgfontsize="" id="43">)<input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left; width: 70px;" title="文号3" leipiplugins="text" name="文号3" value="" orghide="0" orgalign="left" orgwidth="70" orgheight="" orgtype="text" orgfontsize="" id="44">号</td><td height="40" valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>时&nbsp; 间</strong></p></td><td height="40" width="210"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" title="时间" datafld="SYS_DATETIME" value="{date}" size="17" leipiplugins="text" name="时间" id="15" orghide="0" orgalign="left" orgwidth="" orgheight="" orgtype="text" orgfontsize=""></p></td></tr><tr style="BORDER-COLLAPSE: collapse"><td height="48" valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>办公室核稿</strong></p></td><td height="40" width="280"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" title="办公室核稿" leipiplugins="text" name="办公室核稿" id="16" value="" orghide="0" orgalign="left" orgwidth="" orgheight="" orgtype="text" orgfontsize=""></p></td><td height="40" width="100" class="th"><p class="STYLE3" style="text-align:center;"><strong>部室领导核稿</strong></p></td><td height="40" width="210"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; width: 180px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" datasrc="" class="AUTO" title="部领导核稿" value="" size="34" leipiplugins="text" name="部领导核稿" id="17" orghide="0" orgalign="left" orgwidth="180" orgheight="" orgtype="text" orgfontsize=""></p></td></tr><tr style="BORDER-COLLAPSE: collapse"><td height="48" valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>会办部室意见</strong></p></td><td height="40" width="280"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" title="会办部室意见" leipiplugins="text" name="会办部室意见" id="18" value="" orghide="0" orgalign="left" orgwidth="" orgheight="" orgtype="text" orgfontsize=""></p></td><td height="40" width="100" class="th"><p class="STYLE3" style="text-align:center;"><strong>主办部室及拟稿人</strong></p></td><td height="40" width="210"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; width: 180px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" datasrc="" class="AUTO" title="主办部室拟稿人" value="" size="34" leipiplugins="text" name="主办部室拟稿人" id="19" orghide="0" orgalign="left" orgwidth="180" orgheight="" orgtype="text" orgfontsize=""></p></td></tr><tr><td height="48" valign="center" align="middle" class="th"><strong>附件</strong></td><td height="40" colspan="3"><span style="FONT-SIZE: 16px"><input name="附件" type="text" value="{宏控件}" title="附件" leipiplugins="macros" orgtype="sys_file" orghide="" orgwidth="150" style="width: 150px;" id="20" orgalign="left" orgheight=""></span></td></tr><tr><td valign="center" width="100" align="middle" class="th"><strong><p class="STYLE3" style="text-align:center;">主送</p></strong></td><td colspan="3"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left; font-size: 12px; width: 580px; height: 30px;" title="主送" value="" size="17" leipiplugins="text" name="主送" id="21" orghide="0" orgalign="left" orgwidth="580" orgheight="30" orgtype="text" orgfontsize="12"></td></tr><tr><td valign="center" width="100" align="middle" class="th"><strong><p class="STYLE3" style="text-align:center;">分送</p></strong></td><td colspan="3"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left; font-size: 12px; width: 580px; height: 30px;" title="分送" value="" size="17" leipiplugins="text" name="分送" id="22" orghide="0" orgalign="left" orgwidth="580" orgheight="30" orgtype="text" orgfontsize="12"></td></tr><tr><td valign="center" width="100" align="middle" class="th"><strong><p class="STYLE3" style="text-align:center;">抄送</p></strong></td><td colspan="3"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left; font-size: 12px; width: 580px; height: 30px;" title="抄送" value="" size="17" leipiplugins="text" name="抄送" id="23" orghide="0" orgalign="left" orgwidth="580" orgheight="30" orgtype="text" orgfontsize="12"></td></tr><tr><td valign="center" width="100" align="middle" class="th"><strong><p class="STYLE3" style="text-align:center;">信息公开选项</p></strong></td><td colspan="3"><input name="主动公开" title="主动公开" leipiplugins="checkbox" value="1" type="checkbox" id="28" orghide="0" orgalign="left" orgwidth="" orgheight="" orgtype="text">主动公开 &nbsp; &nbsp; &nbsp;<input name="依申请公开" title="依申请公开" leipiplugins="checkbox" value="1" type="checkbox" id="29" orghide="0" orgalign="left" orgwidth="" orgheight="" orgtype="text">依申请公开 &nbsp; &nbsp;<input name="不予公开" title="不予公开" leipiplugins="checkbox" value="1" type="checkbox" id="30" orghide="0" orgalign="left" orgwidth="" orgheight="" orgtype="text">不予公开</td></tr><tr><td height="48" valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>校对人</strong></p></td><td height="40" width="280"><p style="TEXT-INDENT: 5px"><input style="BORDER-LEFT: #ffffff 1px solid; WIDTH: 260px; HEIGHT: 22px; MARGIN-LEFT: 5px; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid; border-buttom: 1px solid #cccccc" title="校对人" size="37" leipiplugins="text" name="校对人" id="24" value="" orghide="" orgalign="left" orgwidth="" orgheight="" orgtype="text"></p></td><td height="40" valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>文件份数</strong></p></td><td height="40" width="210"><p style="TEXT-INDENT: 5px"><input style="BORDER-LEFT: #ffffff 1px solid; WIDTH: 180px; HEIGHT: 22px; MARGIN-LEFT: 5px; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid; border-buttom: 1px solid #cccccc" title="文件分数" size="21" leipiplugins="text" name="文件分数" id="25" value="" orghide="" orgalign="left" orgwidth="" orgheight="" orgtype="text"></p></td></tr></tbody></table>', 20, N'13,14,43,44,15,16,17,18,19,20,21,22,23,28,29,30,24,25,26,27', CAST(0x0000A56A00B1D050 AS DateTime), CAST(0x0000A56A00B1D050 AS DateTime), 1)
INSERT [dbo].[FP_Form_FormInfo] ([id], [channelid], [sortid], [name], [markup], [display], [content], [fields], [fieldlist], [dateline], [updatetime], [status]) VALUES (3, 1, 5, N'督查督办任务单', N'', 0, N'<table border="0" cellspacing="0" cellpadding="0" width="900" align="center"><tbody><tr class="firstRow"><td style="LETTER-SPACING: 6px; COLOR: #f00; FONT-SIZE: 28px; FONT-WEIGHT: bold" height="80" valign="center" align="middle">方配软件技术有限责任公司<br> &nbsp;<br>重大事项督查督办任务单</td></tr></tbody></table><table style="border-collapse: collapse;" border="1" cellspacing="0" bordercolor="#ff0000" cellpadding="0" width="900" align="center"><tbody><tr style="BORDER-COLLAPSE: collapse" class="firstRow"><td height="48" valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>主办单位、部室</strong></p></td><td height="40" colspan="3"><p style="TEXT-ALIGN: left; TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left; font-size: 12px; width: 530px; height: 30px;" title="主办单位、部室" datafld="SYS_RUNNAME" value="" size="17" leipiplugins="text" name="主办单位、部室" orghide="0" orgalign="left" orgwidth="580" orgheight="30" orgtype="text" orgfontsize="12" id="49"></p></td></tr><tr style="BORDER-COLLAPSE: collapse" class="firstRow"><td height="48" valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>协办单位、部室</strong></p></td><td height="40" colspan="3"><p style="TEXT-ALIGN: left; TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left; font-size: 12px; width: 530px; height: 30px;" title="协办单位、部室" datafld="SYS_RUNNAME" value="" size="17" leipiplugins="text" name="协办单位、部室" orghide="0" orgalign="left" orgwidth="580" orgheight="30" orgtype="text" orgfontsize="12" id="50"></p></td></tr><tr><td valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>任务来源</strong></p></td><td height="130" colspan="3"><p><textarea style="border-width: 1px; border-style: solid; border-color: rgb(204, 204, 204); overflow: hidden; width: 300px; height: 80px; margin-left: 5px;" class="EDITOR-MINI" title="任务来源" name="任务来源" rich="0" leipiplugins="textarea" value="" orgrich="1" orgfontsize="" orgwidth="300" orgheight="80" id="55"></textarea></p><p><input name="开发日期" type="text" readonly="readonly" onfocus="WdatePicker({dateFmt:&#39;yyyy-MM-dd&#39;})" class="Wdate" title="开发日期" value="" leipiplugins="calendar" orgalign="left" orgtype="datetime_ss" style="text-align: left;" id="61" orghide="0" orgwidth="" orgheight=""></p><p><span leipiplugins="select"><select name="测试" title="测试" leipiplugins="select" size="1" orgwidth="150" style="width: 150px;" id="126"><option value="压顶">压顶</option><option value="堙">堙</option></select>&nbsp;&nbsp;</span></p><p><span leipiplugins="select"><input name="火" type="text" title="火" value="" leipiplugins="text" orghide="0" orgalign="left" orgwidth="150" orgtype="text" style="text-align: left; width: 150px;" id="127" orgheight=""></span></p></td></tr><tr style="BORDER-COLLAPSE: collapse"><td height="48" valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>秘密等级</strong></p></td><td height="40" width="247"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" title="秘密等级" leipiplugins="text" name="秘密等级" value="" orghide="0" orgalign="left" orgwidth="" orgheight="" orgtype="text" orgfontsize="" id="51"></p></td><td height="40" width="100"><p class="STYLE3" style="text-align:center;"><strong>紧急程度</strong></p></td><td height="40" width="210"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; width: 180px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" datasrc="" class="AUTO" title="紧急程度" value="" size="34" leipiplugins="text" name="紧急程度" orghide="0" orgalign="left" orgwidth="180" orgheight="" orgtype="text" orgfontsize="" id="52"></p></td></tr><tr style="BORDER-COLLAPSE: collapse"><td height="48" valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>交办日期</strong></p></td><td height="40" width="247"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" title="交办日期" leipiplugins="text" name="交办日期" value="" orghide="0" orgalign="left" orgwidth="" orgheight="" orgtype="text" orgfontsize="" id="53"></p></td><td height="40" width="100"><p class="STYLE3" style="text-align:center;"><strong>办结期限</strong></p></td><td height="40" width="210"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; width: 180px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" datasrc="" class="AUTO" title="办结期限" value="" size="34" leipiplugins="text" name="办结期限" orghide="0" orgalign="left" orgwidth="180" orgheight="" orgtype="text" orgfontsize="" id="54"></p></td></tr><tr><td valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>领导签发</strong></p></td><td height="130" colspan="3"><p style="TEXT-ALIGN: left"><span style="FONT-SIZE: 18px"><span style="FONT-SIZE: 18px">{sign(领导签发)} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<textarea style="BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; OVERFLOW-X: hidden; OVERFLOW-Y: hidden; WIDTH: 530px; HEIGHT: 95px; MARGIN-LEFT: 5px; BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid" class="EDITOR-MINI" title="领导签发" name="领导签发" rich="0" leipiplugins="sign" value="" orgrich="0" orgfontsize="" orgwidth="300" orgheight="80" id="56"></textarea></span></span></p></td></tr><tr><td valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>督办内容</strong></p></td><td height="130" colspan="3"><p style="TEXT-ALIGN: left"><span style="FONT-SIZE: 18px"><span style="FONT-SIZE: 18px"><textarea style="BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; OVERFLOW-X: hidden; OVERFLOW-Y: hidden; WIDTH: 530px; HEIGHT: 95px; MARGIN-LEFT: 5px; BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid" class="EDITOR-MINI" title="督办内容" name="督办内容" rich="0" leipiplugins="textarea" value="" orgrich="0" orgfontsize="" orgwidth="300" orgheight="80" id="57"></textarea></span></span></p></td></tr><tr><td valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>办理结果</strong></p></td><td height="130" colspan="3"><p style="TEXT-ALIGN: left"><span style="FONT-SIZE: 18px"><span style="FONT-SIZE: 18px">{sign(办理结果)} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<textarea style="BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; OVERFLOW-X: hidden; OVERFLOW-Y: hidden; WIDTH: 530px; HEIGHT: 95px; MARGIN-LEFT: 5px; BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid" class="EDITOR-MINI" title="办理结果" name="办理结果" rich="0" leipiplugins="sign" value="" orgrich="0" orgfontsize="" orgwidth="300" orgheight="80" id="58"></textarea></span></span></p></td></tr><tr><td valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>备注</strong></p></td><td height="130" colspan="3"><p style="TEXT-ALIGN: left"><span style="FONT-SIZE: 18px"><span style="FONT-SIZE: 18px"><textarea style="BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; OVERFLOW-X: hidden; OVERFLOW-Y: hidden; WIDTH: 530px; HEIGHT: 95px; MARGIN-LEFT: 5px; BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid" class="EDITOR-MINI" title="备注" name="备注" rich="0" leipiplugins="textarea" value="" orgrich="0" orgfontsize="" orgwidth="300" orgheight="80" id="59"></textarea></span></span></p></td></tr></tbody></table>', 14, N'49,50,61,127,51,52,53,54,126,55,56,57,58,59', CAST(0x0000A58E0114D074 AS DateTime), CAST(0x0000A58E0114D074 AS DateTime), 1)
INSERT [dbo].[FP_Form_FormInfo] ([id], [channelid], [sortid], [name], [markup], [display], [content], [fields], [fieldlist], [dateline], [updatetime], [status]) VALUES (4, 1, 5, N'科信处执法执勤车辆申请审批表', N'', 1, N'<table style="font-size: 14px;" border="0" cellspacing="1" cellpadding="0" width="700" align="center"><tbody><tr class="firstRow"><td height="80" valign="center" align="center"><strong><span style="line-height: 50px; font-size: 28px;">科信处执法执勤用车申请审批表</span></strong></td></tr></tbody></table><table border="1" cellspacing="1" cellpadding="0" width="900" bgcolor="#000000" align="center" data-sort="sortDisabled"><tbody><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" valign="center" rowspan="5" width="40" align="center">申<br>请<br>单<br>位<br>填<br>写</td><td bgcolor="#ffffff" height="48" valign="center" width="200" align="center">申请单位</td><td bgcolor="#ffffff"><input style="width: 100px; text-align: left;" id="113" title="申请单位" name="申请单位" value="{dept}" type="text" orgheight="" orgtype="text" orgwidth="100" orgalign="left" orghide="0" leipiplugins="text" orgfontsize="null"></td><td bgcolor="#ffffff" valign="center" width="76" align="center">用车人数</td><td bgcolor="#ffffff" width="120"><input style="width: 100px; text-align: left;" id="114" title="用车人数" name="用车人数" value="" type="text" orgheight="" orgtype="text" orgwidth="100" orgalign="left" orghide="0" leipiplugins="text" orgfontsize=""></td><td bgcolor="#ffffff" valign="center" width="100" align="center">拟用车辆类型</td><td bgcolor="#ffffff"><input style="width: 100px; text-align: left;" id="115" title="拟用车辆类型" name="拟用车辆类型" value="" type="text" orgheight="" orgtype="text" orgwidth="100" orgalign="left" orghide="0" leipiplugins="text" orgfontsize=""></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" height="48" valign="center" align="center">用车原由及目的地</td><td bgcolor="#ffffff" colspan="5" align="left"><input style="width: 400px; text-align: left;" id="116" title="用车原由及目的地" name="用车原由及目的地" value="" type="text" orgheight="" orgtype="text" orgwidth="400" orgalign="left" orghide="0" leipiplugins="text" orgfontsize=""></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" height="48" valign="center" align="center">拟用车时间</td><td bgcolor="#ffffff" colspan="5" align="left"><input style="width: 120px; text-align: left;" id="117" title="用车出发时间" name="用车出发时间" value="" type="text" orgheight="" orgtype="text" orgwidth="120" orgalign="left" orghide="0" leipiplugins="text" orgfontsize="">出发，<input style="width: 120px; text-align: left;" id="118" title="用车返回时间" name="用车返回时间" value="" type="text" orgheight="" orgtype="text" orgwidth="120" orgalign="left" orghide="0" leipiplugins="text" orgfontsize="">返回至南宁。计划天数<input style="width: 40px; text-align: left;" id="119" title="计划天数" name="计划天数" value="" type="text" orgheight="" orgtype="text" orgwidth="40" orgalign="left" orghide="" leipiplugins="text">天。</td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" height="48" valign="center" align="center">&nbsp;经办人签字</td><td bgcolor="#ffffff" colspan="2" align="left"><input style="width: 120px; text-align: left;" id="120" title="经办人签字" name="经办人签字" value="" type="text" orgheight="" orgtype="text" orgwidth="120" orgalign="left" orghide="" leipiplugins="text"></td><td bgcolor="#ffffff" rowspan="2">用车负责人签认</td><td bgcolor="#ffffff" rowspan="2" colspan="2" align="left"><input style="width: 150px; text-align: left;" id="121" title="用车负责人签认" name="用车负责人签认" value="" type="text" orgheight="" orgtype="text" orgwidth="150" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" height="48" valign="center" align="center">经办人联系电话</td><td bgcolor="#ffffff" colspan="2" align="left"><input style="width: 150px; text-align: left;" id="122" title="经办人联系电话" name="经办人联系电话" value="" type="text" orgheight="" orgtype="text" orgwidth="150" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" height="48" valign="center" colspan="2" align="center">单位领导意见审批</td><td bgcolor="#ffffff" colspan="5" align="left"><input style="width: 400px; text-align: left;" id="123" title="单位领导意见签批" name="单位领导意见签批" value="" type="text" orgheight="" orgtype="text" orgwidth="400" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr><td bgcolor="#ffffff" colspan="2" align="center" rowspan="1" height="53" valign="middle">车辆调度部门审批</td><td bgcolor="#ffffff" colspan="5" align="left" rowspan="1" height="53"><input name="车辆调度部门审批" type="text" title="车辆调度部门审批" value="" leipiplugins="text" orghide="0" orgalign="left" orgwidth="400" orgtype="text" style="text-align: left; width: 400px;" orgfontsize="" orgheight="" id="124"></td></tr><tr><td bgcolor="#ffffff" colspan="2" align="center" rowspan="1" valign="middle" height="48">用车单位签认<br></td><td bgcolor="#ffffff" colspan="5" align="left" rowspan="1" height="48"><input name="用车单位签认" type="text" title="用车单位签认" value="" leipiplugins="text" orghide="" orgalign="left" orgwidth="400" orgtype="text" style="text-align: left; width: 400px;" id="125" orgheight=""></td></tr></tbody></table>', 13, N'113,114,115,116,117,118,119,120,121,122,123,124,125', CAST(0x0000A7D400C1F32C AS DateTime), CAST(0x0000A7D40100BEF4 AS DateTime), 1)
INSERT [dbo].[FP_Form_FormInfo] ([id], [channelid], [sortid], [name], [markup], [display], [content], [fields], [fieldlist], [dateline], [updatetime], [status]) VALUES (9, 1, 5, N'全局车辆申请', N'', 0, N'<table style="font-size: 14px;" border="0" cellspacing="1" cellpadding="0" width="700" align="center"><tbody><tr class="firstRow"><td style="letter-spacing: 6px; font-size: 28px; font-weight: bold;" height="80" valign="center" align="center">南宁市执法执勤用车申请审批表</td></tr></tbody></table><table border="1" cellspacing="1" cellpadding="0" width="900" bgcolor="#000000" align="center"><tbody><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" valign="center" rowspan="5" width="40" align="center">申<br> 请<br> 单<br> 位<br> 填<br> 写</td><td bgcolor="#ffffff" height="48" valign="center" width="150" align="center">申请单位</td><td bgcolor="#ffffff" width="100"><input style="width: 80px; text-align: left;" id="75" title="申请单位" name="申请单位" value="{dept}" type="text" orgfontsize="" orgheight="" orgtype="text" orgwidth="80" orgalign="left" orghide="0" leipiplugins="text"></td><td bgcolor="#ffffff" valign="center" width="120" align="center">用车人数</td><td bgcolor="#ffffff" width="115"><input style="width: 60px; text-align: left;" id="76" title="用车人数" name="用车人数" value="" type="text" orgheight="" orgtype="text" orgwidth="60" orgalign="left" orghide="" leipiplugins="text"></td><td bgcolor="#ffffff" valign="center" width="100" align="center">拟用车辆类型</td><td bgcolor="#ffffff" colspan="3"><input style="width: 120px; text-align: left;" id="77" title="拟用车辆类型" name="拟用车辆类型" value="" type="text" orgheight="" orgtype="text" orgwidth="120" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" height="48" valign="center" align="center">用车原由及目的地</td><td bgcolor="#ffffff" colspan="7" align="left"><input style="width: 400px; text-align: left;" id="78" title="用车原由及目的地" name="用车原由及目的地" value="" type="text" orgheight="" orgtype="text" orgwidth="400" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" height="48" valign="center" align="center">拟用车时间</td><td bgcolor="#ffffff" colspan="7" align="left"><input style="width: 100px; text-align: left;" id="79" title="用车时间开始" name="用车时间开始" value="" type="text" orgheight="" orgtype="text" orgwidth="100" orgalign="left" orghide="" leipiplugins="text">出发，<input style="width: 100px; text-align: left;" id="80" title="用车时间结束" name="用车时间结束" value="" type="text" orgheight="" orgtype="text" orgwidth="100" orgalign="left" orghide="" leipiplugins="text">返回至南宁，计划天数<input style="width: 40px; text-align: left;" id="81" title="计划天数" name="计划天数" value="" type="text" orgheight="" orgtype="text" orgwidth="40" orgalign="left" orghide="" leipiplugins="text">天。</td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" height="48" valign="center" align="center">经办人签字</td><td bgcolor="#ffffff" colspan="2" align="left"><input style="width: 150px; text-align: left;" id="82" title="经办人签字" name="经办人签字" value="" type="text" orgheight="" orgtype="text" orgwidth="150" orgalign="left" orghide="" leipiplugins="text"></td><td bgcolor="#ffffff" rowspan="2" width="115">用车负责人签认</td><td bgcolor="#ffffff" rowspan="2" colspan="4" align="left"><input style="width: 150px; text-align: left;" id="83" title="用车负责人签认" name="用车负责人签认" value="" type="text" orgheight="" orgtype="text" orgwidth="150" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" height="48" valign="center" align="center">经办人联系电话</td><td bgcolor="#ffffff" colspan="2" align="left"><input style="width: 150px; text-align: left;" id="84" title="经办人联系电话" name="经办人联系电话" value="" type="text" orgheight="" orgtype="text" orgwidth="150" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" height="80" valign="center" colspan="2" align="center">单位领导意见签批</td><td bgcolor="#ffffff" colspan="7" align="left"><input style="width: 400px; text-align: left;" id="85" title="单位领导意见签批" name="单位领导意见签批" value="" type="text" orgheight="" orgtype="text" orgwidth="400" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" height="80" valign="center" colspan="2" align="center">局领导意见签批</td><td bgcolor="#ffffff" colspan="7" align="left"><input style="width: 400px; text-align: left;" id="86" title="局领导意见签批" name="局领导意见签批" value="" type="text" orgheight="" orgtype="text" orgwidth="400" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" valign="center" rowspan="3" width="40" align="center">车<br>辆<br>调<br>度<br>部<br>门<br>审<br>批</td><td bgcolor="#ffffff" height="48">负责人意见</td><td bgcolor="#ffffff" colspan="7" align="left"><input style="width: 400px; text-align: left;" id="87" title="负责人意见" name="负责人意见" value="" type="text" orgheight="" orgtype="text" orgwidth="400" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" valign="center" rowspan="2" width="40" align="center">调度的车辆<br>（车牌号码）</td><td bgcolor="#ffffff" rowspan="2" colspan="2"><input style="width: 150px; text-align: left;" id="88" title="调度的车辆号牌" name="调度的车辆号牌" value="" type="text" orgheight="" orgtype="text" orgwidth="150" orgalign="left" orghide="" leipiplugins="text"></td><td bgcolor="#ffffff">驾驶员</td><td bgcolor="#ffffff" height="48" colspan="4"><input style="width: 150px; text-align: left;" id="89" title="驾驶员" name="驾驶员" value="" type="text" orgheight="" orgtype="text" orgwidth="150" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff">驾驶员联系电话</td><td bgcolor="#ffffff" height="48" colspan="4"><input style="width: 150px; text-align: left;" id="90" title="驾驶员联系电话" name="驾驶员联系电话" value="" type="text" orgheight="" orgtype="text" orgwidth="150" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" rowspan="6" width="40">出车司勤人员填写</td><td bgcolor="#ffffff">出车前车辆里程表（公里）</td><td bgcolor="#ffffff"><input style="width: 80px; text-align: left;" id="91" title="出车前车辆里程表" name="出车前车辆里程表" value="" type="text" orgheight="" orgtype="text" orgwidth="80" orgalign="left" orghide="" leipiplugins="text"></td><td bgcolor="#ffffff">收车时车辆里程表数（公里）</td><td bgcolor="#ffffff"><input style="width: 80px; text-align: left;" id="92" title="收车时车辆里程表数" name="收车时车辆里程表数" value="" type="text" orgheight="" orgtype="text" orgwidth="80" orgalign="left" orghide="" leipiplugins="text"></td><td bgcolor="#ffffff">本次实际行车里程（公里）</td><td bgcolor="#ffffff" height="48" colspan="3"><input style="width: 80px; text-align: left;" id="93" title="本次实际行车里程" name="本次实际行车里程" value="" type="text" orgheight="" orgtype="text" orgwidth="80" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" width="40">油卡加油情况</td><td bgcolor="#ffffff" colspan="2"><input style="width: 80px; text-align: left;" id="94" title="油卡加油情况" name="油卡加油情况" value="" type="text" orgheight="" orgtype="text" orgwidth="80" orgalign="left" orghide="" leipiplugins="text">升</td><td bgcolor="#ffffff" colspan="2">油卡加油金额</td><td bgcolor="#ffffff" height="48" colspan="3"><input style="width: 80px; text-align: left;" id="95" title="油卡加油金额" name="油卡加油金额" value="" type="text" orgheight="" orgtype="text" orgwidth="80" orgalign="left" orghide="" leipiplugins="text">元</td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" rowspan="2" width="40">现金加油情况</td><td bgcolor="#ffffff"><input style="width: 80px; text-align: left;" id="96" title="现金加油金额" name="现金加油金额" value="" type="text" orgheight="" orgtype="text" orgwidth="80" orgalign="left" orghide="" leipiplugins="text"></td><td bgcolor="#ffffff">路桥费</td><td bgcolor="#ffffff"><input style="width: 80px; text-align: left;" id="97" title="路桥费" name="路桥费" value="" type="text" orgheight="" orgtype="text" orgwidth="80" orgalign="left" orghide="" leipiplugins="text"></td><td bgcolor="#ffffff">停车费</td><td bgcolor="#ffffff"><input style="width: 80px; text-align: left;" id="98" title="停车费" name="停车费" value="" type="text" orgheight="" orgtype="text" orgwidth="80" orgalign="left" orghide="" leipiplugins="text"></td><td bgcolor="#ffffff" width="80">保洁费</td><td bgcolor="#ffffff" height="48"><input style="width: 80px; text-align: left;" id="99" title="保洁费" name="保洁费" value="" type="text" orgheight="" orgtype="text" orgwidth="80" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff"><input style="width: 80px; text-align: left;" id="100" title="现金加油数量" name="现金加油数量" value="" type="text" orgheight="" orgtype="text" orgwidth="80" orgalign="left" orghide="" leipiplugins="text"></td><td bgcolor="#ffffff">车辆异地维保费</td><td bgcolor="#ffffff"><input style="width: 80px; text-align: left;" id="101" title="车辆异地维保费" name="车辆异地维保费" value="" type="text" orgheight="" orgtype="text" orgwidth="80" orgalign="left" orghide="" leipiplugins="text"></td><td bgcolor="#ffffff">其他费</td><td bgcolor="#ffffff" height="48" colspan="3"><input style="width: 150px; text-align: left;" id="102" title="其他费" name="其他费" value="" type="text" orgheight="" orgtype="text" orgwidth="150" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff">实际用车时间</td><td bgcolor="#ffffff" height="48" colspan="7"><input style="width: 400px; text-align: left;" id="103" title="实际用车时间" name="实际用车时间" value="" type="text" orgheight="" orgtype="text" orgwidth="400" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff">安全行车时间</td><td bgcolor="#ffffff" colspan="4"><input style="width: 200px; text-align: left;" id="104" title="安全行车时间" name="安全行车时间" value="" type="text" orgheight="" orgtype="text" orgwidth="200" orgalign="left" orghide="" leipiplugins="text"></td><td bgcolor="#ffffff" width="100">驾驶员签认</td><td bgcolor="#ffffff" height="48" colspan="2"><input style="width: 100px; text-align: left;" id="105" title="驾驶员签认" name="驾驶员签认" value="" type="text" orgheight="" orgtype="text" orgwidth="100" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" colspan="2">现金加油审批</td><td bgcolor="#ffffff" colspan="4"><input style="width: 200px; text-align: left;" id="106" title="现金加油审批" name="现金加油审批" value="" type="text" orgheight="" orgtype="text" orgwidth="200" orgalign="left" orghide="" leipiplugins="text"></td><td bgcolor="#ffffff" width="100">车辆异地维修保养审批</td><td bgcolor="#ffffff" height="48" colspan="2"><input style="width: 100px; text-align: left;" id="107" title="车辆异地维修保养审批" name="车辆异地维修保养审批" value="" type="text" orgheight="" orgtype="text" orgwidth="100" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" colspan="2">对出车驾驶员的服务评价（用车单位填）</td><td bgcolor="#ffffff">优</td><td bgcolor="#ffffff"><input id="108" title="服务评价（优）" name="服务评价（优）" value="1" type="checkbox" orgheight="" orgtype="text" orgwidth="" orgalign="left" orghide="" leipiplugins="checkbox"></td><td bgcolor="#ffffff">良</td><td bgcolor="#ffffff"><input id="109" title="服务评价（良）" name="服务评价（良）" value="1" type="checkbox" orgheight="" orgtype="text" orgwidth="" orgalign="left" orghide="" leipiplugins="checkbox"></td><td bgcolor="#ffffff">差</td><td bgcolor="#ffffff" height="48" colspan="2"><input id="110" title="服务评价（差）" name="服务评价（差）" value="1" type="checkbox" orgheight="" orgtype="text" orgwidth="" orgalign="left" orghide="" leipiplugins="checkbox"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" colspan="2">用车单位办结签认</td><td bgcolor="#ffffff" height="48" colspan="7"><input style="width: 400px; text-align: left;" id="111" title="用车单位办结签认" name="用车单位办结签认" value="" type="text" orgheight="" orgtype="text" orgwidth="400" orgalign="left" orghide="" leipiplugins="text"></td></tr><tr class="firstRow" align="center" bgcolor="#ffffff"><td bgcolor="#ffffff" colspan="2">备注</td><td bgcolor="#ffffff" height="48" colspan="7"><input style="width: 400px; text-align: left;" id="112" title="备注" name="备注" value="" type="text" orgheight="" orgtype="text" orgwidth="400" orgalign="left" orghide="" leipiplugins="text"></td></tr></tbody></table><table style="font-size: 14px;" border="0" cellspacing="1" cellpadding="0" width="900" align="center"><tbody><tr class="firstRow"><td valign="center">注：1、用车前，申请单位填写此单，在完成审批和车辆调度后，将此单交给出车驾驶员，驾驶员凭此单出车。2、申请人用车完毕，驾驶员填写相关内容并将此单据交市局管理平台存档备案。3、此单记载的行车内容纳入驾驶员行车记录，作为驾驶员目标责任评价和安全行车考核的主要依据。4、驾驶员凭此单办理行车过程相关车辆费用及其差旅费用的报销手续。5、用车过程产生的车辆费用纳入车辆管理“一车一档”年度记录，市局管理平台每半年进行一次盘点统计。5、一般情况下，现金加油、车辆异地维保费用的审批，由驾驶员事后到市局管理平台补办。6、“对出车驾驶员的服务评价”由用车单位代表在对应栏内打“√”。7、用车办结签认由用车单位联系人或负责人填写。8、本表费用单位：元。</td></tr></tbody></table>', 38, N'75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112', CAST(0x0000A7D701457BD4 AS DateTime), CAST(0x0000A7D701457BD4 AS DateTime), 1)
INSERT [dbo].[FP_Form_FormInfo] ([id], [channelid], [sortid], [name], [markup], [display], [content], [fields], [fieldlist], [dateline], [updatetime], [status]) VALUES (10, 1, 5, N'测试表单', N'', 0, N'<table border="0" cellspacing="0" cellpadding="0" width="900" align="center"><tbody><tr class="firstRow"><td style="LETTER-SPACING: 6px; COLOR: #f00; FONT-SIZE: 28px; FONT-WEIGHT: bold" height="80" valign="center" align="middle">方配软件技术有限责任公司<br> &nbsp;<br>重大事项督查督办任务单</td></tr></tbody></table><table style="border-collapse: collapse;" border="1" cellspacing="0" bordercolor="#ff0000" cellpadding="0" width="900" align="center"><tbody><tr style="BORDER-COLLAPSE: collapse" class="firstRow"><td height="48" valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>主办单位、部室</strong></p></td><td height="40" colspan="3"><p style="TEXT-ALIGN: left; TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left; font-size: 12px; width: 530px; height: 30px;" title="主办单位、部室" datafld="SYS_RUNNAME" value="" size="17" leipiplugins="text" name="主办单位、部室" orghide="0" orgalign="left" orgwidth="580" orgheight="30" orgtype="text" orgfontsize="12" id="128"></p></td></tr><tr style="BORDER-COLLAPSE: collapse" class="firstRow"><td height="48" valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>协办单位、部室</strong></p></td><td height="40" colspan="3"><p style="TEXT-ALIGN: left; TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left; font-size: 12px; width: 530px; height: 30px;" title="协办单位、部室" datafld="SYS_RUNNAME" value="" size="17" leipiplugins="text" name="协办单位、部室" orghide="0" orgalign="left" orgwidth="580" orgheight="30" orgtype="text" orgfontsize="12" id="129"></p></td></tr><tr><td valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>任务来源</strong></p></td><td height="130" colspan="3"><p><textarea style="border-width: 1px; border-style: solid; border-color: rgb(204, 204, 204); overflow: hidden; width: 300px; height: 80px; margin-left: 5px;" class="EDITOR-MINI" title="任务来源" name="任务来源" rich="0" leipiplugins="textarea" value="" orgrich="1" orgfontsize="" orgwidth="300" orgheight="80" id="137"></textarea></p><p><input name="开发日期" type="text" readonly="readonly" onfocus="WdatePicker({dateFmt:&#39;yyyy-MM-dd&#39;})" class="Wdate" title="开发日期" value="" leipiplugins="calendar" orgalign="left" orgtype="datetime_ss" style="text-align: left;" id="130" orghide="" orgwidth="" orgheight=""></p><p><span leipiplugins="select"><select name="测试" title="测试" leipiplugins="select" size="1" orgwidth="150" style="width: 150px;" id="136"><option value="压顶">压顶</option><option value="堙">堙</option></select>&nbsp;&nbsp;</span></p><p><span leipiplugins="select"><input name="火" type="text" title="火" value="" leipiplugins="text" orghide="" orgalign="left" orgwidth="150" orgtype="text" style="text-align: left; width: 150px;" id="131" orgheight=""></span></p></td></tr><tr style="BORDER-COLLAPSE: collapse"><td height="48" valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>秘密等级</strong></p></td><td height="40" width="247"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" title="秘密等级" leipiplugins="text" name="秘密等级" value="" orghide="0" orgalign="left" orgwidth="" orgheight="" orgtype="text" orgfontsize="" id="132"></p></td><td height="40" width="100"><p class="STYLE3" style="text-align:center;"><strong>紧急程度</strong></p></td><td height="40" width="210"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; width: 180px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" datasrc="" class="AUTO" title="紧急程度" value="" size="34" leipiplugins="text" name="紧急程度" orghide="0" orgalign="left" orgwidth="180" orgheight="" orgtype="text" orgfontsize="" id="133"></p></td></tr><tr style="BORDER-COLLAPSE: collapse"><td height="48" valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>交办日期</strong></p></td><td height="40" width="247"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" title="交办日期" leipiplugins="text" name="交办日期" value="" orghide="0" orgalign="left" orgwidth="" orgheight="" orgtype="text" orgfontsize="" id="134"></p></td><td height="40" width="100"><p class="STYLE3" style="text-align:center;"><strong>办结期限</strong></p></td><td height="40" width="210"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; width: 180px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" datasrc="" class="AUTO" title="办结期限" value="" size="34" leipiplugins="text" name="办结期限" orghide="0" orgalign="left" orgwidth="180" orgheight="" orgtype="text" orgfontsize="" id="135"></p></td></tr><tr><td valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>领导签发</strong></p></td><td height="130" colspan="3"><p style="TEXT-ALIGN: left"><span style="FONT-SIZE: 18px"><span style="FONT-SIZE: 18px">{sign(领导签发)} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<textarea style="BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; OVERFLOW-X: hidden; OVERFLOW-Y: hidden; WIDTH: 530px; HEIGHT: 95px; MARGIN-LEFT: 5px; BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid" class="EDITOR-MINI" title="领导签发" name="领导签发" rich="0" leipiplugins="sign" value="" orgrich="0" orgfontsize="" orgwidth="300" orgheight="80" id="138"></textarea></span></span></p></td></tr><tr><td valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>督办内容</strong></p></td><td height="130" colspan="3"><p style="TEXT-ALIGN: left"><span style="FONT-SIZE: 18px"><span style="FONT-SIZE: 18px"><textarea style="BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; OVERFLOW-X: hidden; OVERFLOW-Y: hidden; WIDTH: 530px; HEIGHT: 95px; MARGIN-LEFT: 5px; BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid" class="EDITOR-MINI" title="督办内容" name="督办内容" rich="0" leipiplugins="textarea" value="" orgrich="0" orgfontsize="" orgwidth="300" orgheight="80" id="139"></textarea></span></span></p></td></tr><tr><td valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>办理结果</strong></p></td><td height="130" colspan="3"><p style="TEXT-ALIGN: left"><span style="FONT-SIZE: 18px"><span style="FONT-SIZE: 18px">{sign(办理结果)} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<textarea style="BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; OVERFLOW-X: hidden; OVERFLOW-Y: hidden; WIDTH: 530px; HEIGHT: 95px; MARGIN-LEFT: 5px; BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid" class="EDITOR-MINI" title="办理结果" name="办理结果" rich="0" leipiplugins="sign" value="" orgrich="0" orgfontsize="" orgwidth="300" orgheight="80" id="140"></textarea></span></span></p></td></tr><tr><td valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>备注</strong></p></td><td height="130" colspan="3"><p style="TEXT-ALIGN: left"><span style="FONT-SIZE: 18px"><span style="FONT-SIZE: 18px"><textarea style="BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; OVERFLOW-X: hidden; OVERFLOW-Y: hidden; WIDTH: 530px; HEIGHT: 95px; MARGIN-LEFT: 5px; BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid" class="EDITOR-MINI" title="备注" name="备注" rich="0" leipiplugins="textarea" value="" orgrich="0" orgfontsize="" orgwidth="300" orgheight="80" id="141"></textarea></span></span></p></td></tr></tbody></table>', 14, N'128,129,130,131,132,133,134,135,136,137,138,139,140,141', CAST(0x0000A83B0149E6B0 AS DateTime), CAST(0x0000A83B0149E6B0 AS DateTime), 1)
INSERT [dbo].[FP_Form_FormInfo] ([id], [channelid], [sortid], [name], [markup], [display], [content], [fields], [fieldlist], [dateline], [updatetime], [status]) VALUES (11, 1, 5, N'中层领导请假申请表', N'', 0, N'<table width="800" align="center" style="font-size: 14px;" border="0" cellspacing="1" cellpadding="0"><tbody><tr class="firstRow"><td width="700" height="80" align="center" valign="center" style="line-height: 28px; letter-spacing: 6px; font-size: 28px; font-weight: bold;">中层正职领导请销假登记表</td></tr></tbody></table><table width="800" align="center" bordercolor="#ff0000" style="border-collapse: collapse;" border="1" cellspacing="0" cellpadding="0"><tbody><tr align="center" class="firstRow" bgcolor="#ffffff"><td width="100" height="48" align="center" valign="middle" style="width: 132px;" bgcolor="#ffffff"><p style="text-align: center;"><strong>姓名</strong></p></td><td width="100" style="width: 100px;" bgcolor="#ffffff"><p style="text-align: center;"><input name="姓名" title="姓名" id="142" style="width: 85px; height: 22px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-right-color: rgb(255, 255, 255); border-left-color: rgb(255, 255, 255); border-top-width: 1px; border-right-width: 1px; border-left-width: 1px; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-buttom: 1px solid #cccccc;" value="" leipiplugins="text" orghide="" orgalign="left" orgwidth="" orgheight="" orgtype="text"></p></td><td width="66" align="center" valign="middle" style="width: 66px;" bgcolor="#ffffff"><p style="text-align: center;"><strong>性别</strong></p></td><td width="90" style="width: 80px;" bgcolor="#ffffff"><p style="text-align: center;"><input name="性别" title="性别" id="143" style="width: 50px; height: 22px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-right-color: rgb(255, 255, 255); border-left-color: rgb(255, 255, 255); border-top-width: 1px; border-right-width: 1px; border-left-width: 1px; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-buttom: 1px solid #cccccc;" value="" leipiplugins="text" orghide="" orgalign="left" orgwidth="" orgheight="" orgtype="text"></p></td><td width="90" align="center" valign="middle" style="width: 80px;" bgcolor="#ffffff"><p style="text-align: center;"><strong>出生年月</strong></p></td><td width="100" style="width: 100px;" bgcolor="#ffffff"><p style="text-align: center;"><input name="出生年月" title="出生年月" id="144" style="width: 80px; height: 22px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-right-color: rgb(255, 255, 255); border-left-color: rgb(255, 255, 255); border-top-width: 1px; border-right-width: 1px; border-left-width: 1px; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-buttom: 1px solid #cccccc;" value="" leipiplugins="text" orghide="" orgalign="left" orgwidth="" orgheight="" orgtype="text"></p></td><td width="70" align="center" valign="middle" style="width: 70px;" bgcolor="#ffffff"><p style="text-align: center;"><strong>民族</strong></p></td><td width="60" style="width: 60px;" bgcolor="#ffffff"><p style="text-align: center;"><input name="民族" title="民族" id="145" style="width: 48px; height: 22px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-right-color: rgb(255, 255, 255); border-left-color: rgb(255, 255, 255); border-top-width: 1px; border-right-width: 1px; border-left-width: 1px; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-buttom: 1px solid #cccccc;" value="" leipiplugins="text" orghide="" orgalign="left" orgwidth="" orgheight="" orgtype="text"></p></td></tr><tr align="center" bgcolor="#ffffff"><td height="48" align="center" valign="middle" style="width: 132px;" bgcolor="#ffffff"><p style="text-align: center;"><strong>参加工作时间</strong></p></td><td style="width: 110px;" bgcolor="#ffffff" colspan="2"><p style="text-align: center;"><input name="参加工作时间" title="参加工作时间" id="146" style="width: 150px; height: 22px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-right-color: rgb(255, 255, 255); border-left-color: rgb(255, 255, 255); border-top-width: 1px; border-right-width: 1px; border-left-width: 1px; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-buttom: 1px solid #cccccc;" value="" leipiplugins="text" orghide="" orgalign="left" orgwidth="" orgheight="" orgtype="text"></p></td><td align="center" valign="middle" style="width: 90px;" bgcolor="#ffffff"><p style="text-align: center;"><strong>婚姻状况</strong></p></td><td style="width: 90px;" bgcolor="#ffffff"><p style="text-align: center;"><input name="婚姻状况" title="婚姻状况" id="147" style="width: 60px; height: 22px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-right-color: rgb(255, 255, 255); border-left-color: rgb(255, 255, 255); border-top-width: 1px; border-right-width: 1px; border-left-width: 1px; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-buttom: 1px solid #cccccc;" value="" leipiplugins="text" orghide="" orgalign="left" orgwidth="" orgheight="" orgtype="text"></p></td><td align="center" valign="middle" style="width: 90px;" bgcolor="#ffffff"><p style="text-align: center;"><strong>籍贯</strong></p></td><td align="center" valign="middle" bgcolor="#ffffff" colspan="2"><p style="text-align: center;"><input name="籍贯" title="籍贯" id="148" style="width: 110px; height: 22px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-right-color: rgb(255, 255, 255); border-left-color: rgb(255, 255, 255); border-top-width: 1px; border-right-width: 1px; border-left-width: 1px; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-buttom: 1px solid #cccccc;" value="" leipiplugins="text" orghide="" orgalign="left" orgwidth="" orgheight="" orgtype="text"></p></td></tr><tr align="center" bgcolor="#ffffff"><td height="48" align="center" valign="middle" style="width: 132px;" bgcolor="#ffffff"><p style="text-align: center;"><strong>所在单位及职务</strong></p></td><td bgcolor="#ffffff" colspan="4"><p style="text-align: center;"><input name="所在单位及职务" title="所在单位及职务" id="149" style="width: 97%; height: 22px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-right-color: rgb(255, 255, 255); border-left-color: rgb(255, 255, 255); border-top-width: 1px; border-right-width: 1px; border-left-width: 1px; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-buttom: 1px solid #cccccc;" value="" leipiplugins="text" orghide="" orgalign="left" orgwidth="" orgheight="" orgtype="text"></p></td><td align="center" valign="middle" style="width: 90px;" bgcolor="#ffffff"><p style="text-align: center;"><strong>联系电话</strong></p></td><td align="center" valign="middle" bgcolor="#ffffff" colspan="2"><p style="text-align: center;"><input name="联系电话" title="联系电话" id="150" style="width: 110px; height: 22px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-right-color: rgb(255, 255, 255); border-left-color: rgb(255, 255, 255); border-top-width: 1px; border-right-width: 1px; border-left-width: 1px; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-buttom: 1px solid #cccccc;" value="" leipiplugins="text" orghide="" orgalign="left" orgwidth="" orgheight="" orgtype="text"></p></td></tr><tr align="center" bgcolor="#ffffff"><td height="48" align="center" valign="middle" style="width: 132px;" bgcolor="#ffffff"><p style="text-align: center;"><strong>请假起止时间</strong></p></td><td bgcolor="#ffffff" colspan="7"><p style="text-align: center;">拟从<input name="开始时间" title="开始时间" id="151" style="width: 150px; height: 32px; margin-left: 5px; border-top: 1px solid rgb(255, 255, 255); border-right: 1px solid rgb(255, 255, 255); border-left: 1px solid rgb(255, 255, 255); font-size: 16px; text-align: left;" size="1" value="" leipiplugins="text" orghide="0" orgalign="left" orgwidth="150" orgheight="32" orgtype="text" orgfontsize="16">年起至<input name="结束时间" title="结束时间" id="154" style="width: 150px; height: 32px; margin-left: 5px; border-top: 1px solid rgb(255, 255, 255); border-right: 1px solid rgb(255, 255, 255); border-left: 1px solid rgb(255, 255, 255); font-size: 16px; text-align: left;" size="1" value="" leipiplugins="text" orghide="0" orgalign="left" orgwidth="150" orgheight="32" orgtype="text" orgfontsize="16">止（共<input name="合计天数" title="合计天数" id="157" style="width: 5.5%; height: 22px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-right-color: rgb(255, 255, 255); border-left-color: rgb(255, 255, 255); border-top-width: 1px; border-right-width: 1px; border-left-width: 1px; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-buttom: 1px solid #cccccc;" size="1" value="" leipiplugins="text" orghide="" orgalign="left" orgwidth="" orgheight="" orgtype="text">天）。</p></td></tr><tr align="center" bgcolor="#ffffff"><td height="100" align="center" valign="middle" style="padding: 4px; width: 132px; height: 100px;" bgcolor="#ffffff"><p style="text-align: center;"><strong>请假事由（须注明休假类型和前往地点）</strong></p></td><td style="height: 100px;" bgcolor="#ffffff" colspan="7"><p style="text-align: left;"><textarea name="请假事由" title="请假事由" id="158" style="border: 1px solid rgb(204, 204, 204); border-image: none; width: 95%; height: 80px; margin-left: 5px;" rows="1" leipiplugins="textarea" orgwidth="95%" orgheight="80" value="" orgrich="0" orgfontsize=""></textarea>&nbsp;</p></td></tr><tr align="center" bgcolor="#ffffff"><td height="120" align="center" valign="middle" style="width: 132px; height: 80px;" bgcolor="#ffffff"><p style="text-align: center;"><strong>分管领导意见</strong></p></td><td style="height: 80px;" bgcolor="#ffffff" colspan="7"><p style="text-align: left;"><textarea name="分管领导意见" title="分管领导意见" class="EDITOR-MINI" id="159" style="border: 1px solid rgb(204, 204, 204); border-image: none; width: 95%; height: 80px; margin-left: 5px; -ms-overflow-x: hidden; -ms-overflow-y: hidden;" rows="4" cols="50" leipiplugins="textarea" orgwidth="95%" orgheight="80" value="" orgrich="1" orgfontsize=""></textarea>&nbsp;</p></td></tr><tr align="center" bgcolor="#ffffff"><td height="120" align="center" valign="middle" style="width: 132px; height: 80px;" bgcolor="#ffffff"><p style="text-align: center;"><strong>局领导意见</strong></p></td><td style="height: 80px;" bgcolor="#ffffff" colspan="7"><p style="text-align: left;"><textarea name="局领导意见" title="局领导意见" class="EDITOR-MINI" id="160" style="border: 1px solid rgb(204, 204, 204); border-image: none; width: 95%; height: 80px; margin-left: 5px; -ms-overflow-x: hidden; -ms-overflow-y: hidden;" rows="4" cols="50" leipiplugins="textarea" orgwidth="95%" orgheight="80" value="" orgrich="1" orgfontsize=""></textarea>&nbsp;</p></td></tr><tr align="center" bgcolor="#ffffff"><td height="80" align="center" valign="middle" style="padding: 4px; width: 132px; height: 61px;" bgcolor="#ffffff"><p style="text-align: center;"><strong>销假时间、<br>本人签字</strong></p></td><td style="height: 61px;" bgcolor="#ffffff" colspan="7"><p style="text-align: left;"><textarea name="销假时间、本人签字" title="销假时间、本人签字" class="EDITOR-MINI" id="161" style="border: 1px solid rgb(204, 204, 204); border-image: none; width: 95%; height: 80px; margin-left: 5px; -ms-overflow-x: hidden; -ms-overflow-y: hidden;" cols="50" leipiplugins="textarea" orgwidth="95%" orgheight="80" value="" orgrich="1" orgfontsize=""></textarea>&nbsp;</p></td></tr><tr align="center" bgcolor="#ffffff"><td height="100" align="center" valign="middle" style="width: 132px; height: 57px;" bgcolor="#ffffff"><p style="text-align: center;"><strong>备注</strong></p></td><td style="height: 57px;" bgcolor="#ffffff" colspan="7"><p style="text-align: left;"><textarea name="备注" title="备注" id="162" style="border: 1px solid rgb(204, 204, 204); border-image: none; width: 95%; height: 80px; margin-left: 5px; -ms-overflow-x: hidden; -ms-overflow-y: hidden;" cols="50" leipiplugins="textarea" orgwidth="95%" orgheight="80" value="" orgrich="0" orgfontsize=""></textarea>&nbsp;</p></td></tr></tbody></table><table width="800" align="center" border="0" cellspacing="1" cellpadding="0"><tbody><tr class="firstRow"><td style="text-align: left; line-height: 18px; padding-top: 10px; font-size: 12px;"><p>说明：1、严格执行民警请销假制度。<br>&nbsp; &nbsp; &nbsp; 2、严格按照干部管理权限逐级审批：中层正职领导休假报局长批准、副职领导休假经正职领导同意后报市局分管领导批准;基层正职领导报上级单位主管领导批准，副职领导休假经正职领导同意后报所在单位分管领导批准；警长、中队长、指导员以下民警休假报所队主要领导批准。<br>&nbsp; &nbsp; &nbsp; 3、此表存各单位政工部门。<br>&nbsp; &nbsp; &nbsp; 4、民警销假必须本人到政工部门在此表上签字才视为有效。</p></td></tr></tbody></table>', 17, N'142,143,144,145,146,147,148,149,150,151,154,157,158,159,160,161,162', CAST(0x0000A86300967C38 AS DateTime), CAST(0x0000A86300967C38 AS DateTime), 1)
INSERT [dbo].[FP_Form_FormInfo] ([id], [channelid], [sortid], [name], [markup], [display], [content], [fields], [fieldlist], [dateline], [updatetime], [status]) VALUES (12, 1, 6, N'故障汇报', N'', 0, N'<table border="0" cellspacing="0" cellpadding="0" width="800" align="center"><tbody><tr class="firstRow"><td height="60" valign="center" align="middle"><p>&nbsp; &nbsp; &nbsp;</p><span style="font-size: 24px; color: rgb(255, 0, 0);"><strong>南宁市公安局</strong></span><br><br> <span style="font-size: 24px; color: rgb(255, 0, 0);"><strong>故障汇报单</strong></span><br><br></td></tr></tbody></table><table style="border-collapse: collapse;" border="1" cellspacing="0" bordercolor="#ff0000" cellpadding="0" width="800" align="center" data-sort="sortDisabled"><tbody><tr class="firstRow"><td height="48" valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>系统名称</strong></p></td><td height="40" colspan="3"><p style="TEXT-INDENT: 5px"><input style="border-left: 1px solid rgb(255, 255, 255); width: 580px; height: 32px; margin-left: 5px; border-top: 1px solid rgb(255, 255, 255); border-right: 1px solid rgb(255, 255, 255); font-size: 15px; text-align: left;" title="系统名称" leipiplugins="text" name="系统名称" id="163" value="" orghide="0" orgalign="left" orgwidth="580" orgheight="32" orgtype="text" orgfontsize="15"></p></td></tr><tr style="BORDER-COLLAPSE: collapse"><td height="48" valign="center" width="100" align="middle" class="th"><p class="STYLE3" style="text-align:center;"><strong>故障描述</strong></p></td><td height="40" colspan="3"><input style="border-left: 1px solid rgb(255, 255, 255); width: 580px; margin-left: 5px; border-top: 1px solid rgb(255, 255, 255); border-right: 1px solid rgb(255, 255, 255); text-align: left; font-size: 15px; height: 32px;" title="故障描述" datafld="SYS_RUNNAME" value="" size="17" leipiplugins="text" name="故障描述" id="164" orghide="0" orgalign="left" orgwidth="580" orgheight="32" orgtype="text" orgfontsize="15"></td></tr><tr><td height="48" valign="center" align="middle" class="th"><strong>附件</strong></td><td height="40" colspan="3" style="word-break: break-all;"><span style="FONT-SIZE: 16px"><input name="附件" type="text" value="{宏控件}" title="附件" leipiplugins="macros" orgtype="sys_file" orghide="0" orgfontsize="" orgwidth="150" style="width: 150px;" id="169" orgalign="left" orgheight=""></span></td></tr><tr><td valign="bottom" align="center" rowspan="1" colspan="4"><p><br></p><p><strong>处理情况</strong></p></td></tr><tr><td valign="center" align="middle" class="th" rowspan="1" colspan="4"><p><strong><textarea title="处理情况" name="处理情况" leipiplugins="textarea" value="" orgrich="0" orgfontsize="" orgwidth="700" orgheight="400" style="width: 700px; height: 400px;" id="175"></textarea></strong></p></td></tr></tbody></table>', 4, N'163,164,169,175', CAST(0x0000A86C00A7B728 AS DateTime), CAST(0x0000A86C00A7B728 AS DateTime), 1)
INSERT [dbo].[FP_Form_FormInfo] ([id], [channelid], [sortid], [name], [markup], [display], [content], [fields], [fieldlist], [dateline], [updatetime], [status]) VALUES (13, 1, 5, N'记功授奖', N'', 0, N'<table border="0" cellspacing="0" cellpadding="0" width="900" align="center"><tbody><tr class="firstRow"><td style="LETTER-SPACING: 6px; COLOR: #f00; FONT-SIZE: 28px; FONT-WEIGHT: bold" height="80" valign="center" align="middle">方配软件技术有限责任公重大事项督查督办任务单</td></tr></tbody></table><table style="border-collapse: collapse;" border="1" cellspacing="0" bordercolor="#ff0000" cellpadding="0" width="900" align="center"><tbody><tr style="BORDER-COLLAPSE: collapse" class="firstRow"><td height="48" valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>姓名</strong></p></td><td height="40" width="247"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" title="姓名" leipiplugins="text" name="姓名" value="" orghide="0" orgalign="left" orgwidth="" orgheight="" orgtype="text" orgfontsize="" id="192"></p></td><td height="40" width="100"><p class="STYLE3" style="text-align:center;"><strong>警号</strong></p></td><td height="40" width="210"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; width: 180px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" datasrc="" class="AUTO" title="警号" value="" size="34" leipiplugins="text" name="警号" orghide="0" orgalign="left" orgwidth="180" orgheight="" orgtype="text" orgfontsize="" id="193"></p></td></tr><tr style="BORDER-COLLAPSE: collapse"><td height="48" valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>部门</strong></p></td><td height="40" width="247"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" title="部门" leipiplugins="text" name="部门" value="" orghide="0" orgalign="left" orgwidth="" orgheight="" orgtype="text" orgfontsize="" id="194"></p></td><td height="40" width="100"><p class="STYLE3" style="text-align:center;"><strong>职务</strong></p></td><td height="40" width="210"><p style="TEXT-INDENT: 5px"><input style="border-left-color: rgb(255, 255, 255); border-left-width: 1px; border-left-style: solid; width: 180px; margin-left: 5px; border-top-color: rgb(255, 255, 255); border-top-width: 1px; border-top-style: solid; border-right-color: rgb(255, 255, 255); border-right-width: 1px; border-right-style: solid; text-align: left;" datasrc="" class="AUTO" title="职务" value="" size="34" leipiplugins="text" name="职务" orghide="0" orgalign="left" orgwidth="180" orgheight="" orgtype="text" orgfontsize="" id="195"></p></td></tr><tr><td valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>拟授奖励</strong></p></td><td height="130" colspan="3"><p style="TEXT-ALIGN: left"><span style="FONT-SIZE: 18px"><span style="FONT-SIZE: 18px"><textarea style="border-width: 1px; border-style: solid; border-color: rgb(204, 204, 204); overflow: hidden; width: 98%; height: 100px; margin-left: 5px;" title="拟授奖励" name="拟授奖励" rich="0" leipiplugins="textarea" value="" orgrich="0" orgfontsize="" orgwidth="98%" orgheight="100" id="199"></textarea></span></span></p></td></tr><tr><td valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><b>主要事迹</b></p></td><td height="130" colspan="3"><p style="TEXT-ALIGN: left"><span style="FONT-SIZE: 18px"><span style="FONT-SIZE: 18px"><textarea title="主要事迹" name="主要事迹" leipiplugins="textarea" value="" orgrich="0" orgfontsize="" orgwidth="98%" orgheight="400" style="width: 98%; height: 400px;" id="201"></textarea></span></span></p></td></tr><tr><td valign="center" width="133" align="middle"><p class="STYLE3" style="text-align:center;"><strong>备注</strong></p></td><td height="130" colspan="3"><p style="TEXT-ALIGN: left"><span style="FONT-SIZE: 18px"><span style="FONT-SIZE: 18px"><textarea style="border-width: 1px; border-style: solid; border-color: rgb(204, 204, 204); overflow: hidden; width: 98%; height: 100px; margin-left: 5px;" title="备注" name="备注" rich="0" leipiplugins="textarea" value="" orgrich="0" orgfontsize="" orgwidth="98%" orgheight="100" id="187"></textarea></span></span></p></td></tr></tbody></table>', 7, N'192,193,194,195,199,201,187', CAST(0x0000A8700106E5F4 AS DateTime), CAST(0x0000A8700106E5F4 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[FP_Form_FormInfo] OFF
/****** Object:  Table [dbo].[FP_Form_FormFieldInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Form_FormFieldInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[formid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[plugins] [nvarchar](50) NULL,
	[datatype] [nvarchar](50) NULL,
	[defvalue] [nvarchar](50) NULL,
	[display] [int] NULL,
 CONSTRAINT [PK_FP_WF_WorkFormFields] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormFieldInfo', @level2type=N'COLUMN',@level2name=N'formid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormFieldInfo', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段数据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormFieldInfo', @level2type=N'COLUMN',@level2name=N'datatype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormFieldInfo', @level2type=N'COLUMN',@level2name=N'defvalue'
GO
SET IDENTITY_INSERT [dbo].[FP_Form_FormFieldInfo] ON
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (1, 1, N'来文单位', N'text', N'text', N'', 1)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (2, 1, N'时间', N'text', N'text', N'{date}', 4)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (3, 1, N'文件名称', N'text', N'text', N'{title}', 2)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (4, 1, N'文号1', N'text', N'text', N'', 3)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (8, 1, N'附件', N'macros', N'sys_file', N'{宏控件}', 5)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (9, 1, N'拟办意见', N'textarea', N'', N'', 6)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (11, 1, N'承办部室意见', N'sign', N'', N'', 7)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (12, 1, N'处理结果', N'textarea', N'', N'', 8)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (13, 2, N'文件标题', N'text', N'text', N'{title}', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (14, 2, N'文号1', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (15, 2, N'时间', N'text', N'text', N'{date}', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (16, 2, N'办公室核稿', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (17, 2, N'部领导核稿', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (18, 2, N'会办部室意见', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (19, 2, N'主办部室拟稿人', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (20, 2, N'附件', N'macros', N'sys_file', N'{宏控件}', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (21, 2, N'主送', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (22, 2, N'分送', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (23, 2, N'抄送', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (24, 2, N'校对人', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (25, 2, N'文件分数', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (26, 2, N'签发', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (27, 2, N'分管领导意见', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (28, 2, N'主动公开', N'checkbox', N'text', N'0', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (29, 2, N'依申请公开', N'checkbox', N'text', N'0', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (30, 2, N'不予公开', N'checkbox', N'text', N'0', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (37, 1, N'文号2', N'text', N'text', N'', 3)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (38, 1, N'文号3', N'text', N'text', N'', 3)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (43, 2, N'文号2', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (44, 2, N'文号3', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (45, 1, N'备注', N'textarea', N'', N'', 11)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (48, 1, N'领导批示', N'sign', N'', N'', 12)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (49, 3, N'主办单位、部室', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (50, 3, N'协办单位、部室', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (51, 3, N'秘密等级', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (52, 3, N'紧急程度', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (53, 3, N'交办日期', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (54, 3, N'办结期限', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (55, 3, N'任务来源', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (56, 3, N'领导签发', N'sign', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (57, 3, N'督办内容', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (58, 3, N'办理结果', N'sign', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (59, 3, N'备注', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (61, 3, N'开发日期', N'calendar', N'datetime_ss', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (75, 9, N'申请单位', N'text', N'text', N'{dept}', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (76, 9, N'用车人数', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (77, 9, N'拟用车辆类型', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (78, 9, N'用车原由及目的地', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (79, 9, N'用车时间开始', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (80, 9, N'用车时间结束', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (81, 9, N'计划天数', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (82, 9, N'经办人签字', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (83, 9, N'用车负责人签认', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (84, 9, N'经办人联系电话', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (85, 9, N'单位领导意见签批', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (86, 9, N'局领导意见签批', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (87, 9, N'负责人意见', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (88, 9, N'调度的车辆号牌', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (89, 9, N'驾驶员', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (90, 9, N'驾驶员联系电话', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (91, 9, N'出车前车辆里程表', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (92, 9, N'收车时车辆里程表数', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (93, 9, N'本次实际行车里程', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (94, 9, N'油卡加油情况', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (95, 9, N'油卡加油金额', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (96, 9, N'现金加油金额', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (97, 9, N'路桥费', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (98, 9, N'停车费', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (99, 9, N'保洁费', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (100, 9, N'现金加油数量', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (101, 9, N'车辆异地维保费', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (102, 9, N'其他费', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (103, 9, N'实际用车时间', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (104, 9, N'安全行车时间', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (105, 9, N'驾驶员签认', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (106, 9, N'现金加油审批', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (107, 9, N'车辆异地维修保养审批', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (108, 9, N'服务评价（优）', N'checkbox', N'text', N'1', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (109, 9, N'服务评价（良）', N'checkbox', N'text', N'1', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (110, 9, N'服务评价（差）', N'checkbox', N'text', N'1', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (111, 9, N'用车单位办结签认', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (112, 9, N'备注', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (113, 4, N'申请单位', N'text', N'text', N'{dept}', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (114, 4, N'用车人数', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (115, 4, N'拟用车辆类型', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (116, 4, N'用车原由及目的地', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (117, 4, N'用车出发时间', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (118, 4, N'用车返回时间', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (119, 4, N'计划天数', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (120, 4, N'经办人签字', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (121, 4, N'用车负责人签认', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (122, 4, N'经办人联系电话', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (123, 4, N'单位领导意见签批', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (124, 4, N'车辆调度部门审批', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (125, 4, N'用车单位签认', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (126, 3, N'测试', N'select', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (127, 3, N'火', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (128, 10, N'主办单位、部室', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (129, 10, N'协办单位、部室', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (130, 10, N'开发日期', N'calendar', N'datetime_ss', N'', 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (131, 10, N'火', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (132, 10, N'秘密等级', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (133, 10, N'紧急程度', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (134, 10, N'交办日期', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (135, 10, N'办结期限', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (136, 10, N'测试', N'select', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (137, 10, N'任务来源', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (138, 10, N'领导签发', N'sign', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (139, 10, N'督办内容', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (140, 10, N'办理结果', N'sign', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (141, 10, N'备注', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (142, 11, N'姓名', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (143, 11, N'性别', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (144, 11, N'出生年月', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (145, 11, N'民族', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (146, 11, N'参加工作时间', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (147, 11, N'婚姻状况', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (148, 11, N'籍贯', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (149, 11, N'所在单位及职务', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (150, 11, N'联系电话', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (151, 11, N'开始时间', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (154, 11, N'结束时间', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (157, 11, N'合计天数', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (158, 11, N'请假事由', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (159, 11, N'分管领导意见', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (160, 11, N'局领导意见', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (161, 11, N'销假时间、本人签字', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (162, 11, N'备注', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (163, 12, N'系统名称', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (164, 12, N'故障描述', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (169, 12, N'附件', N'macros', N'sys_file', N'{宏控件}', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (175, 12, N'处理情况', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (187, 13, N'备注', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (192, 13, N'姓名', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (193, 13, N'警号', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (194, 13, N'部门', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (195, 13, N'职务', N'text', N'text', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (199, 13, N'拟授奖励', N'textarea', N'', N'', 0)
INSERT [dbo].[FP_Form_FormFieldInfo] ([id], [formid], [name], [plugins], [datatype], [defvalue], [display]) VALUES (201, 13, N'主要事迹', N'textarea', N'', N'', 0)
SET IDENTITY_INSERT [dbo].[FP_Form_FormFieldInfo] OFF
/****** Object:  Table [dbo].[FP_Form_FormDataInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Form_FormDataInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[app] [nvarchar](100) NULL,
	[postid] [int] NULL,
	[formid] [int] NULL,
	[fieldid] [int] NULL,
	[value] [ntext] NULL,
	[postdatetime] [datetime] NULL,
 CONSTRAINT [PK_FP_WF_FormDataInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属应用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormDataInfo', @level2type=N'COLUMN',@level2name=N'app'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormDataInfo', @level2type=N'COLUMN',@level2name=N'postid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormDataInfo', @level2type=N'COLUMN',@level2name=N'formid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormDataInfo', @level2type=N'COLUMN',@level2name=N'fieldid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Form_FormDataInfo', @level2type=N'COLUMN',@level2name=N'value'
GO
SET IDENTITY_INSERT [dbo].[FP_Form_FormDataInfo] ON
INSERT [dbo].[FP_Form_FormDataInfo] ([id], [uid], [app], [postid], [formid], [fieldid], [value], [postdatetime]) VALUES (1, 1, N'app_workflow', 1, 1, 1, N'测试', CAST(0x0000A87F00F9DC74 AS DateTime))
INSERT [dbo].[FP_Form_FormDataInfo] ([id], [uid], [app], [postid], [formid], [fieldid], [value], [postdatetime]) VALUES (2, 1, N'app_workflow', 1, 1, 3, N'测试收文', CAST(0x0000A87F00F9DDA0 AS DateTime))
INSERT [dbo].[FP_Form_FormDataInfo] ([id], [uid], [app], [postid], [formid], [fieldid], [value], [postdatetime]) VALUES (3, 1, N'app_workflow', 1, 1, 4, N'', CAST(0x0000A87F00F9DDA0 AS DateTime))
INSERT [dbo].[FP_Form_FormDataInfo] ([id], [uid], [app], [postid], [formid], [fieldid], [value], [postdatetime]) VALUES (4, 1, N'app_workflow', 1, 1, 37, N'', CAST(0x0000A87F00F9DDA0 AS DateTime))
INSERT [dbo].[FP_Form_FormDataInfo] ([id], [uid], [app], [postid], [formid], [fieldid], [value], [postdatetime]) VALUES (5, 1, N'app_workflow', 1, 1, 38, N'', CAST(0x0000A87F00F9DDA0 AS DateTime))
INSERT [dbo].[FP_Form_FormDataInfo] ([id], [uid], [app], [postid], [formid], [fieldid], [value], [postdatetime]) VALUES (6, 1, N'app_workflow', 1, 1, 2, N'2018年02月06日', CAST(0x0000A87F00F9DDA0 AS DateTime))
INSERT [dbo].[FP_Form_FormDataInfo] ([id], [uid], [app], [postid], [formid], [fieldid], [value], [postdatetime]) VALUES (7, 1, N'app_workflow', 1, 1, 8, N'', CAST(0x0000A87F00F9DDA0 AS DateTime))
INSERT [dbo].[FP_Form_FormDataInfo] ([id], [uid], [app], [postid], [formid], [fieldid], [value], [postdatetime]) VALUES (8, 1, N'app_workflow', 1, 1, 9, N'', CAST(0x0000A87F00F9DDA0 AS DateTime))
SET IDENTITY_INSERT [dbo].[FP_Form_FormDataInfo] OFF
/****** Object:  Table [dbo].[FP_Flow_FlowStepInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Flow_FlowStepInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[flowid] [int] NULL,
	[step] [int] NULL,
	[name] [nvarchar](100) NULL,
	[nextstep] [nvarchar](250) NULL,
	[nexttext] [ntext] NULL,
	[nextpos] [nvarchar](250) NULL,
	[nextdots] [nvarchar](250) NULL,
	[note] [nvarchar](250) NULL,
	[roles] [nvarchar](250) NULL,
	[grades] [nvarchar](250) NULL,
	[departs] [nvarchar](250) NULL,
	[users] [nvarchar](250) NULL,
	[rawuser] [int] NULL,
	[departlist] [nvarchar](250) NULL,
	[prcsitem] [nvarchar](250) NULL,
	[subitem] [nvarchar](250) NULL,
	[x] [int] NULL,
	[y] [int] NULL,
	[width] [int] NULL,
	[height] [int] NULL,
 CONSTRAINT [PK_FP_WF_WorkFlowStep] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'flowid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'step'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下一步骤序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'nextstep'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下一步骤备注显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'nexttext'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设计图位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'nextpos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'roles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'grades'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'departs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'users'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可写字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'prcsitem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'隐藏保密字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'subitem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设计图X轴位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'x'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设计图Y轴位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'y'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设计图宽度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'width'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设计图高度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowStepInfo', @level2type=N'COLUMN',@level2name=N'height'
GO
SET IDENTITY_INSERT [dbo].[FP_Flow_FlowStepInfo] ON
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (1, 1, 1, N'办公室文秘拟办意见', N'2', N'', N'x:0,y:-10', N'', N'', N'', N'', N'1,2,3,4', N'4,3,2,1', NULL, N'4,3,2', N'1,2,3,4,8,9,37,38,46,-1,47', N'', 132, 40, 142, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (2, 1, 2, N'办公室主任审核', N'3', N'', N'x:0,y:-10', N'', N'', N'', N'7', N'4,2', N'6', 1, N'2', N'1,2,3,4,8,9,37,38,-1', N'', 332, 40, 130, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (3, 1, 3, N'领导阅示', N'-1,4', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'1', NULL, N'2', N'48', N'48', 519, 40, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (4, 2, 1, N'拟稿', N'2', N'', N'x:0,y:-10', N'', N'', N'', N'', N'1,4,3,2', N'9,8', NULL, N'2,4', N'13,15,19,20,21,22,23,24,25,28,29,30,-1,26', N'', 128, 76, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (5, 2, 2, N'部室领导核稿', N'3,4', N'', N'x:0,y:-10§x:0,y:-10', N'', N'', N'', N'', N'', N'1', NULL, N'', N'17', N'', 307, 77, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (6, 2, 3, N'会办部室意见', N'2', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'4', NULL, N'', N'18', N'', 531, 27, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (7, 2, 4, N'办公室核稿', N'5', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'2', NULL, N'', N'16', N'', 534, 105, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (8, 2, 5, N'分管领导意见', N'6', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'3', NULL, N'', N'27', N'', 535, 232, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (9, 2, 6, N'签发', N'7', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'3,4,2,1', NULL, N'', N'26', N'', 305, 231, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (10, 2, 7, N'办公室编号', N'8', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'3', NULL, N'', N'14', N'', 126, 232, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (11, 2, 8, N'送印', N'-1', N'', N'', N'', N'', N'', N'', N'', N'4,3,2,1', NULL, N'', N'', N'', 126, 339, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (12, 1, 4, N'办公室文秘', N'5', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'4,2', NULL, N'4,2', N'1,2,3,4,8,9,12,37,38,-1,45', N'', 520, 155, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (13, 1, 5, N'转相关部室', N'-1', N'', N'', N'', N'', N'', N'', N'', N'3', NULL, N'3', N'11', N'11', 339, 157, 116, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (14, 3, 1, N'提交督办任务', N'2', N'', N'x:0,y:-10', N'', N'', N'', N'', N'1,2,3,4', N'8', NULL, N'4,3,2,1', N'49,50,51,52,53,54,55,57,59,-1', N'', 151, 78, 110, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (15, 3, 2, N'办公室文件审核', N'3', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'4', NULL, N'', N'49,50,51,52,53,54,55,57,59,-1', N'', 299, 77, 116, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (16, 3, 3, N'联社领导签发', N'4', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'1', NULL, N'', N'56', N'56', 463, 78, 112, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (17, 3, 4, N'转交办公室', N'5', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'4', NULL, N'', N'59', N'', 462, 185, 117, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (18, 3, 5, N'转相关部室办理并填写办理结果', N'0,-1', N'', N'', N'', N'', N'', N'', N'', N'3', NULL, N'', N'58', N'58', 149, 187, 208, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (19, 8, 1, N'用车单位申请', N'2', N'', N'x:0,y:-10', N'', N'', N'1,5,6', N'1,2,3,4,5', N'1,2,3,4', N'4,3', NULL, N'2,4,3,2,2', N'113,114,115,116,117,118,119,120,122,121', N'', 250, 48, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (20, 8, 2, N'单位领导审批', N'3', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'3', NULL, N'3', N'123', N'', 431, 49, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (21, 8, 3, N'车辆调度部门审批', N'4', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'', NULL, N'', N'124', N'', 608, 49, 131, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (22, 8, 4, N'用车单位签认', N'-1', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', N'125', N'', 625, 177, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (23, 9, 1, N'用车单位申请', N'0,2', N'', N'x:0,y:-10', N'', N'', N'', N'1,2', N'1,2,3,4', N'4', NULL, N'4', N'', N'', 104, 267, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (26, 9, 2, N'单位领导审批', N'0,3', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'3', NULL, N'3', N'', N'', 310, 267, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (27, 9, 3, N'车辆调度部门审批', N'4', N'', N'x:0,y:-10', N'', N'', N'', N'', N'1,2,3,4', N'5,2,1', NULL, N'2,4,3', N'', N'', 496, 267, 126, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (28, 9, 4, N'单用车单位签认', N'-1', N'', N'', N'', N'', N'', N'1,2', N'4', N'4', NULL, N'2,4,3', N'', N'', 498, 460, 121, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (29, 10, 1, N'用车单位申请', N'2', N'', N'x:0,y:-10', N'', N'', N'', N'', N'1,2,3,4', N'5,2,1', NULL, N'2,4,3,2,2', N'', N'', 354, 195, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (30, 10, 2, N'单位领导审批', N'3', N'', N'x:0,y:-10', N'', N'', N'', N'2,3', N'1,2,3,4', N'3', NULL, N'3', N'', N'', 571, 193, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (31, 10, 3, N'车辆调度部门审批', N'4', N'', N'x:0,y:-10', N'', N'', N'', N'1,2', N'4', N'4', NULL, N'4', N'', N'', 775, 193, 150, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (32, 10, 4, N'用车单位签认', N'-1', N'', N'', N'', N'', N'', N'1', N'1,2,3,4', N'4,5,2,1,3', NULL, N'2,4,3', N'', N'', 1029, 193, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (33, 13, 1, N'用车单位申请', N'2', N'', N'x:0,y:-10', N'', N'', N'-1,1,5,6,7,8,9,10', N'1,2,3,4,5', N'1,2,3,4', N'5,2,1', NULL, N'2,4,3', N'75,76,77,78,79,80,81,82,83,84', N'', 152, 132, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (34, 13, 2, N'单位领导审批', N'3', N'', N'x:0,y:-10', N'', N'', N'5,6', N'1,2', N'', N'3,5,2,1', NULL, N'2,4,3', N'85', N'', 337, 134, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (35, 13, 3, N'车辆调度部门审批', N'4', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'', NULL, N'', N'87,88,89,90', N'', 521, 135, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (36, 13, 4, N'用车单位签认', N'-1', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', N'111', N'', 519, 268, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (37, 14, 1, N'请假申请', N'2', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'1', NULL, N'4', N'142,143,144,145,146,147,148,149,150,151,154,157,158,162,-1', N'', 14, 120, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (38, 14, 2, N'分管副局长审批', N'3', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'7', NULL, N'6', N'159', N'', 160, 120, 110, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (39, 14, 3, N'唐市长审批', N'4', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'6', NULL, N'2', N'160', N'', 318, 118, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (40, 14, 4, N'局长办公室', N'-1', N'', N'', N'', N'', N'', N'', N'', N'7', NULL, N'6', N'161', N'', 468, 118, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (41, 15, 1, N'故障填写', N'2', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'', NULL, N'', N'', N'', 400, 50, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (42, 15, 2, N'故障汇报', N'-1', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', N'', N'', 400, 252, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (43, 16, 1, N'故障填写', N'2', N'', N'x:0,y:-10', N'', N'', N'', N'', N'', N'1', NULL, N'4', N'163,164,169,175,-1', N'', 400, 50, 100, 50)
INSERT [dbo].[FP_Flow_FlowStepInfo] ([id], [flowid], [step], [name], [nextstep], [nexttext], [nextpos], [nextdots], [note], [roles], [grades], [departs], [users], [rawuser], [departlist], [prcsitem], [subitem], [x], [y], [width], [height]) VALUES (44, 16, 2, N'故障汇报', N'-1', N'', N'', N'', N'', N'', N'', N'', N'', 1, N'', N'', N'', 401, 187, 100, 50)
SET IDENTITY_INSERT [dbo].[FP_Flow_FlowStepInfo] OFF
/****** Object:  Table [dbo].[FP_Flow_FlowInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Flow_FlowInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channelid] [int] NULL,
	[sortid] [int] NULL,
	[app] [nvarchar](100) NULL,
	[guid] [nvarchar](50) NULL,
	[display] [int] NULL,
	[type] [int] NULL,
	[typeid] [int] NULL,
	[name] [nvarchar](100) NULL,
	[desc] [nvarchar](250) NULL,
	[formid] [int] NULL,
	[isform] [int] NULL,
	[updatetime] [datetime] NULL,
	[postdatetime] [datetime] NULL,
	[steps] [int] NULL,
	[istransfer] [int] NULL,
	[transferurl] [nvarchar](250) NULL,
	[roles] [nvarchar](250) NULL,
	[grades] [nvarchar](250) NULL,
	[departs] [nvarchar](250) NULL,
	[users] [nvarchar](250) NULL,
	[departlist] [nvarchar](250) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_FP_WF_WorkFlowInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属栏目Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'sortid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程分类id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'typeid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程表单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'formid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'updatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'postdatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'steps'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'roles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'grades'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程部门权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'departs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'users'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所有的经办部门，供选择人员时使用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'departlist'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Flow_FlowInfo', @level2type=N'COLUMN',@level2name=N'status'
GO
SET IDENTITY_INSERT [dbo].[FP_Flow_FlowInfo] ON
INSERT [dbo].[FP_Flow_FlowInfo] ([id], [channelid], [sortid], [app], [guid], [display], [type], [typeid], [name], [desc], [formid], [isform], [updatetime], [postdatetime], [steps], [istransfer], [transferurl], [roles], [grades], [departs], [users], [departlist], [status]) VALUES (1, 2, 8, NULL, N'1d9c67fe-1753-4c88-bc5b-85daecf1dacd', 0, 0, 0, N'收文处理', N'', 1, NULL, CAST(0x0000A56A00BA183C AS DateTime), CAST(0x0000A56A00BA183C AS DateTime), 5, 1, N'', N'', N'', N'1,2,3,4', N'4,3,2,1', N'4,3,2', 1)
INSERT [dbo].[FP_Flow_FlowInfo] ([id], [channelid], [sortid], [app], [guid], [display], [type], [typeid], [name], [desc], [formid], [isform], [updatetime], [postdatetime], [steps], [istransfer], [transferurl], [roles], [grades], [departs], [users], [departlist], [status]) VALUES (2, 2, 8, NULL, N'1d9c67fe-1753-4c88-bc5b-85daecf1dacd', 0, 0, 0, N'发文处理', N'', 2, NULL, CAST(0x0000A56A00BA45F0 AS DateTime), CAST(0x0000A56A00BA45F0 AS DateTime), 8, 1, N'', N'', N'', N'1,4,3,2', N'9,8', N'2,4', 1)
INSERT [dbo].[FP_Flow_FlowInfo] ([id], [channelid], [sortid], [app], [guid], [display], [type], [typeid], [name], [desc], [formid], [isform], [updatetime], [postdatetime], [steps], [istransfer], [transferurl], [roles], [grades], [departs], [users], [departlist], [status]) VALUES (3, 2, 2, NULL, N'1d9c67fe-1753-4c88-bc5b-85daecf1dacd', 0, 0, 0, N'督查督办任务', N'', 3, NULL, CAST(0x0000A64101010EA4 AS DateTime), CAST(0x0000A58E01151214 AS DateTime), 5, 1, N'', N'', N'', N'1,2,3,4', N'8', N'4,3,2,1', 1)
INSERT [dbo].[FP_Flow_FlowInfo] ([id], [channelid], [sortid], [app], [guid], [display], [type], [typeid], [name], [desc], [formid], [isform], [updatetime], [postdatetime], [steps], [istransfer], [transferurl], [roles], [grades], [departs], [users], [departlist], [status]) VALUES (8, 2, 2, NULL, N'75523b72-e900-4e43-b62c-ac435c225fdb', 0, 0, 0, N'科信处执法执勤用车申请', N'', 4, NULL, CAST(0x0000A7D400C3D5FC AS DateTime), CAST(0x0000A7D400C3D5FC AS DateTime), 4, 1, N'', N'1,5,6', N'1,2,3,4,5', N'1,2,3,4', N'4,3', N'2,4,3,2,2', 1)
INSERT [dbo].[FP_Flow_FlowInfo] ([id], [channelid], [sortid], [app], [guid], [display], [type], [typeid], [name], [desc], [formid], [isform], [updatetime], [postdatetime], [steps], [istransfer], [transferurl], [roles], [grades], [departs], [users], [departlist], [status]) VALUES (11, 2, 8, NULL, N'1d9c67fe-1753-4c88-bc5b-85daecf1dacd', 0, 1, 0, N'部门工作', N'', 0, NULL, CAST(0x0000A7D70109B900 AS DateTime), CAST(0x0000A7D701092A08 AS DateTime), 0, 1, N'', N'1,5,6,7,8,9,10', N'1,2,3,4,5', N'1,2,3,4', N'5,2,1', N'2,4,3,2,2', 1)
INSERT [dbo].[FP_Flow_FlowInfo] ([id], [channelid], [sortid], [app], [guid], [display], [type], [typeid], [name], [desc], [formid], [isform], [updatetime], [postdatetime], [steps], [istransfer], [transferurl], [roles], [grades], [departs], [users], [departlist], [status]) VALUES (12, 2, 8, NULL, N'1d9c67fe-1753-4c88-bc5b-85daecf1dacd', 0, 2, 0, N'任务交办', N'', 0, NULL, CAST(0x0000A7D701096E00 AS DateTime), CAST(0x0000A7D701096E00 AS DateTime), 0, 1, N'', N'1,5,6,7,8,9,10', N'1,2,3,4,5', N'1,2,3,4', N'4', N'2,4,3,2,2', 1)
INSERT [dbo].[FP_Flow_FlowInfo] ([id], [channelid], [sortid], [app], [guid], [display], [type], [typeid], [name], [desc], [formid], [isform], [updatetime], [postdatetime], [steps], [istransfer], [transferurl], [roles], [grades], [departs], [users], [departlist], [status]) VALUES (13, 2, 2, NULL, N'75523b72-e900-4e43-b62c-ac435c225fdb', 0, 0, 0, N'全局车辆申请', N'', 9, NULL, CAST(0x0000A7D70145FA64 AS DateTime), CAST(0x0000A7D70145FA64 AS DateTime), 4, 1, N'', N'-1,1,5,6,7,8,9,10', N'1,2,3,4,5', N'1,2,3,4', N'5,2,1', N'2,4,3', 1)
INSERT [dbo].[FP_Flow_FlowInfo] ([id], [channelid], [sortid], [app], [guid], [display], [type], [typeid], [name], [desc], [formid], [isform], [updatetime], [postdatetime], [steps], [istransfer], [transferurl], [roles], [grades], [departs], [users], [departlist], [status]) VALUES (14, 2, 2, N'app_leave', N'745aafb2-24ea-4360-b262-dba7aab5d042', 0, 0, 0, N'中层领导请假申请', N'', 11, NULL, CAST(0x0000A863009702FC AS DateTime), CAST(0x0000A86300959D90 AS DateTime), 4, 1, N'', N'', N'', N'', N'1', N'4', 1)
INSERT [dbo].[FP_Flow_FlowInfo] ([id], [channelid], [sortid], [app], [guid], [display], [type], [typeid], [name], [desc], [formid], [isform], [updatetime], [postdatetime], [steps], [istransfer], [transferurl], [roles], [grades], [departs], [users], [departlist], [status]) VALUES (16, 2, 8, N'app_workflow', N'1d9c67fe-1753-4c88-bc5b-85daecf1dacd', 0, 0, 0, N'故障汇报', N'', 12, 0, CAST(0x0000A86C00AD2884 AS DateTime), CAST(0x0000A86C00A0EAEC AS DateTime), 2, 1, N'', N'', N'', N'', N'1', N'4', 1)
SET IDENTITY_INSERT [dbo].[FP_Flow_FlowInfo] OFF
/****** Object:  Table [dbo].[FP_Email_EmailInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Email_EmailInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[fromuid] [int] NULL,
	[touid] [nvarchar](255) NULL,
	[touid_name] [nvarchar](255) NULL,
	[receiveid] [int] NULL,
	[subject] [nvarchar](250) NULL,
	[content] [ntext] NULL,
	[attachid] [nvarchar](60) NULL,
	[attachs] [int] NULL,
	[important] [int] NULL,
	[postdatetime] [datetime] NULL,
	[folderid] [int] NULL,
	[status] [int] NULL,
	[isdelete] [int] NULL,
	[totalsize] [int] NULL,
	[sync] [int] NULL,
 CONSTRAINT [PK_FP_Email_EmailInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Email_EmailInfo', @level2type=N'COLUMN',@level2name=N'uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发件人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Email_EmailInfo', @level2type=N'COLUMN',@level2name=N'fromuid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Email_EmailInfo', @level2type=N'COLUMN',@level2name=N'touid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Email_EmailInfo', @level2type=N'COLUMN',@level2name=N'receiveid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Email_EmailInfo', @level2type=N'COLUMN',@level2name=N'subject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'正文' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Email_EmailInfo', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Email_EmailInfo', @level2type=N'COLUMN',@level2name=N'attachid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'重要性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Email_EmailInfo', @level2type=N'COLUMN',@level2name=N'important'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Email_EmailInfo', @level2type=N'COLUMN',@level2name=N'postdatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在文件夹' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Email_EmailInfo', @level2type=N'COLUMN',@level2name=N'folderid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Email_EmailInfo', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Email_EmailInfo', @level2type=N'COLUMN',@level2name=N'isdelete'
GO
/****** Object:  Table [dbo].[FP_Doc_DocumentInfo]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Doc_DocumentInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[app] [nvarchar](100) NULL,
	[sortid] [int] NULL,
	[typeid] [int] NULL,
	[fromdepartid] [int] NULL,
	[fromuid] [int] NULL,
	[fromid] [int] NULL,
	[departs] [nvarchar](250) NULL,
	[departs_name] [nvarchar](250) NULL,
	[departid] [int] NULL,
	[receiveid] [int] NULL,
	[txtsign] [nvarchar](150) NULL,
	[viewuid] [nvarchar](250) NULL,
	[title] [nvarchar](200) NULL,
	[number] [nvarchar](200) NULL,
	[signname] [nvarchar](60) NULL,
	[signdate] [nvarchar](60) NULL,
	[sendorg] [nvarchar](200) NULL,
	[senddate] [nvarchar](60) NULL,
	[editor] [nvarchar](100) NULL,
	[editor_tel] [nvarchar](100) NULL,
	[priority] [int] NULL,
	[sendto] [nvarchar](250) NULL,
	[mainto] [nvarchar](250) NULL,
	[copyto] [nvarchar](250) NULL,
	[attachid] [nvarchar](250) NULL,
	[dealattachid] [nvarchar](250) NULL,
	[isedit] [int] NULL,
	[content] [ntext] NULL,
	[limitday] [int] NULL,
	[postdatetime] [datetime] NULL,
	[starttime] [datetime] NULL,
	[endtime] [datetime] NULL,
	[status] [int] NULL,
	[isend] [int] NULL,
	[isdelete] [int] NULL,
	[ip] [nvarchar](50) NULL,
	[client] [nvarchar](50) NULL,
 CONSTRAINT [PK_FP_Doc_DocInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发始人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属应用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'app'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文类型id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'sortid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文分类id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'typeid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文来源部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'fromdepartid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文来源id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'fromid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送至部门id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'departs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送至部门名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'departs_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收部门id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'departid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'receiveid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已阅用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'viewuid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文文号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'signname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'signdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'sendorg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'senddate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拟稿人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'editor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拟稿人联系方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'editor_tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缓急程度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'sendto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主送' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'mainto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报送' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'copyto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'attachid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件是否可编辑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'isedit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签收期限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'limitday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'postdatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'办理开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'starttime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'办理结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'endtime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已办理完毕' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FP_Doc_DocumentInfo', @level2type=N'COLUMN',@level2name=N'isend'
GO
/****** Object:  Table [dbo].[FP_Count_CountConfig]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Count_CountConfig](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](60) NULL,
	[app] [nvarchar](100) NULL,
	[url] [nvarchar](250) NULL,
	[maxcount] [int] NULL,
	[display] [int] NULL,
 CONSTRAINT [PK_FP_Count_CountConfig] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FP_Count_CountConfig] ON
INSERT [dbo].[FP_Count_CountConfig] ([id], [name], [app], [url], [maxcount], [display]) VALUES (1, N'待办工作', N'app_workflow', N'app/workflow/count.aspx', 99, 0)
INSERT [dbo].[FP_Count_CountConfig] ([id], [name], [app], [url], [maxcount], [display]) VALUES (2, N'待签公文', N'app_document', N'app/document/count.aspx', 99, 0)
INSERT [dbo].[FP_Count_CountConfig] ([id], [name], [app], [url], [maxcount], [display]) VALUES (3, N'未读邮件', N'app_email', N'app/email/count.aspx', 99, 0)
INSERT [dbo].[FP_Count_CountConfig] ([id], [name], [app], [url], [maxcount], [display]) VALUES (4, N'未读信息', N'app_message', N'app/message/count.aspx', 99, 0)
INSERT [dbo].[FP_Count_CountConfig] ([id], [name], [app], [url], [maxcount], [display]) VALUES (5, N'未读公告', N'app_notice', N'app/notice/count.aspx', 99, 0)
SET IDENTITY_INSERT [dbo].[FP_Count_CountConfig] OFF
/****** Object:  Table [dbo].[FP_Board_BoardConfig]    Script Date: 02/06/2018 16:07:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Board_BoardConfig](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[platform] [nvarchar](150) NULL,
	[name] [nvarchar](60) NULL,
	[app] [nvarchar](60) NULL,
	[dataurl] [nvarchar](250) NULL,
	[url] [nvarchar](250) NULL,
	[maxcount] [int] NULL,
	[desktop] [int] NULL,
	[display] [int] NULL,
 CONSTRAINT [PK_FP_Board_BoardConfig] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FP_Board_BoardConfig] ON
INSERT [dbo].[FP_Board_BoardConfig] ([id], [platform], [name], [app], [dataurl], [url], [maxcount], [desktop], [display]) VALUES (1, N'FP_OA', N'待办工作', N'app_workflow', N'app/workflow/board.aspx', N'app/workflow/workflow.aspx', 10, 1, 1)
INSERT [dbo].[FP_Board_BoardConfig] ([id], [platform], [name], [app], [dataurl], [url], [maxcount], [desktop], [display]) VALUES (2, N'FP_OA', N'办结工作', N'app_workflow2', N'app/workflow/board.aspx?status=1', N'app/workflow/workview.aspx', 10, 1, 2)
INSERT [dbo].[FP_Board_BoardConfig] ([id], [platform], [name], [app], [dataurl], [url], [maxcount], [desktop], [display]) VALUES (3, N'FP_OA', N'通知公告', N'app_notice', N'app/notice/board.aspx', N'app/notice/noticeview.aspx', 10, 1, 3)
INSERT [dbo].[FP_Board_BoardConfig] ([id], [platform], [name], [app], [dataurl], [url], [maxcount], [desktop], [display]) VALUES (4, N'FP_OA', N'内部邮件', N'app_email', N'app/email/board.aspx', N'app/email/view.aspx', 10, 1, 4)
INSERT [dbo].[FP_Board_BoardConfig] ([id], [platform], [name], [app], [dataurl], [url], [maxcount], [desktop], [display]) VALUES (5, N'FP_OA2', N'待办工作', N'app_workflow', N'app/workflow/board.aspx', N'app/workflow/flow_input.aspx', 10, 1, 1)
INSERT [dbo].[FP_Board_BoardConfig] ([id], [platform], [name], [app], [dataurl], [url], [maxcount], [desktop], [display]) VALUES (6, N'FP_OA2', N'办结工作', N'app_workflow2', N'app/workflow/board.aspx?status=1', N'app/workflow/flow_print.aspx', 10, 1, 2)
INSERT [dbo].[FP_Board_BoardConfig] ([id], [platform], [name], [app], [dataurl], [url], [maxcount], [desktop], [display]) VALUES (7, N'FP_OA2', N'通知公告', N'app_notice', N'app/notice/board.aspx', N'', 10, 1, 3)
INSERT [dbo].[FP_Board_BoardConfig] ([id], [platform], [name], [app], [dataurl], [url], [maxcount], [desktop], [display]) VALUES (8, N'FP_OA2', N'内部邮件', N'app_email', N'app/email/board.aspx', N'app/email/inbox_read_email.aspx', 10, 1, 4)
SET IDENTITY_INSERT [dbo].[FP_Board_BoardConfig] OFF
/****** Object:  Default [DF_FP_Email_EmailInfo_sync]    Script Date: 02/06/2018 16:07:05 ******/
ALTER TABLE [dbo].[FP_Email_EmailInfo] ADD  CONSTRAINT [DF_FP_Email_EmailInfo_sync]  DEFAULT ((0)) FOR [sync]
GO
/****** Object:  Default [DF_FP_WMS_MenuInfo_hidden]    Script Date: 02/06/2018 16:07:05 ******/
ALTER TABLE [dbo].[FP_WMS_MenuInfo] ADD  CONSTRAINT [DF_FP_WMS_MenuInfo_hidden]  DEFAULT ((0)) FOR [hidden]
GO
/****** Object:  Default [DF_WMS_SortInfo_appid]    Script Date: 02/06/2018 16:07:05 ******/
ALTER TABLE [dbo].[FP_WMS_SortInfo] ADD  CONSTRAINT [DF_WMS_SortInfo_appid]  DEFAULT ((0)) FOR [appid]
GO
/****** Object:  Default [DF_WMS_SortInfo_subcounts]    Script Date: 02/06/2018 16:07:05 ******/
ALTER TABLE [dbo].[FP_WMS_SortInfo] ADD  CONSTRAINT [DF_WMS_SortInfo_subcounts]  DEFAULT ((0)) FOR [subcounts]
GO
