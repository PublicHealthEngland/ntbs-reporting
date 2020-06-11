﻿/***************************************************************************************************
Desc:    This table type is used as a work-around to audit the notification IDs that every
         line list SQL retrieves at run-time. This table type duplicates all the fields of the 
		 ReusableNotification table, so please keep the following column (types) in line with 
		 the ReusableNotification at all times!


         
**************************************************************************************************/

CREATE TYPE [dbo].[ReusableNotificationType] AS TABLE (
	-- Global (ETS, LTBR, NTBS encompassing) primary key
    [NotificationId] [int] NOT NULL PRIMARY KEY CLUSTERED,

	-- ETS primary key
	[EtsId] [bigint] NULL DEFAULT NULL,

	-- Demographics
	[LtbrId] [nvarchar](50) NULL DEFAULT NULL,
	[NotificationDate] [date] NULL DEFAULT NULL,
	[CaseManager] [nvarchar](101) NULL DEFAULT NULL,
	[Consultant] [nvarchar](255) NULL DEFAULT NULL,
	[Hospital] [nvarchar](255) NULL DEFAULT NULL,
	[Service] [nvarchar](150) NULL DEFAULT NULL,
	[NhsNumber] [nvarchar](50) NULL DEFAULT NULL,
	[Forename] [nvarchar](50) NULL DEFAULT NULL,
	[Surname] [nvarchar](50) NULL DEFAULT NULL,
	[DateOfBirth] [date] NULL DEFAULT NULL,
	[Age] [tinyint] NULL DEFAULT NULL,
	[Sex] [varchar](30) NULL DEFAULT NULL,
	[UkBorn] [varchar](30) NULL DEFAULT NULL,
	[EthnicGroup] [varchar](255) NULL DEFAULT NULL,
	[BirthCountry] [varchar](255) NULL DEFAULT NULL,
	[UkEntryYear] [int] NULL DEFAULT NULL,
	[Postcode] [nvarchar](10) NULL DEFAULT NULL,
	[NoFixedAbode] [nvarchar](30) NULL DEFAULT NULL,

	-- Geographies
	[LocalAuthority] [nvarchar](50) NULL DEFAULT NULL,
	[LocalAuthorityCode] [nvarchar](50) NULL DEFAULT NULL,
	[ResidencePhec] [nvarchar](50) NULL DEFAULT NULL,
	[TreatmentPhec] [nvarchar](50) NULL DEFAULT NULL,

	-- Clinical Details
	[SymptomOnsetDate] [date] NULL DEFAULT NULL,
	[PresentedDate] [date] NULL DEFAULT NULL,
	[OnsetToPresentationDays] [smallint] NULL DEFAULT NULL,
	[DiagnosisDate] [date] NULL DEFAULT NULL,
	[PresentationToDiagnosisDays] [smallint] NULL,
	[StartOfTreatmentDate] [date] NULL DEFAULT NULL,
	[DiagnosisToTreatmentDays] [smallint] NULL DEFAULT NULL,
	[OnsetToTreatmentDays] [smallint] NULL DEFAULT NULL,
	[HivTestOffered] [nvarchar](255) NULL DEFAULT NULL,
	[SiteOfDisease] [nvarchar](50) NULL DEFAULT NULL,
	[AdultContactsIdentified] [int] NULL DEFAULT NULL,
	[ChildContactsIdentified] [int] NULL DEFAULT NULL,	
	[TotalContactsIdentified] [int] NULL DEFAULT NULL,
	[AdultContactsAssessed] [int] NULL DEFAULT NULL,
	[ChildContactsAssessed] [int] NULL DEFAULT NULL,
	[TotalContactsAssessed] [int] NULL DEFAULT NULL,
	[AdultContactsActiveTB] [int] NULL DEFAULT NULL,
	[ChildContactsActiveTB] [int] NULL DEFAULT NULL,
	[TotalContactsActiveTB] [int] NULL DEFAULT NULL,
	[AdultContactsLTBI] [int] NULL DEFAULT NULL,
	[ChildContactsLTBI] [int] NULL DEFAULT NULL,
	[TotalContactsLTBI] [int] NULL DEFAULT NULL,
	[AdultContactsLTBITreat] [int] NULL DEFAULT NULL,
	[ChildContactsLTBITreat] [int] NULL DEFAULT NULL,
	[TotalContactsLTBITreat] [int] NULL DEFAULT NULL,
	[AdultContactsLTBITreatComplete] [int] NULL DEFAULT NULL,
	[ChildContactsLTBITreatComplete] [int] NULL DEFAULT NULL,
	[TotalContactsLTBITreatComplete] [int] NULL DEFAULT NULL,
	[PreviouslyDiagnosed] [varchar](30) NULL DEFAULT NULL,
	[YearsSinceDiagnosis] [tinyint] NULL DEFAULT NULL,
	[PreviouslyTreated] [varchar](30) NULL DEFAULT NULL,
	[TreatmentInUk] [varchar](30) NULL DEFAULT NULL,
	[PreviousId] [nvarchar](50) NULL DEFAULT NULL,
	[BcgVaccinated] [varchar](30) NULL DEFAULT NULL,

	-- Risk Factors
	[AnySocialRiskFactor] [varchar](40) NULL DEFAULT NULL,
	[AlcoholMisuse] [varchar](30) NULL DEFAULT NULL,
	[DrugMisuse] [varchar](30) NULL DEFAULT NULL,
	[CurrentDrugMisuse] [varchar](30) NULL DEFAULT NULL,
	[DrugMisuseInLast5Years] [varchar](30) NULL DEFAULT NULL,
	[DrugMisuseMoreThan5YearsAgo] [varchar](30) NULL DEFAULT NULL,
	[Homeless] [varchar](30) NULL DEFAULT NULL,
	[CurrentlyHomeless] [varchar](30) NULL DEFAULT NULL,
	[HomelessInLast5Years] [varchar](30) NULL DEFAULT NULL,
	[HomelessMoreThan5YearsAgo] [varchar](30) NULL DEFAULT NULL,
	[Prison] [varchar](30) NULL DEFAULT NULL,
	[CurrentlyInPrisonOrInPrisonWhenFirstSeen] [varchar](30) NULL DEFAULT NULL,
	[InPrisonInLast5Years] [varchar](30) NULL DEFAULT NULL,
	[InPrisonMoreThan5YearsAgo] [varchar](30) NULL DEFAULT NULL,
	[TravelledOutsideUk] [varchar](30) NULL DEFAULT NULL,
	[ToHowManyCountries] [nvarchar](5) NULL DEFAULT NULL,
	[TravelCountry1] [nvarchar](255) NULL DEFAULT NULL,
	[MonthsTravelled1] [int] NULL DEFAULT NULL,
	[TravelCountry2] [nvarchar](255) NULL DEFAULT NULL,
	[MonthsTravelled2] [int] NULL DEFAULT NULL,
	[TravelCountry3] [nvarchar](255) NULL DEFAULT NULL,
	[MonthsTravelled3] [int] NULL DEFAULT NULL,
	[ReceivedVisitors] [varchar](30) NULL DEFAULT NULL,
	[FromHowManyCountries] [nvarchar](5) NULL DEFAULT NULL,
	[VisitorCountry1] [nvarchar](255) NULL DEFAULT NULL,
	[DaysVisitorsStayed1] [nvarchar](50) NULL DEFAULT NULL,
	[VisitorCountry2] [nvarchar](255) NULL DEFAULT NULL,
	[DaysVisitorsStayed2] [nvarchar](50) NULL DEFAULT NULL,
	[VisitorCountry3] [nvarchar](255) NULL DEFAULT NULL,
	[DaysVisitorsStayed3] [nvarchar](50) NULL DEFAULT NULL,
	[Diabetes] [varchar](30) NULL DEFAULT NULL,
	[HepatitisB] [varchar](30) NULL DEFAULT NULL,
	[HepatitisC] [varchar](30) NULL DEFAULT NULL,
	[ChronicLiverDisease] [varchar](30) NULL DEFAULT NULL,
	[ChronicRenalDisease] [varchar](30) NULL DEFAULT NULL,
	[ImmunoSuppression] [varchar](30) NULL DEFAULT NULL,
	[BiologicalTherapy] [varchar](100) NULL DEFAULT NULL,
	[Transplantation] [varchar](30) NULL DEFAULT NULL,
	[OtherImmunoSuppression] [varchar](30) NULL DEFAULT NULL,
	[CurrentSmoker] [varchar](30) NULL DEFAULT NULL,
	[PostMortemDiagnosis] [varchar](30) NULL DEFAULT NULL,
	[DidNotStartTreatment] [varchar](30) NULL DEFAULT NULL,
	[ShortCourse] [varchar](30) NULL DEFAULT NULL,
	[MdrTreatment] [varchar](30) NULL DEFAULT NULL,
	[MdrTreatmentDate] [date] NULL DEFAULT NULL,
	[TreatmentOutcome12months] [varchar](30) NULL DEFAULT NULL,
	[TreatmentOutcome24months] [varchar](30) NULL DEFAULT NULL,
	[TreatmentOutcome36months] [varchar](30) NULL DEFAULT NULL,
	[LastRecordedTreatmentOutcome] [varchar](30) NULL DEFAULT NULL,
	[DateOfDeath] [date] NULL DEFAULT NULL,
	[TreatmentEndDate] [date] NULL DEFAULT NULL,

	-- Culture & Resistance
	[NoSampleTaken] [varchar](30) NULL DEFAULT NULL,
	[CulturePositive] [varchar](30) NULL DEFAULT NULL,
	[Species] [varchar](50) NULL DEFAULT NULL,
	[EarliestSpecimenDate] [date] NULL DEFAULT NULL,
	[DrugResistanceProfile] [varchar](30) NULL DEFAULT NULL,
	[INH] [varchar](30) NULL DEFAULT NULL,
	[RIF] [varchar](30) NULL DEFAULT NULL,
	[EMB] [varchar](30) NULL DEFAULT NULL,
	[PZA] [varchar](30) NULL DEFAULT NULL,
	[MDR] [varchar](30) NULL DEFAULT NULL,
	[XDR] [varchar](30) NULL DEFAULT NULL
)
