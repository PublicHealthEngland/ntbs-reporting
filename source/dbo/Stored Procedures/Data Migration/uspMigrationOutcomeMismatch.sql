﻿/*
	Note that we treat some outcomes as being equal even when they are actually different in NTBS and ETS.
	For more details see uspMigrationMisMatchedOutcomes.sql.
*/

CREATE PROCEDURE [dbo].[uspMigrationOutcomeMismatch]
	@MigrationRun INT = NULL
AS
	WITH EventOrder AS
	(SELECT 'DiagnosisMade' AS EventName, 1 AS 'OrderBy'
		UNION
		SELECT 'TreatmentStart' AS EventName, 2 AS 'OrderBy'
		UNION
		SELECT 'TransferOut' AS EventName, 3 AS 'OrderBy'
		UNION
		SELECT 'TransferIn' AS EventName, 4 AS 'OrderBy'
		UNION
		SELECT 'TransferRestart' AS Eventname, 5 AS 'OrderBy'
		UNION
		SELECT 'TreatmentOutcome' AS EventName, 6 AS 'OrderBy')

	SELECT DISTINCT
		mrr.MigrationNotificationId		AS 'MigrationNotificationId',
		mrr.LegacyETSId					AS 'EtsId',
		mrr.NTBSNotificationId			AS 'NtbsId',
		mrr.EtsTreatmentOutcome			AS 'EtsOutcome',
		mrr.NTBSTreatmentOutcome		AS 'NtbsOutcome',
		FIRST_VALUE(te.EventDate) OVER (PARTITION BY NotificationId ORDER BY EventDate DESC, OrderBy DESC)			AS 'FinalEventDate',
		FIRST_VALUE(te.TreatmentEventType) OVER (PARTITION BY NotificationId ORDER BY EventDate DESC, OrderBy DESC)	AS 'FinalEventType'
	FROM [dbo].[MigrationRunResults] mrr
		INNER JOIN [$(NTBS)].[dbo].[TreatmentEvent] te ON te.NotificationId = mrr.NTBSNotificationId
		LEFT OUTER JOIN EventOrder ev ON ev.EventName = te.TreatmentEventType
	WHERE EtsTreatmentOutcome != NTBSTreatmentOutcome
		AND mrr.EtsTreatmentOutcome != mrr.NTBSTreatmentOutcome
		AND NOT(mrr.EtsTreatmentOutcome = 'Not evaluated' AND mrr.NTBSTreatmentOutcome = 'No outcome recorded')
		AND NOT(mrr.EtsTreatmentOutcome = 'Unknown' AND mrr.NTBSTreatmentOutcome = 'Not evaluated')
		AND NOT(mrr.EtsTreatmentOutcome = 'Still on treatment' AND mrr.NTBSTreatmentOutcome = 'Not evaluated')
		AND mrr.MigrationRunId = @MigrationRun
