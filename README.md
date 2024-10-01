# handicap-tracker
MSSQL Server Database learning project for recording scores in golf scores and calculating USGA handicap index based on round history.

Phase 1: SQL Database
Define schema for identifying users, recording rounds at the strokes-per-hole level, and storing course information such as par, tees, rating, and slope. Develop functions and procedures necessary to calculate a user's overall handicap and scoring index for a particular round. 

Phase 2: Powershell Scripting
Powershell is the future of database management. Leverage dbatools.io Cmdlet library to create and populate database. Intended end state is to run SpinUp-HcpDb.ps1, and create the full database with mock data in one command.

Phase 3: ASP.NET Core Web API

Phase 4: Management UI
Facilitates adding new course information. Bare boned and no nonsense.

Phase 5: User UI
For inputting score information. Frillier.
