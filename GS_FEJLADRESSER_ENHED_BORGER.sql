SELECT DISTINCT 
				GS_BORGER.Adresse, 
				GS_BORGER.SUPBYNAVN, 
				GS_BORGER.POSTNR, 
				GS_BORGER.POSTBYNAVN,
				GS_BBREnhed.Boligtypekode, 
				GS_BORGER.ADRESSELINK_ID, 
				GS_BORGER.ADRESSE_ID, 
				GS_BORGER.UDVadresseID
FROM 
				GS_BBREnhed RIGHT OUTER JOIN
				GS_BORGER ON GS_BBREnhed.UDVadresseID = GS_BORGER.UDVadresseID
WHERE (GS_BBREnhed.Boligtypekode < '1') OR
				(GS_BBREnhed.Boligtypekode IS NULL)