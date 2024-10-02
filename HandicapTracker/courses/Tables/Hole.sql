CREATE TABLE [courses].[Hole](
	[HoleID] [INT] IDENTITY(1,1) NOT NULL,
	[CourseID] [INT] NOT NULL,
	[Par] [TINYINT] NOT NULL,
	[CourseSequence] [TINYINT] NOT NULL,
	[HandicapIndex] [TINYINT] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UC_HcpIndex] UNIQUE NONCLUSTERED 
(
	[CourseID] ASC,
	[HandicapIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UC_Sequence] UNIQUE NONCLUSTERED 
(
	[CourseID] ASC,
	[CourseSequence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [courses].[Hole]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [courses].[Course] ([CourseID])
GO

ALTER TABLE [courses].[Hole]  WITH CHECK ADD  CONSTRAINT [CHK_ValidIdx] CHECK  (([HandicapIndex]<=(18) AND [HandicapIndex]>(0)))
GO

ALTER TABLE [courses].[Hole] CHECK CONSTRAINT [CHK_ValidIdx]
GO

ALTER TABLE [courses].[Hole]  WITH CHECK ADD  CONSTRAINT [CHK_ValidPar] CHECK  (([Par]=(5) OR [Par]=(4) OR [Par]=(3)))
GO

ALTER TABLE [courses].[Hole] CHECK CONSTRAINT [CHK_ValidPar]
GO

ALTER TABLE [courses].[Hole]  WITH CHECK ADD  CONSTRAINT [CHK_ValidSeq] CHECK  (([CourseSequence]<=(18) AND [CourseSequence]>(0)))
GO

ALTER TABLE [courses].[Hole] CHECK CONSTRAINT [CHK_ValidSeq]
GO


