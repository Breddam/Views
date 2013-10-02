SELECT     
				JY64300V.PERSONNUMMER_RED AS CPR, 
				JY64300V.KOMMUNENUMMER, 
				JY64300V.FODSEL_DATO AS F�dselsdato, 
				JY64300V.KON AS K�n, 
				JY64300V.STILLING, 
				JY64300V.STILLING_DATO AS Stillingsdato, 
				CAST(RTRIM(REVERSE(REPLACE(SUBSTRING(REVERSE(JY64300V.ADRESSERINGSNAVN), 1, CHARINDEX(',', REVERSE(JY64300V.ADRESSERINGSNAVN))), ',', ''))) + ' ' + REPLACE(SUBSTRING(JY64300V.ADRESSERINGSNAVN, 1, CHARINDEX(',', JY64300V.ADRESSERINGSNAVN)), ',', '') AS VARCHAR(50)) AS Navn, 
				JY64300V.ADRNAVN_DATO AS Dato_for_adresseringsnavn, 
				CAST(RTRIM(JY72000V.VEJADRNAVN + ' ' + REPLACE(LTRIM(REPLACE(RTRIM(JY72000V.HUS_NR), '0', ' ')), ' ', '0') + ' ' + RTRIM(LTRIM(JY64300V.ETAGE)) + ' ' + RTRIM(LTRIM(JY64300V.SIDE_DORNR))) AS VARCHAR(50)) AS Adresse, 
				JY72000V.SUPBYNAVN, 
				JY72000V.POSTNR, 
				JY72000V.POSTBYNAVN, 
				JY72000V.BYGNAVN, 
				JY64300V.FOLKEKIRK_TILH_MRK AS Folkekirkemarkering, 
				JY64300V.FOLKEKIRK_MRK_DATO AS Dato_for_folkekirkemarkering, 
				CAST(QL58900V.TEKST AS VARCHAR(75)) AS Borgerstatus, 
				JY64300V.BORGERSTATUS_TS AS Tidsstempling_borgerstatus, 
				JY64300V.ANTAL_BORN AS Antal_b�rn, 
				JY64300V.ADR_TILFLYT_TS AS Tidsstempling_tilflytning, 
				JY64300V.VEJ_KODE AS Vejkode, 
				JY64300V.HUS_NUMMER AS Husnummer_bogstav, 
				JY64300V.ETAGE, 
				JY64300V.SIDE_DORNR AS Side, 
				JY64300V.BYGNING_NUMMER AS Bygningsnummer, 
				JY64300V.ADR_FRAFLYT_TS AS Tidsstempling_fraflytning, 
				JY64300V.CO_NAVN, 
				JY64300V.KOM_TILFLYTDATO AS Kommune_tilflytningsdato, 
				JY64300V.FRAFLYT_KOMMUNENR AS Fraflytningskommunenummer, 
				JY64300V.ADRESSEBESKYT_DATO AS Dato_for_adressebeskyttelse, 
				JY64300V.ADR_BESKYT_SLTDATO AS Dato_sletning_adressebeskyt, 
				JY64300V.CIVILSTAND_TS AS Tidsstempling_civilstand, 
				CAST(QL58800V.TEKST AS VARCHAR(75)) AS Civilstand, 
				JY64300V.CIVILST_OPHOR_TS AS Tidsstempel_civilstandsoph�r, 
				JY64300V.PERSONNR_AGTEFALLE AS Personnummer_�gtef�lle, 
				JY64300V.AGTEFALLE_FLAG AS Flag_for_�gtef�lle, 
				JY64300V.LAND_KODE AS Landekode, 
				CAST(QL59400V.TEKST AS VARCHAR(75)) AS Land, 
				JY64300V.STATSB_RET_TS AS Tidsstempel_�ndring_statsborg, 
				JY64300V.STATBORG_OPHOR_TS AS Tidsstempel_oph�r_statsborger, 
				JY64300V.PERSONNUMMER_MOR, 
				JY64300V.PERSONNUMMER_FAR, 
				JY64300V.MOR_DOK, 
				JY64300V.FAR_DOK, 
				JY64300V.BORGERSTATUS_UM AS Usik_tidstempel_borgerstatus, 
				CAST(JY64300V.KOMMUNENUMMER AS varchar(3)) + RIGHT('0000' + CONVERT(VARCHAR, JY64300V.VEJ_KODE), 4) + RTRIM(JY64300V.HUS_NUMMER) AS ADRESSELINK_ID, 
				CAST(JY64300V.KOMMUNENUMMER AS varchar(3)) + CAST(JY64300V.VEJ_KODE AS varchar(4)) + RTRIM(JY64300V.HUS_NUMMER) AS ADRESSE_ID, 
				CAST(JY64300V.KOMMUNENUMMER AS varchar(3)) + CAST(JY64300V.VEJ_KODE AS varchar(4)) + RTRIM(JY64300V.HUS_NUMMER) + LTRIM(JY64300V.ETAGE) + LTRIM(JY64300V.SIDE_DORNR) AS UDVadresseID, 
				JY64300V.PERSONNUMMER
FROM         
				JY64300V LEFT OUTER JOIN
				QL58900V ON JY64300V.BORGERSTATUS_KODE = QL58900V.KODE LEFT OUTER JOIN
				QL58800V ON JY64300V.CIVILSTAND = QL58800V.KODE LEFT OUTER JOIN
				QL59400V ON JY64300V.LAND_KODE = QL59400V.KODE LEFT OUTER JOIN
				JY72000V ON JY64300V.KOMMUNENUMMER = JY72000V.KOMMUNENUMMER AND JY64300V.VEJ_KODE = JY72000V.VEJKODE AND 
				JY64300V.HUS_NUMMER = JY72000V.HUS_NR