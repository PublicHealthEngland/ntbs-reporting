﻿CREATE TABLE [dbo].[ForestExtract] (
	[CaseId] [bigint] NULL,
	[EtsId] [nvarchar](50) NULL,
	[LtbrId] [nvarchar](50) NULL,
	[Casereportdate] [datetime2] NULL,
	[Forename] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[NHSNumber] [nvarchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
	[Address] [nvarchar](255) NULL,
	[Postcode] [nvarchar](255) NULL,
	[Sex] [nvarchar](10) NULL,
	[Hospital] [nvarchar](255) NULL,
	[HospitalTBService] [nvarchar](200) NULL,
	[ResidenceLocalAuthority] [nvarchar](255) NULL,
	[ResidenceHPU] [nvarchar](255) NULL,
	[Occupation] [nvarchar](255) NULL,
	[OccupationCategory] [nvarchar](255) NULL,
	[EthnicGroup] [nvarchar](255) NULL,
	[UKBorn] [nvarchar](10) NULL,
	[BirthCountry] [nvarchar](255) NULL,
	[UKEntryYear] [int] NULL,
	[Symptomatic] [nvarchar](10) NULL,
	[SymptomOnset] [datetime2] NULL,
	[FirstPresentationDate] [datetime2] NULL,
	[HealthcareSetting] [nvarchar](30) NULL,
	[TBServicePresentationDate] [datetime2] NULL,
	[DateOfDiagnosis] [datetime2] NULL,
	[StartOfTreatment] [datetime2] NULL,
	[ChestXRayResult] [nvarchar] (100) NULL,
	[SmearSample] [nvarchar](255) NULL,
	[SmearSampleResult] [nvarchar](50) NULL,
	[DrugUse] [nvarchar](255) NULL,
	[CurrentDrugUse] [nvarchar](50) NULL,
	[DrugUseLast5Years] [nvarchar](10) NULL,
	[DrugUseMoreThan5YearsAgo] [nvarchar](10) NULL,
	[Homeless] [nvarchar](50) NULL,
	[CurrentlyHomeless] [nvarchar](10) NULL,
	[HomelessLast5Years] [nvarchar](10) NULL,
	[HomelessMoreThan5YearsAgo] [nvarchar](10) NULL,
	[Prison] [nvarchar](50) NULL,
	[CurrentlyInPrisonOrWhenFirstSeen] [nvarchar](50) NULL,
	[PrisonLast5Years] [nvarchar](10) NULL,
	[PrisonMoreThan5YearsAgo] [nvarchar](10) NULL,
	[Smoking] [nvarchar](255) NULL,
	[CurrentSmoking] [nvarchar](50) NULL,
	[SmokingLast5Years] [nvarchar](10) NULL,
	[SmokingMoreThan5YearsAgo] [nvarchar](10) NULL,
	[AlcoholUse] [nvarchar](50) NULL,
	[MentalHealth] [nvarchar](50) NULL,
	[AsylumSeeker] [nvarchar](50) NULL,
	[ImmigrationDetainee] [nvarchar](50) NULL,
	[NoFixedAbode] [nvarchar](10) NULL,
	[ExtractDate] [date] NULL,
	[ReferenceLaboratoryNumber] [nvarchar](50) NULL,
	[VntrProfile] [nvarchar](max) NULL,
	[ClusterNumber] [nvarchar](1000) NULL,
	[Localpatientid] [nvarchar](255) NULL,
	[Age] [tinyint] NULL,
	[DiseaseSites] [nvarchar](2000) NULL,
	[TreatmentRegion] [nvarchar](255) NULL,
	[OwnerUsername] [nvarchar](64) NULL,
	[SpecimenDate] [datetime] NULL,
	[CaseManager] [nvarchar](255) NULL,
	[PatientsConsultant] [nvarchar](255) NULL
)
