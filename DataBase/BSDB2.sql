USE [BSDB2]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 3/13/2022 4:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[IDAdmin] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 3/13/2022 4:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](50) NULL,
	[Hometown] [nvarchar](250) NULL,
	[DateOfBirth] [smalldatetime] NULL,
	[DateOfDeath] [smalldatetime] NULL,
	[Biographic] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 3/13/2022 4:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[PublisherID] [int] NOT NULL,
	[AuthorID] [int] NOT NULL,
	[BookName] [nvarchar](250) NULL,
	[Price] [money] NULL,
	[Description] [nvarchar](500) NULL,
	[Translator] [nvarchar](50) NULL,
	[Image] [varchar](50) NULL,
	[DateUpdate] [smalldatetime] NULL,
	[Inventory] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/13/2022 4:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/13/2022 4:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Phone] [varchar](50) NULL,
	[DateOfBirth] [smalldatetime] NULL,
	[Account] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[DateCreate] [datetime] NULL,
	[Status] [bit] NULL,
	[ConfirmPassword] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 3/13/2022 4:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FBID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Phone] [varchar](50) NULL,
	[Contents] [nvarchar](500) NULL,
	[DateUpdate] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FBID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/13/2022 4:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[DateStart] [smalldatetime] NULL,
	[DateEnd] [smalldatetime] NULL,
	[OrderStatus] [bit] NULL,
	[CustomerID] [int] NOT NULL,
	[Payment] [int] NULL,
	[Tracking] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/13/2022 4:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[BookID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 3/13/2022 4:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[PublisherID] [int] IDENTITY(1,1) NOT NULL,
	[PublisherName] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Phone] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PublisherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([IDAdmin], [Account], [Password], [FullName], [Status]) VALUES (1, N'admin', N'123456', N'Admin FPT', 1)
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (7, N'Sumino Yoru', N'Osaka, Japan', CAST(N'1995-10-10T00:00:00' AS SmallDateTime), NULL, N'He initially submitted a story for the Dengeki Novel Prize, however after not making it past the first round of selection, Sumino revised his writing style before writing I Want to Eat Your Pancreas;')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (8, N'Sarah J. Maas', N'New York City, New York.', CAST(N'1986-03-05T00:00:00' AS SmallDateTime), NULL, N'Sarah J. Maas was born on March 5, 1986, in New York City, New York. She grew up in the Upper West Side neighbourhood, Manhattan. As a child, she enjoyed creating stories based on popular tales or myths. She also used to write Sailor Moon fanfiction in her youth. Some of her fanfiction was published in Throne of Glass')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (9, N'Samantha Shannon', N'Hammersmith, London, England', NULL, NULL, N'In 2012 she signed a six-figure book deal with Bloomsbury Publishing, who bid following the London Book Fair, to publish the first three books in a seven-book series, beginning with The Bone Season.Set in 2059, the events of the novel take place in a London governed by a "security force" called Scion and an Oxford which has become a huge prison. Following this novel''s publication, Shannon was compared favorably to J.K. Rowling')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (10, N' Stephen  King', N'Portland, Maine, U.S', NULL, NULL, N'Described as the "King of Horror", a play on his surname and a reference to his high standing in pop culture,his books have sold more than 350 million copies, and many have been adapted into films, television series, miniseries, and comic books. King has published 64 novels, including seven under the pen name Richard Bachman, and five non-fiction books')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (11, N'Hiten, E☆2編集部', N'Japan', NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (12, N'Maruyama Kugane', N'Japan', NULL, NULL, N'Originally wrote under the pseudonym Muchimuchi Puririn when he first posted Overlord on the Internet. He changed his pseudonym to Kugane Maruyama when Overlord got published.

Maruyama has written for various franchises, with his short story Dawn adapted in Kagetsu Tohya''s Type-Moon. In addition to that, he was involved with working with Nasu Kinoko, the writer of Fate/stay night, who praised his work though Maruyama felt there was a difference in talent.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (13, N'Gayle Forman', N'Los Angeles, California, U.S.', CAST(N'1970-06-05T00:00:00' AS SmallDateTime), NULL, N'Gayle Forman (born June 5, 1970) is an American young adult fiction author, best known for her novel If I Stay, which topped the New York Times best sellers list of Young Adult Fiction and was made into a film of the same name.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (14, N'Ōima Yoshitoki', N'Ōgaki, Gifu, japan', CAST(N'1989-03-15T00:00:00' AS SmallDateTime), NULL, N'Her first manga, Mardock Scramble, is an adaptation of Ubukata Tow''s light novel of the same name and was published in 2009.She is also responsible for illustrating the 9th episode of Attack on Titan. After the success of Sound Shape, Ōima Yoshitoki continued to work with another manga artist to complete Ore no 100-wame!!. In 2016 Ōima Yoshitoki published her third manga titled To You, Immortal')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (15, N'Jay Wengrow', N'Chicago, Illinois, United States', NULL, NULL, N'Author of A Common-Sense Guide to Data Structures and Algorithms')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (16, N'Raymond Murphy', N'UK', NULL, NULL, N'Raymond Murphy')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (17, N'Mark Harrison', N'UK', NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (18, N'Takaya Kagami', N'Japan', CAST(N'1979-05-22T00:00:00' AS SmallDateTime), NULL, N'Takaya Kagami (鏡 貴也, Kagami Takaya, born May 22, 1979) is a Japanese light novel and manga writer.Some of his major works include The Legend of the Legendary Heroes, A Dark Rabbit Has Seven Lives and Seraph of the End, which have been adapted into anime series.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (19, N'Riichiro Inagaki', N'Japan', CAST(N'1975-06-20T00:00:00' AS SmallDateTime), NULL, N'Riichiro Inagaki (Japanese: 稲垣 理一郎, Hepburn: Inagaki Riichirō, born June 20, 1976) is a Japanese manga writer from Tokyo. He started his career in 2001 publishing works for Shogakukan''s magazine Big Comic Spirits. After three one-shots, he moved to Shueisha''s Weekly Shōnen Jump, in which he started the work he is best known for, Eyeshield 21.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (20, N'Masashi Kishimoto', N'Ja', CAST(N'1987-11-08T00:00:00' AS SmallDateTime), NULL, N'Kishimoto Masashi (岸本きしもと 斉史まさし, born November 8, 1974 in Okayama) is a manga artist known for his world-famous Naruto manga series. Masashi''s twin brother, Kishimoto Seishi, is also a manga artist and creator of 666 Satan and Blazer Drive.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (21, N'Shirai Kaiu', N'Japan', NULL, NULL, N'Kaiu Shirai (白井 カイウ, Shirai Kaiu) is the pen name of a Japanese manga artist and writer whose real name and date of birth are unknown. He is best known for his manga series The Promised Neverland.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (22, N'Nicola Yoon', N'America', NULL, NULL, N'Nicola Yoon /ˈnɪkələ/ is a Jamaican-American author. She is best known for writing the 2015 young adult novel Everything, Everything, a New York Times best seller and the basis of a 2017 film of the same name. In 2016, she released The Sun Is Also a Star, a novel that was adapted to a film of the same name.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (23, N'John Green', N'Indianapolis, Indiana, U.S.', CAST(N'1977-08-24T00:00:00' AS SmallDateTime), NULL, N'John Michael Green(born August 24, 1977) is an American author, YouTube content creator, and podcaster. He won the 2006 Printz Award for his debut novel, Looking for Alaska, and has had several of his subsequent books debut at number one on The New York Times Best Seller list, including his most popular novel, The Fault in Our Stars.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (24, N'Nora Roberts', N'Silver Spring, Maryland, U.S', CAST(N'1950-10-10T00:00:00' AS SmallDateTime), NULL, N'Nora Roberts (born Eleanor Marie Robertson on October 10, 1950) is an American author of more than 225 romance novels.[1] She writes as J. D. Robb for the in Death series and has also written under the pseudonyms Jill March and for publications in the U.K. as Sarah Hardesty.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (25, N'Brandon Sanderson', N'Lincoln, Nebraska, U.S.', CAST(N'1975-12-19T00:00:00' AS SmallDateTime), NULL, N'Brandon Sanderson (born December 19, 1975) is an American author of epic fantasy and science fiction. He is best known for the Cosmere fictional universe, in which most of his fantasy novels, most notably the Mistborn series and The Stormlight Archive, are set.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (32, N'Anna Stephens', N'U.K', NULL, NULL, N'Anna Stephens is a UK-based author of epic fantasy somewhere on the grimdark scale. The Godblind trilogy - Godblind, Darksoul, Bloodchild - are now published and available worldwide, and she writes short stories and novellas for Black Library''s Age of Sigmar, as well as short stories for a variety of small presses.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (33, N'B. A. Frade', N'U.S', NULL, NULL, N'B. A. Frade')
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (1, 3, 1, 7, N'I want to eat your pancreas', 25.0000, N'Haruki Shiga comes across a book in a hospital waiting room. He soon discovers that it is a diary kept by his very popular classmate, Sakura Yamauchi, who reveals to him that she is secretly suffering from a fatal pancreatic illness. Despite this, Sakura intends to maintain a normal school life, and thus is drawn to Haruki due to his relatively unfazed reaction to her condition. They begin to spend time together and become friends.', N'Studio VOLN', N'tomuonantuycuacau.jpg', CAST(N'2015-06-19T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (2, 3, 4, 11, N'ADOLESCENCE -アドレセンス', 100.0000, N'Long-awaited fans !!
Popular illustrator Hiten''s first art book will be released in January 2022!
From his original illustration work by a teacher who is very popular not only in Japan but also in Asia and abroad.
Even commercial works such as light novels and magazines !!', NULL, N'ADOLESCENCE.jpg', CAST(N'2022-01-11T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (3, 5, 3, 10, N'IT', 50.0000, N'He story follows the experiences of seven children as they are terrorized by an evil entity that exploits the fears of its victims to disguise itself while hunting its prey. "It" primarily appears in the form of Pennywise the Dancing Clown to attract its preferred prey of young children.', NULL, N'it.jpg', CAST(N'1986-09-15T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (4, 7, 2, 8, N'Throne Of Glass', 30.0000, N'In a land without magic, eighteen-year-old assassin Celaena Sardothien is summoned to the castle. If she defeats twenty-three hardened warriors in a competition, she will be released from prison to serve as the King''s Champion.
', N'Macmillan Publishers', N'ThroneofGlass.jpg', CAST(N'2019-02-01T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (5, 3, 7, 14, N'A Silent Voice', 70.0000, N'As a wild youth, elementary school student Shouya Ishida sought to beat boredom in the cruelest ways. When the deaf Shouko Nishimiya transfers into his class, Shouya and the rest of his class thoughtlessly bully her for fun. However, when her mother notifies the school, he is singled out and blamed for everything done to her. With Shouko transferring out of the school, Shouya is left at the mercy of his classmates.', NULL, N'A Silent Voice.jpg', CAST(N'2016-07-17T00:00:00' AS SmallDateTime), 13)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (6, 5, 3, 10, N'The Stand', 65.0000, N'The Stand is a post-apocalyptic dark fantasy novel written by American author Stephen King and first published in 1978 by Doubleday. The plot centers on a deadly pandemic of weaponized influenza and its aftermath, in which the few surviving humans gather into factions that are each led by a personification of either good or evil and seem fated to clash with each other', NULL, N'Thestand.jpg', CAST(N'1978-10-03T00:00:00' AS SmallDateTime), 9)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (7, 1, 9, 16, N'English Grammar ', 25.0000, N'English Grammar in Use is a self-study reference and practice book for intermediate to advanced students of English. The book was written by Raymond Murphy and published by Cambridge University Press.', NULL, N'English Grammar.jpg', CAST(N'2013-09-09T00:00:00' AS SmallDateTime), 15)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (8, 1, 9, 17, N'Complete IELTS', 25.0000, N'Complete IELTS combines the very best in contemporary classroom practice with stimulating topics aimed at young adults wanting to study at university. The Student''s Pack is ideal for self-study. It consists of the Student''s Book with Answers with CD-ROM *The Audio CDs (is not included in Student''s Book) which contain all the material for the listening activities.', N'Cambridge', N'Complete IELTS.jpg', CAST(N'2012-01-01T00:00:00' AS SmallDateTime), 16)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (9, 6, 10, 19, N'Dr.Stone Chapter 14', 21.0000, N'Dr. Stone (stylized as Dr.STONE) is a Japanese manga series written by Riichiro Inagaki and illustrated by the South Korean artist Boichi. It has been serialized in Shueisha''s Weekly Shōnen Jump since March 2017, with its chapters collected in twenty-five tankōbon volumes as of March 2022', NULL, N'Drstone.jpg', CAST(N'2017-05-06T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (10, 6, 10, 19, N'Dr.STONE - Chapter 13: War of Science', 22.0000, N'Senku''s group sent Kohaku to infiltrate the island''s harem to find a way to get the petrified weapon in the hands of the leader. The two embarked on a plan to rob the ship''s laboratory in order to "greatly restore" beauty and turn Kohaku into a beauty with science. While the formidable people on the island are watching, the trump card that decides the success or failure of the plan is on the ship...!?', NULL, N'Drstone13.jpg', CAST(N'2022-01-01T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (11, 6, 10, 18, N'Seraph Of The End - Chapter 1', 22.0000, N'Seraph Of The End - Episode 1', NULL, N'Seraph Of The End - Episode 1.jpg', CAST(N'2022-02-01T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (12, 6, 10, 20, N'Naruto Chapter 68', 20.0000, N'In the face of Obito''s terrible power, Naruto''s will united and stopped the wavering in the hearts of the Ninja soldiers!
On the front, the Five Kage and the entire army unite to face the Tree of God! On the other hand, to stop Obito''s "Infinite Tsukuyomi", Naruto and Sasuke decided to join hands!?', NULL, N'Naruto.jpg', CAST(N'2022-01-15T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (13, 6, 10, 19, N'Dr.STONE - Chapter 3: Somewhere After 2 Million Years', 22.0000, N'After arriving at Kohaku''s village, Senku began planning to turn the villagers into allies. First, Senku won the science competition and got a good assistant. They then work together to develop a panacea to save Kohaku''s sister. The revival of the Kingdom of Science has officially begun', NULL, N'Drstone3.jpg', CAST(N'2022-01-01T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (14, 6, 10, 18, N'Seraph Of The End - Chapter 11', 20.0000, N'The Moon Demon Team retreated to Nagoya airport. There, the army leader Hirragi Kureto began conducting a terrifying experiment that required many sacrifices… Yuichiro and Mikaela rushed to save their comrades, but the appearance of Guren and the vampires. making the situation even more chaotic…!!', N'Studio VOLN', N'Seraph Of The End - Episode 11.jpg', CAST(N'2021-10-10T00:00:00' AS SmallDateTime), 11)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (15, 3, 10, 21, N'The Promised Neverland', 20.0000, N'Yakusoku no Neverland (Japanese: promiseSlowのネバーランドHepburn:Yakusoku no Nebārando?, English title: The Promised Neverland) is a manga series written by Shirai Kaiu and illustrated by Demizu Posuka. The series was serialized in Weekly Shōnen Jump on August 1, 2016, with 10 tankōbon volumes published by Shueisha.', N'Studio Animatiom', N'The Promised Neverland.jpg', CAST(N'2021-01-01T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (16, 4, 12, 22, N'The Sun also a Star', 32.0000, N'The Sun Is Also a Star follows two teenagers in New York City, Natasha Kingsley and Daniel Bae. Natasha is an undocumented immigrant from Jamaica living in Brooklyn who learns that her family will be deported. Daniel is the son of Korean immigrants living in Harlem. Daniel is a poet resisting his parents'' dream of him becoming a doctor, and Natasha is science-minde', N'Studio VOLN', N'The Sun Is Also A Star.jpg', CAST(N'2016-11-01T00:00:00' AS SmallDateTime), 7)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (17, 4, 12, 23, N'Looking For Alaska ', 30.0000, N'Looking for Alaska is American author John Green''s debut novel, published in March 2005 by Dutton Juvenile. Based on his time at Indian Springs School, Green wrote the novel as a result of his desire to create meaningful young adult fiction.[1] The characters and events of the plot are grounded in Green''s life, while the story itself is fictional', N'Studio NN', N'Looking.jpg', CAST(N'2021-10-10T00:00:00' AS SmallDateTime), 6)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (18, 4, 13, 24, N'Dance of Dreams', 23.0000, N'Bright city lights...Finally in New York, dancing for her living, innocent Ruth Bannion is in awe of her tempestuous, demanding choreographer boss Nikolai Davidov. But when their working relationship erupts into passionate desire, Nick resists the attraction, so it''s Ruth who''s determined to show the fiery Russian that she''s his perfect partner in every way! ', N'Studio VOLN', N'Dance of Dreams.jpg', CAST(N'2021-10-10T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (19, 7, 12, 25, N'The Well Of Ascension: A Mistborn Novel', 17.0000, N'The impossible has been accomplished. The Lord Ruler -- the man who claimed to be god incarnate and brutally ruled the world for a thousand years -- has been vanquished. But Kelsier, the hero who masterminded that triumph, is dead too, and now the awesome task of building a new world has been left to his young protégé, Vin, the former street urchin who is now the most powerful Mistborn in the land, and to the idealistic young nobleman she loves.', NULL, N'The Well Of Ascension.jpg', CAST(N'2014-02-01T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (20, 7, 2, 8, N'Empire Of Storms ', 26.0000, N'Discover Sarah J. Maas''s #1 New York Times bestselling Throne of Glass series-now available for a limited time in a brand-new miniature format! This exclusive edition highlights Manon Blackbeak.
Delightfully compact with lightweight pages for easy travel, this miniature volume of Queen of Shadows is perfect for any book lover''s coat pocket or purse. Complete and unabridged, this character edition celebrates Manon Blackbeak by highlighting her name in Crochan Red ink.', NULL, N'Empire Of Storms.jpg', CAST(N'2019-10-10T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (21, 7, 2, 21, N'The Return Of The King', 20.0000, N'The Return Of The King', N'Studio VOLN', N'Return king.jpg', CAST(N'2016-10-10T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (22, 7, 14, 32, N'HarperVoyager', 15.0000, N'The thrilling sequel to GODBLIND, the biggest fantasy debut of 2017.
The Wolves lie dead beside Rilpor’s soldiers, slaughtered at the hands of the Mireces and their fanatical army.
The veil that once kept the Red Gods at bay has been left in tatters as the Dark Lady’s plans for the world come to fruition. Where the gods walk, blood is spilled on the earth.', N'Wit Studio', N'Darksoul.jpg', CAST(N'2019-01-20T00:00:00' AS SmallDateTime), 7)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (23, 5, 14, 33, N'Tales from the Scaremaster', 27.0000, N'Don''t make the same mistake Emma made. Don''t read my book.
Signed,
The Scaremaster
... Don''t say I didn''t warn you.
Twelve-year-old Emma is excited to spend a night away at best friend Samantha''s house for an epic sleepover with Sam''s very chic out-of-town cousins - but when the cousins turns out to have a creepy secret, it''s up to Emma to solve this wolfish mystery, race against the clock to outwit the Scaremaster, and stop a werewolf in her tracks.', NULL, N'Tales from the Scaremaster.jpg', CAST(N'2016-07-17T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (24, 5, 13, 32, N'The Walking Dead', 25.0000, N'The Walking Dead', N'Studio NN', N'thewalking.jpg', CAST(N'2016-10-10T00:00:00' AS SmallDateTime), 10)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Dictionaries & Languages')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Light Novel')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Romance')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'Horror')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (6, N'Manga')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (7, N'Fantasy')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [Phone], [DateOfBirth], [Account], [Password], [DateCreate], [Status], [ConfirmPassword]) VALUES (7, N'admin', N'emty@gmail.com', N'TP.HCM', N'222222', CAST(N'2016-04-10T00:00:00' AS SmallDateTime), N'admin', N'123456', CAST(N'2022-02-20T22:41:31.740' AS DateTime), 1, NULL)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [Phone], [DateOfBirth], [Account], [Password], [DateCreate], [Status], [ConfirmPassword]) VALUES (8, N'ho man', N'man@gmail.com', N'vinh long', N'036999444', CAST(N'2001-03-10T00:00:00' AS SmallDateTime), N'manho', N'man', CAST(N'2022-03-05T13:29:34.083' AS DateTime), 1, NULL)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [Phone], [DateOfBirth], [Account], [Password], [DateCreate], [Status], [ConfirmPassword]) VALUES (10, N'Ho Minh Man', N'hominhman200ct@gmail.com', N'vinh long', N'025949899944', CAST(N'2001-11-11T00:00:00' AS SmallDateTime), N'manho123', N'man123', CAST(N'2022-03-10T18:09:28.370' AS DateTime), 1, NULL)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [Phone], [DateOfBirth], [Account], [Password], [DateCreate], [Status], [ConfirmPassword]) VALUES (11, N'customer', N'test@test.com', N'vinh long', N'025949899988', CAST(N'2000-10-10T00:00:00' AS SmallDateTime), N'customer', N'123456', CAST(N'2022-03-10T18:12:46.833' AS DateTime), 1, NULL)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [Phone], [DateOfBirth], [Account], [Password], [DateCreate], [Status], [ConfirmPassword]) VALUES (13, N'manman', N'man@gmail.com', N'vinh long', N'0363867531', CAST(N'2010-06-17T00:00:00' AS SmallDateTime), N'manman', N'manman', CAST(N'2022-03-10T21:17:04.800' AS DateTime), 1, N'manman')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [Phone], [DateOfBirth], [Account], [Password], [DateCreate], [Status], [ConfirmPassword]) VALUES (14, N'man ho', N'man@gmail.com', N'vinh long', N'0363867531', CAST(N'2021-10-20T00:00:00' AS SmallDateTime), N'hominhman', N'123123', CAST(N'2022-03-10T21:47:52.103' AS DateTime), 0, N'123123')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [Phone], [DateOfBirth], [Account], [Password], [DateCreate], [Status], [ConfirmPassword]) VALUES (15, N'man', N'man@gmail.com', N'U.S', N'0216499944', CAST(N'2022-03-26T00:00:00' AS SmallDateTime), N'minhman', N'manman', CAST(N'2022-03-10T22:02:00.780' AS DateTime), 1, N'manman')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [Phone], [DateOfBirth], [Account], [Password], [DateCreate], [Status], [ConfirmPassword]) VALUES (16, N'man ho minh', N'man@gmail.com', N'vinh long', N'0363867531', CAST(N'2011-05-11T00:00:00' AS SmallDateTime), N'homan', N'manho3107', CAST(N'2022-03-11T07:49:12.930' AS DateTime), 1, N'manho3107')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [DateStart], [DateEnd], [OrderStatus], [CustomerID], [Payment], [Tracking]) VALUES (6, CAST(N'2022-03-10T18:14:00' AS SmallDateTime), CAST(N'2022-03-13T18:14:00' AS SmallDateTime), 1, 11, 1, NULL)
INSERT [dbo].[Order] ([OrderID], [DateStart], [DateEnd], [OrderStatus], [CustomerID], [Payment], [Tracking]) VALUES (7, CAST(N'2022-03-12T13:22:00' AS SmallDateTime), CAST(N'2022-03-15T13:22:00' AS SmallDateTime), 1, 8, 1, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (1, N'Shousetsuka ni Narou', N'Japan', N'0215151666116')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (2, N'Bloomsbury Publishing', N'England', N'0216499944')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (3, N'Stephen King', N'U.S', N'202215514556')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (4, N'bio magazine', N'Japan', N'03264499944')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (5, N'Enterbrain', N'Japan', NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (6, N'Scribner Book Company', N'New york', NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (7, N'Kodansha Comics', N'Japan', NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (8, N'Pragmatic Bookshelf', N'U.S', NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (9, N'Cambridge University Press', N'Kingdom of England', NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (10, N'Shueisha', N'Japan', NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (12, N'Delacorte Books', N'America', NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (13, N'Harlequin (UK)', N'U.K', NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (14, N'HarperVoyager', N'U.K', NULL)
SET IDENTITY_INSERT [dbo].[Publisher] OFF
GO
ALTER TABLE [dbo].[Book] ADD  DEFAULT (getdate()) FOR [DateUpdate]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [DateStart]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Author] ([AuthorID])
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([PublisherID])
REFERENCES [dbo].[Publisher] ([PublisherID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
