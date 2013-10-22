SELECT DISTINCT 
				GS_BORGER.ADRESSE, 
				GS_BORGER.SUPBYNAVN, 
				GS_BORGER.POSTNR, 
				GS_BORGER.POSTBYNAVN,
				GS_BBRENHED.BOLIGTYPEKODE, 
				GS_BORGER.ADRESSELINK_ID, 
				GS_BORGER.ADRESSE_ID, 
				GS_BORGER.UDVADRESSEID
FROM 
				GS_BBRENHED RIGHT OUTER JOIN
				GS_BORGER ON GS_BBRENHED.UDVADRESSEID = GS_BORGER.UDVADRESSEID
WHERE (GS_BBRENHED.BOLIGTYPEKODE < '1') OR
				(GS_BBRENHED.BOLIGTYPEKODE IS NULL)