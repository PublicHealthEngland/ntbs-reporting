﻿/***************************************************************************************************
Desc:	This populates ReusableNotification with every record in ReusableNotification_ETS whose 
		ETS ID is not already in ReusableNotification along with every record in NTBS         
**************************************************************************************************/

CREATE PROCEDURE [dbo].[uspGenerateReusableNotification]
AS

TRUNCATE TABLE ReusableNotification

INSERT INTO ReusableNotification ([NotificationId]
      ,[NtbsId]
      ,[EtsId]
      ,[SourceSystem]
      ,[LtbrId]
      ,[NotificationDate]
      ,[CaseManager]
      ,[Consultant]
      ,[HospitalId]
      ,[Hospital]
      ,[TBServiceCode]
      ,[Service]
      ,[NhsNumber]
      ,[Forename]
      ,[Surname]
      ,[DateOfBirth]
      ,[Age]
      ,[Sex]
      ,[UkBorn]
      ,[EthnicGroup]
      ,[BirthCountry]
      ,[UkEntryYear]
      ,[Postcode]
      ,[NoFixedAbode]
      ,[LocalAuthority]
      ,[LocalAuthorityCode]
      ,[ResidencePhecCode]
      ,[ResidencePhec]
      ,[TreatmentPhecCode]
      ,[TreatmentPhec]
      ,[SymptomOnsetDate]
      ,[PresentedDate]
      ,[OnsetToPresentationDays]
      ,[DiagnosisDate]
      ,[PresentationToDiagnosisDays]
      ,[StartOfTreatmentDate]
      ,[DiagnosisToTreatmentDays]
      ,[OnsetToTreatmentDays]
      ,[HivTestOffered]
      ,[SiteOfDisease]
      ,[AdultContactsIdentified]
      ,[ChildContactsIdentified]
      ,[TotalContactsIdentified]
      ,[AdultContactsAssessed]
      ,[ChildContactsAssessed]
      ,[TotalContactsAssessed]
      ,[AdultContactsActiveTB]
      ,[ChildContactsActiveTB]
      ,[TotalContactsActiveTB]
      ,[AdultContactsLTBI]
      ,[ChildContactsLTBI]
      ,[TotalContactsLTBI]
      ,[AdultContactsLTBITreat]
      ,[ChildContactsLTBITreat]
      ,[TotalContactsLTBITreat]
      ,[AdultContactsLTBITreatComplete]
      ,[ChildContactsLTBITreatComplete]
      ,[TotalContactsLTBITreatComplete]
      ,[PreviouslyDiagnosed]
      ,[YearsSinceDiagnosis]
      ,[PreviouslyTreated]
      ,[TreatmentInUk]
      ,[PreviousId]
      ,[BcgVaccinated]
      ,[AnySocialRiskFactor]
      ,[AlcoholMisuse]
      ,[DrugMisuse]
      ,[CurrentDrugMisuse]
      ,[DrugMisuseInLast5Years]
      ,[DrugMisuseMoreThan5YearsAgo]
      ,[Homeless]
      ,[CurrentlyHomeless]
      ,[HomelessInLast5Years]
      ,[HomelessMoreThan5YearsAgo]
      ,[Prison]
      ,[CurrentlyInPrisonOrInPrisonWhenFirstSeen]
      ,[InPrisonInLast5Years]
      ,[InPrisonMoreThan5YearsAgo]
      ,[TravelledOutsideUk]
      ,[ToHowManyCountries]
      ,[TravelCountry1]
      ,[MonthsTravelled1]
      ,[TravelCountry2]
      ,[MonthsTravelled2]
      ,[TravelCountry3]
      ,[MonthsTravelled3]
      ,[ReceivedVisitors]
      ,[FromHowManyCountries]
      ,[VisitorCountry1]
      ,[DaysVisitorsStayed1]
      ,[VisitorCountry2]
      ,[DaysVisitorsStayed2]
      ,[VisitorCountry3]
      ,[DaysVisitorsStayed3]
      ,[Diabetes]
      ,[HepatitisB]
      ,[HepatitisC]
      ,[ChronicLiverDisease]
      ,[ChronicRenalDisease]
      ,[ImmunoSuppression]
      ,[BiologicalTherapy]
      ,[Transplantation]
      ,[OtherImmunoSuppression]
      ,[CurrentSmoker]
      ,[PostMortemDiagnosis]
      ,[DidNotStartTreatment]
      ,[ShortCourse]
      ,[MdrTreatment]
      ,[MdrTreatmentDate]
      ,[TreatmentOutcome12months]
      ,[TreatmentOutcome24months]
      ,[TreatmentOutcome36months]
      ,[LastRecordedTreatmentOutcome]
      ,[DateOfDeath]
      ,[TreatmentEndDate]
      ,[NoSampleTaken]
      ,[CulturePositive]
      ,[Species]
      ,[EarliestSpecimenDate]
      ,[DrugResistanceProfile]
      ,[INH]
      ,[RIF]
      ,[EMB]
      ,[PZA]
      ,[AMINO]
      ,[QUIN]
      ,[MDR]
      ,[XDR]
      ,[DataRefreshedAt]) 
SELECT	[NotificationId]
      ,[NtbsId]
      ,[EtsId]
      ,[SourceSystem]
      ,[LtbrId]
      ,[NotificationDate]
      ,[CaseManager]
      ,[Consultant]
      ,[HospitalId]
      ,[Hospital]
      ,[TBServiceCode]
      ,[Service]
      ,[NhsNumber]
      ,[Forename]
      ,[Surname]
      ,[DateOfBirth]
      ,[Age]
      ,[Sex]
      ,[UkBorn]
      ,[EthnicGroup]
      ,[BirthCountry]
      ,[UkEntryYear]
      ,[Postcode]
      ,[NoFixedAbode]
      ,[LocalAuthority]
      ,[LocalAuthorityCode]
      ,[ResidencePhecCode]
      ,[ResidencePhec]
      ,[TreatmentPhecCode]
      ,[TreatmentPhec]
      ,[SymptomOnsetDate]
      ,[PresentedDate]
      ,[OnsetToPresentationDays]
      ,[DiagnosisDate]
      ,[PresentationToDiagnosisDays]
      ,[StartOfTreatmentDate]
      ,[DiagnosisToTreatmentDays]
      ,[OnsetToTreatmentDays]
      ,[HivTestOffered]
      ,[SiteOfDisease]
      ,[AdultContactsIdentified]
      ,[ChildContactsIdentified]
      ,[TotalContactsIdentified]
      ,[AdultContactsAssessed]
      ,[ChildContactsAssessed]
      ,[TotalContactsAssessed]
      ,[AdultContactsActiveTB]
      ,[ChildContactsActiveTB]
      ,[TotalContactsActiveTB]
      ,[AdultContactsLTBI]
      ,[ChildContactsLTBI]
      ,[TotalContactsLTBI]
      ,[AdultContactsLTBITreat]
      ,[ChildContactsLTBITreat]
      ,[TotalContactsLTBITreat]
      ,[AdultContactsLTBITreatComplete]
      ,[ChildContactsLTBITreatComplete]
      ,[TotalContactsLTBITreatComplete]
      ,[PreviouslyDiagnosed]
      ,[YearsSinceDiagnosis]
      ,[PreviouslyTreated]
      ,[TreatmentInUk]
      ,[PreviousId]
      ,[BcgVaccinated]
      ,[AnySocialRiskFactor]
      ,[AlcoholMisuse]
      ,[DrugMisuse]
      ,[CurrentDrugMisuse]
      ,[DrugMisuseInLast5Years]
      ,[DrugMisuseMoreThan5YearsAgo]
      ,[Homeless]
      ,[CurrentlyHomeless]
      ,[HomelessInLast5Years]
      ,[HomelessMoreThan5YearsAgo]
      ,[Prison]
      ,[CurrentlyInPrisonOrInPrisonWhenFirstSeen]
      ,[InPrisonInLast5Years]
      ,[InPrisonMoreThan5YearsAgo]
      ,[TravelledOutsideUk]
      ,[ToHowManyCountries]
      ,[TravelCountry1]
      ,[MonthsTravelled1]
      ,[TravelCountry2]
      ,[MonthsTravelled2]
      ,[TravelCountry3]
      ,[MonthsTravelled3]
      ,[ReceivedVisitors]
      ,[FromHowManyCountries]
      ,[VisitorCountry1]
      ,[DaysVisitorsStayed1]
      ,[VisitorCountry2]
      ,[DaysVisitorsStayed2]
      ,[VisitorCountry3]
      ,[DaysVisitorsStayed3]
      ,[Diabetes]
      ,[HepatitisB]
      ,[HepatitisC]
      ,[ChronicLiverDisease]
      ,[ChronicRenalDisease]
      ,[ImmunoSuppression]
      ,[BiologicalTherapy]
      ,[Transplantation]
      ,[OtherImmunoSuppression]
      ,[CurrentSmoker]
      ,[PostMortemDiagnosis]
      ,[DidNotStartTreatment]
      ,[ShortCourse]
      ,[MdrTreatment]
      ,[MdrTreatmentDate]
      ,[TreatmentOutcome12months]
      ,[TreatmentOutcome24months]
      ,[TreatmentOutcome36months]
      ,[LastRecordedTreatmentOutcome]
      ,[DateOfDeath]
      ,[TreatmentEndDate]
      ,[NoSampleTaken]
      ,[CulturePositive]
      ,[Species]
      ,[EarliestSpecimenDate]
      ,[DrugResistanceProfile]
      ,[INH]
      ,[RIF]
      ,[EMB]
      ,[PZA]
      ,[AMINO]
      ,[QUIN]
      ,[MDR]
      ,[XDR]
      ,[DataRefreshedAt]  FROM [ReusableNotification_ETS]