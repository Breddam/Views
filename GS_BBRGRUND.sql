SELECT DISTINCT
				CAST(RTRIM(JY72000V.VEJADRNAVN + ' ' + REPLACE(LTRIM(REPLACE(RTRIM(JY72000V.HUS_NR), '0', ' ')), ' ', '0')) AS VarChar(40)) AS Adresse,
				JY70000V.KOMMUNENUMMER,
				JY70000V.EJENDOMSNR AS Ejendomsnummer,
				JY70000V.GRU_AFLOEB_KODE AS Afløbsforholdskode,
				QL26200V.TEKST AS Afløbsforhold,
				JY70000V.GRU_AFLOEB_TILLAD AS Tilladelseskode_til_afløbsforhold,
				QL26300V.TEKST AS Tilladelse_til_afløbsforhold,
				JY70000V.GRU_VANDFORSY_KODE AS Vandforsyningskode,
				QL26600V.TEKST AS Vandforsyning,
				JY70000V.JOURNR AS Journalnummer,
				JY70000V.ESDH_REF AS ESDH_Reference,
				JY70000V.OPRET_TS AS Opret_timestamp,
				JY70000V.AENDR_TS AS Ændret_timestamp,
				JY70000V.OPHOERT_TS AS Ophørt_timestamp,
				JY70000V.GYLDIGHEDSDATO,
				CAST(JY70000V.KOMMUNENUMMER AS varchar(3)) + RIGHT('0000' + CONVERT(VARCHAR,JY70000V.VEJ_KODE), 4) + RTRIM(JY70000V.HUS_NUMMER) AS ADRESSELINK_ID, CAST(JY70000V.KOMMUNENUMMER AS varchar(3)) + CAST(JY70000V.VEJ_KODE AS varchar(4)) + JY70000V.HUS_NUMMER AS ADRESSE_ID,
				JY70000V.GRU_KOMFELT1 AS Kommunalt_felt_1,
				JY70000V.GRU_KOMFELT2 AS Kommunalt_felt_2,
				JY70000V.GRU_KOMFELT3 AS Kommunalt_felt_3,
				JY70000V.KOMFELT4 AS Kommunalt_felt_4,
				JY70000V.KOMFELT5 AS Kommunalt_felt_5,
				JY70000V.KOMFELT6 AS Kommunalt_felt_6,
				JY70000V.GRU_ID AS Grund_Id,
				JY70000V.ADG_ID AS Id_Adgangsadresse
FROM
				JY70000V LEFT OUTER JOIN
				JY72000V ON JY70000V.ADG_ID = JY72000V.ADG_ID LEFT OUTER JOIN
				QL26300V ON JY70000V.GRU_AFLOEB_TILLAD = QL26300V.KODE LEFT OUTER JOIN
				QL26600V ON JY70000V.GRU_VANDFORSY_KODE = QL26600V.KODE LEFT OUTER JOIN
				QL26200V ON JY70000V.GRU_AFLOEB_KODE = QL26200V.KODE