SELECT
				GS_BBRENHED.Adresse,
				JY74400V.FORSYNINGSART AS Forsyningsart,
				JY74400V.MAALEENHED AS Måleenhed,
				JY74400V.PERIODESTART AS Periodestart,
				JY74400V.PERIODESLUT AS Periodeslut,
				JY74400V.INDBERETTEDATO AS Indberetningsdato,
				JY74400V.FORBRUGMAENGDE AS Forbrugsmængde,
				JY74400V.AFREGNINGSSTATUS AS Afregningsstatus,
				JY74400V.KOMMUNENUMMER AS Kommunenummer,
				JY74400V.VEJ_KODE AS Vejkode,
				JY74400V.HUS_NUMMER AS Husnummer,
				JY74400V.ETAGE AS Etage,
				JY74400V.SIDE_DOERNR AS Side_dørnr,
				JY74400V.LEVERANCESTEDID AS LEVERANCESTEDIDID,
				JY74400V.ENTITETSTYPE AS Entitetstype,
				JY74400V.VALIDERINGS_TS,
				JY74400V.OPHOERT_TS,
				GS_BBRENHED.Anvendelseskode,
				GS_BBRENHED.Anvendelse,
				GS_BBRENHED.Boligtypekode,
				GS_BBRENHED.Boligtype,
				GS_BBRENHED.Enhedens_samlede_areal,
				GS_BBRENHED.Areal_til_beboelse AS Areal_til_beboelse,
				GS_BBRENHED.Areal_til_erhverv AS Areal_til_erhverv,
				GS_BBRENHED.Antal_værelser,
				GS_BBRENHED.Toiletforholdskode,
				GS_BBRENHED.Toiletforhold,
				GS_BBRENHED.Badeforholdskode,
				GS_BBRENHED.Badeforhold,
				GS_BBRENHED.Køkkenforholdskode,
				GS_BBRENHED.Køkkenforhold,
				GS_BBRENHED.Energiforsyningskode,
				GS_BBRENHED.Energiforsyning,
				GS_BBRENHED.Andet_areal,
				GS_BBRENHED.Varmeinstallationskode,
				GS_BBRENHED.Varmeinstallation,
				GS_BBRENHED.Opvarmningsmiddelskode,
				GS_BBRENHED.Opvarmningsmiddel,
				GS_BBRENHED.Supplerende_varmekode,
				GS_BBRENHED.Supplerende_varme,
				GS_BBRENHED.Antal_vandskyllede_toiletter,
				GS_BBRENHED.Antal_badeværelser,
				GS_BBRENHED.Bynavn,
				GS_BBRENHED.Postnummer,
				GS_BBRENHED.Postdistrikt,
				CASE
					WHEN GS_BBRENHED.ADRESSELINK_ID <> ''
					THEN GS_BBRENHED.ADRESSELINK_ID
					ELSE CAST(JY74400V.KOMMUNENUMMER AS VARCHAR(3)) + RIGHT('0000' + CONVERT(VARCHAR, JY74400V.VEJ_KODE), 4) + RTRIM(JY74400V.HUS_NUMMER)
				END AS ADRESSELINK_ID,
				CASE
					WHEN GS_BBRENHED.ADRESSE_ID <> ''
					THEN GS_BBRENHED.ADRESSE_ID
					ELSE CAST(JY74400V.KOMMUNENUMMER AS VARCHAR(3)) + CAST(JY74400V.VEJ_KODE AS VARCHAR(4)) + RTRIM(JY74400V.HUS_NUMMER)
				END AS ADRESSE_ID,
				CASE
					WHEN GS_BBRENHED.UDVadresseID <> ''
					THEN GS_BBRENHED.UDVadresseID
					ELSE CAST(JY74400V.KOMMUNENUMMER AS VARCHAR(3)) + CAST(JY74400V.VEJ_KODE AS VARCHAR(4)) + RTRIM(JY74400V.HUS_NUMMER) + LTRIM(JY74400V.ETAGE) + LTRIM(JY74400V.SIDE_DOERNR)
				END AS UDVadresseID,
				JY74400V.EBR_ID,
				JY74400V.CVRNR,
				JY74400V.PLACERINGMETODE,
				JY74400V.KOOROEST,
				JY74400V.KOORNORD,
				JY74400V.BBR_GUI_ID AS EnhedsID
FROM
				JY74400V LEFT OUTER JOIN
        GS_BBRENHED ON JY74400V.BBR_GUI_ID = GS_BBRENHED.ENH_ID

