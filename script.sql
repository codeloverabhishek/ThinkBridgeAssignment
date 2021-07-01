USE [master]
GO
/****** Object:  Database [InventoryDb]    Script Date: 01/07/2021 15:59:25 ******/
CREATE DATABASE [InventoryDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InventoryDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\InventoryDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'InventoryDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\InventoryDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [InventoryDb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InventoryDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InventoryDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InventoryDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InventoryDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InventoryDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InventoryDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [InventoryDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InventoryDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InventoryDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InventoryDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InventoryDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InventoryDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InventoryDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InventoryDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InventoryDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InventoryDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [InventoryDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InventoryDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InventoryDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InventoryDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InventoryDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InventoryDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InventoryDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InventoryDb] SET RECOVERY FULL 
GO
ALTER DATABASE [InventoryDb] SET  MULTI_USER 
GO
ALTER DATABASE [InventoryDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InventoryDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InventoryDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InventoryDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [InventoryDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'InventoryDb', N'ON'
GO
ALTER DATABASE [InventoryDb] SET QUERY_STORE = OFF
GO
USE [InventoryDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [InventoryDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 01/07/2021 15:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 01/07/2021 15:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 01/07/2021 15:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 01/07/2021 15:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 01/07/2021 15:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 01/07/2021 15:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[CardNumber] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[RegisteredDate] [datetime] NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 01/07/2021 15:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 01/07/2021 15:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[SellingPrice] [decimal](18, 2) NULL,
	[PurchasingPrice] [decimal](18, 2) NULL,
	[Quantity] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202106301653474_InitialCreate', N'NTierApp.WebApp.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE4B8117D0F907F10F49404DE962F99C1C4E8DE85B76D6F8CF88669CF266F03B6C46E0B23515A89F2DA08F6CBF2904FCA2FA4A8BB7891A896FAE2C502B3DD64F154B1586415AB8BFEDF7FFE3BFDE1D5F78C171CC56E4066E6C9E4D83430B103C725EB9999D0D5779FCC1FBEFFE31FA6578EFF6AFC5CD09D313A1849E299F94C69786E59B1FD8C7D144F7CD78E823858D1891DF8167202EBF4F8F86FD6C9898501C2042CC3987E4E08757D9C7E81AFF380D838A409F2EE02077B71DE0E3D8B14D5B8473E8E4364E39979FFE4E2E8220C27FFC44BF6BF6C84695C782E026916D85B99062224A08882ACE75F62BCA05140D68B101A90F7F41662A05B212FC6F91CCE2B72DDE91C9FB2E958D5C002CA4E621AF83D014FCE72FD58FCF08DB46C96FA030D5E81A6E91B9B75AAC59979E3E0B4E973E081027886E7732F62C433F3AE64711187F7984E8A81930CF23A02B85F83E8DBA48E7864688F3B2AEDE97472CCFE3B32E689479308CF084E6884BC23E331597AAEFD0FFCF6147CC3647676B25C9D7DFAF01139671FFF8ACF3ED4670A7305BA4603343D46418823900DAFCAF99B86D51C67F103CB61B5319956C096606B98C61D7ABDC5644D9F61D39C7E328D6BF7153B454B6E5C5F880B3B0906D12881AFF789E7A1A587CB7EAB9527FBB785EBE9878FA370BD472FEE3A5D7A8E3F6C9C08F6D567ECA5BDF1B31B66DBABB1DE5F73B2EB28F0D9F7A67D65BD5F174112D96C328192E409456B4C9BD24DADCA78B54C9A418D6FD605EAE19B369354346F29299BD0263BA160B1EBDD50C8BB5DBEDA16079E07162F352DA6913683933BAC09877064707495099DE89A1081A9FD9E4FC4398A9CFBC45F327D2B79C3472DDEEDACAEDD28A61D27F0389C6ED18E187DC66B37A638C2CE25A2253BF6F9C9F5FB2FC6958F5C6F04FFA4C105C2C3951BF9B834B91F03380D10E92DF3238A63389E9DBFA3F879EBFA5E603B89E0D45850E4875BE7F6F81C10BCA3CD51E335DAD23CFD1A5C239B06D11561A306E3DD06F6B720A15724B5F62FD4160D5E136014712E6C1BC7F135183376E601DC7E0AC01B42CF4E7BC3318FB1EFF870EE21D79707889C6FFB5A905641A29C4208141564B260B14DD4DB60ED123D510B52B5A81945A7A839595F5119989EA439A55AD094A053CE8C6AB4F03B5DA1F1E3EF14F6F003F0619194EA2CA8A971012724FE09131CC131E63C220A0E9D542BA0736EEC257263CBC7986EDD37A59C7E465E3236AB8D76437A088CBF1B52D8C3DF0DA998D0FCE23A2C2AD1B89516C400AF452FBFF076EF394EB25D6F87C63477CD7C3767806ABB5CC47160BBE92E90E423F36C52537E88E18CEED452361B3E3D051303437799CB8316989BC91BD503B9C41EA6D8B8B0B37CED1CC536724435C2849C1E82151E55225895A66A0AF7178127583A5CD808CB5B43A41DC34E750915B7854B6C37445EA796B8919A2E8CCDBDE4C1F75CE21013C6B053133ACCE559292640C9875B942E0D4DAD9AC5B51BA2226A55AD7957085BADBB902CDA894D76C4CE0ABBCCE3B7AD1866BBC676609CED2AD111409961DD8781E677155D03E02F2E8766A0DC8D4961A07948B513036D6A6C0F06DA54C9BB33D0EC8AAABBFEDC7DF5D0CCB37951DEBD5B6F55D71E6CB3A18F0333CD2CF684311446E04834CFCB25EBC4AF5472390339F3FB599C87BABC8930F005A6CD944D15EF4AE350AB1D8437A236C0CAD03A40F3DF6605206143F510AEC8E5B54A9747113D608BBC5B2B6C7EF673B0351B10B1EBBF51D708D5BF64F3C6A975FB2867565A8360E45A97851A8EC420F8C3AB39710DA5A8F2B2A2627462E13ED1706D62F962B428A823725528A998CCE85A2A4CB35B4BB280AC4F4836484B5CF8A4D0523199D1B594DB68B7922441418FB060908A9A2E7CA4CD56643A4A6F53F64DADAC7C2D6F985A8A3AB7E91D0A4397AC6B756F798BB1C88ADEE6DF2DFA5782F9198665C79282B052DA92130D22B4C65C2FB00649D35FC32F11454BC4F23C73C717C8A4BE5571FC172CEBEE535CC4C20F14D4EC735E1925AFA868F85B3120C971AE61963E8B6AD254BAC406E4C30D568B883C1449B2F7F3C04B7CA20EB2D4A3B3DFF0EAE3B31611616A71F20B4194A03121D46DAA5F6B71C48D31E2429571CCE68BA58650A9BC8842EB4A5745A66A94225155475125AFF6B678AA80A6F782F1F162FFF5EA44D8CEFEAA570CD551EAEDFA68B5A2A03A58AD591FAB2AFBA94355AD3D4C91ABEB699824D7A78F9A97F7D4C1F2A69E18B50A1101ACD6A78FDA2CE2A963367BF411B94A9D3A24D7D543CA7A3D4E43C87AC746780A8DCA29F4398815387574B1B787AD8BB5380DA317BB37C096C8CCF7E9A34ACA75EAC0926E7DECAA7687774107ECFB95F7BF41CE3F4B130CF3FE0A8CEDF8937182875A3544C32955CD3DB1F27A07012C6F3F488B52DE9507595496211A66510A0CF509D4A825681E40AD05106ACC468140E3906F2B9050E3F5B3DBAD5A87705DE6494AEEE5B599BB1E4FF3AB6AF75B31E1EE9A919846A14670F06F101FF913463059FCE2CD3D17B3E3BC20B843C45DE198664531E6E9F1C929F7D4EC709E7D5971EC7892ABBEEAED5773CD7650DF465E50643FA348AC3619F034AA021512F937C4C1AF33F3DFE9A8F33427C43EA5CD47C64DFC85B8BF24D0F11425D8F84DAC9E1DE7A988C6E3A452D0DFDEC5AB1F7D95DFFCEB6B36F4C87888603B9D1BC79CA23759FEE65BA05ED264430748B3F10BA1F7BBDBC4673705F49F7CF4FAE73ADE464F6B06A1F1CF670681C99FC838F0990E7E22235D0EEE98D9FC45CCD2A5A3BC8619A43EE98B97418892572D63E18DA242D5AB954DB0942F5664F6A7B535A42F5836114DF97AC525FDC1F8B72BFAE77731728F0E5C72DBDCC5599EEAB9B3F67F5021F0BE9DBAF04460D046179F01F4801BB5D47F586CF7CE4AE8478B392415F2A361EFD3EEB75E167F2895F0D56D67BF05F0BBAC796FF93DF37755EA7E00C5999262B3FD17B4EFDAD654E9F303AF0AEE57B67E60C696BBF9FD17A7EFDAD85499F50337B65E25E807666BFBF29F7BB6346D17BAF78272B1364EF133982CFDDE55309EFD5601D7FF650046904594D93B5F7985625B757507C38A44CD545D1AC93316368EC057A06867DB6FAEB9C36F9D6C4ED3CE565150DCC63B3FFF5B79E734EDBC1565BAFB28759716CACA9E1F749C636DD57BEFA9B4BD31938E97145D316B6B4DC37BAA641F45298DDDA3F859FEFD14AE8FA29231B74E8F4275F11776F09DB5BFD90AFE3B76D71504FB0BAE04DB0DAF59D2DC905550386F4EA28284CBD0DC618A1C70A917117557C8A6D0CD12D0E91F2A48937AEC679025766EC84342C384C294B1BFF41A092F1604B4F14FABF19B324F1F42F62D1E630A20A6CB12F70FE4C7C4F59C52EE6B494E4801C1A28B3CDDCBD692B2B4EFFAAD44BA0F882650AEBE32287AC27EE80158FC4016E8056F221B98DF2D5E23FBADCA00AA40BA17A2A9F6E9A58BD611F2E31CA31A0F5FC1861DFFF5FBFF039205134BBA580000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'803680d6-c065-49d3-b4f6-d3873b0c7c9b', N'1')
INSERT [dbo].[AspNetUsers] ([Id], [CardNumber], [FirstName], [LastName], [RegisteredDate], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'803680d6-c065-49d3-b4f6-d3873b0c7c9b', NULL, N'Admin', NULL, CAST(N'2021-07-01T15:04:39.430' AS DateTime), N'admin@gmail.com', 0, N'AHPnDvbVKEd8gMSDZ6fHynMi8KpLPWj0f2UJlMIUX53orxMoxWRTRMeCG0e6W+eFNQ==', N'a4594f6e-6519-4c45-8b1a-c0fe4084fd20', NULL, 0, 0, NULL, 0, 0, N'admin@gmail.com')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (2, N'Car', NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (3, N'Bike', NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [SellingPrice], [PurchasingPrice], [Quantity], [CategoryId]) VALUES (1, N'Tesla', N'Tesla New Generation', CAST(12345644.00 AS Decimal(18, 2)), CAST(1234567.00 AS Decimal(18, 2)), 2, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [SellingPrice], [PurchasingPrice], [Quantity], [CategoryId]) VALUES (2, N'Ducati', N'Decati 1000 CC', CAST(2500000.00 AS Decimal(18, 2)), CAST(2300000.00 AS Decimal(18, 2)), 2, 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 01/07/2021 15:59:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 01/07/2021 15:59:26 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 01/07/2021 15:59:26 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 01/07/2021 15:59:26 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 01/07/2021 15:59:26 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 01/07/2021 15:59:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [InventoryDb] SET  READ_WRITE 
GO
