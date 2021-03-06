SELECT
				MIN(DISTINCT GS_BORGER.Tidsstempling_tilflytning) AS Tidligste_indflytning,
				GS_BORGER.Adresse,
				GS_BORGER.Supplerende_bynavn,
        GS_BORGER.POSTNR,
        GS_BORGER.POSTBYNAVN,
        GS_BORGER.ADRESSELINK_ID,
        GS_BORGER.ADRESSE_ID,
        GS_BORGER.UDVadresseID
FROM
        GS_BBREnhed RIGHT OUTER JOIN
        GS_BORGER ON GS_BBREnhed.UDVadresseID = GS_BORGER.UDVadresseID
WHERE
				(GS_BBREnhed.Boligtypekode < '1' OR
				GS_BBREnhed.Boligtypekode IS NULL)
				AND (NOT (GS_BORGER.Adresse IS NULL))
GROUP BY
				GS_BORGER.Adresse,
				GS_BORGER.Supplerende_bynavn,
				GS_BORGER.POSTNR,
				GS_BORGER.POSTBYNAVN,
        GS_BORGER.ADRESSELINK_ID,
        GS_BORGER.ADRESSE_ID,
        GS_BORGER.UDVadresseID