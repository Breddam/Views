SELECT DISTINCT 
				CAST(JY64300V.KOMMUNENUMMER AS VARCHAR(3)) + RIGHT('0000' + CONVERT(VARCHAR, JY64300V.VEJ_KODE), 4) + RTRIM(JY64300V.HUS_NUMMER) AS ADRESSELINK_ID, 
				CAST(JY64300V.KOMMUNENUMMER AS VARCHAR(3)) + CAST(JY64300V.VEJ_KODE AS VARCHAR(4)) + RTRIM(JY64300V.HUS_NUMMER) AS ADRESSE_ID, 
				JY64300V.VEJ_KODE, 
				JY64300V.HUS_NUMMER, 
				RTRIM(JY63200V.AVEJ) + ' ' + REPLACE(LTRIM(REPLACE(RTRIM(JY64300V.HUS_NUMMER), '0', ' ')), ' ', '0') AS ADRESSE
FROM      
				JY64300V LEFT OUTER JOIN
				JY63200V ON JY64300V.VEJ_KODE = JY63200V.CVEJK LEFT OUTER JOIN
				JY72000V ON JY64300V.KOMMUNENUMMER = JY72000V.KOMMUNENUMMER AND JY64300V.VEJ_KODE = JY72000V.VEJKODE AND 
				JY64300V.HUS_NUMMER = JY72000V.HUS_NR
WHERE   
				(JY64300V.VEJ_KODE < 9000) AND 
				(CAST(RTRIM(JY72000V.VEJADRNAVN + ' ' + REPLACE(LTRIM(REPLACE(RTRIM(JY72000V.HUS_NR), '0', ' ')), ' ', '0')) AS VARCHAR(50)) IS NULL)