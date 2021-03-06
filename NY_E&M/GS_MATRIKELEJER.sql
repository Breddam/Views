SELECT
        GS_EJER.Kommunenummer,
				GS_EJER.Ejendomsnummer,
				GS_EJER.Matrikelnummer,
				GS_EJER.Ejendomsbeliggenhed,
				GS_EJER.Matrikeladresse,
				GS_EJER.Ejers_navn,
				GS_EJER.Ejers_CO_navn,
				GS_EJER.Ejers_adresse,
				GS_EJER.Ejers_udvidede_adresse,
				GS_EJER.Postdistrikt,
				GS_EJER.Benyttelseskode,
				GS_EJER.Benyttelse,
				GS_EJER.Ejers_statuskode,
				GS_EJER.Ejerstatus,
				GS_EJER.Pensionistkode,
				GS_EJER.Pensioniststatus,
				GS_EJER.Lejeværdikode,
				GS_EJER.Lejeværdi,
				GS_EJER.Kode_for_adressebeskyttelse,
				GS_EJER.Adressebeskyttelse,
				GS_EJER.Slutseddeldato,
				GS_EJER.Skødedato,
				GS_EJER.Overtagelsesdato,
				GS_EJER.Overdragelsesmåde,
				GS_EJER.Købesum,
				GS_EJER.Køberandel,
				GS_EJER.Ejerandel,
				GS_EJER.Ejer_CPR_CVR,
				GS_EJER.Vejkode,
				GS_EJER.Husnummer_bogstav,
				GS_EJER.Ejerlavskode,
				GS_EJER.MATNR,
				GS_EJER.LANDSEJERLAVSTEKST,
				GS_EJER.Parcelnummer,
				GS_EJER.Artskode,
				GS_EJER.Matrikulært_areal,
				GS_EJER.Matrikulært_vejareal,
				GS_EJER.Ejendomsareal,
				GS_EJER.Heraf_vejareal,
				GS_EJER.Vurderet_areal,
				GS_EJER.Heraf_vurderet_vejareal,
				GS_EJER.Ejerforholdskode,
				GS_EJER.Ejerforhold,
				GS_EJER.Antal_ejere,
				GS_EJER.Antal_lejligheder,
				GS_EJER.Moderejendomsnummer,
				GS_EJER.Adgang_til_offentlig_vej,
				GS_EJER.Admin_adressebeskyttelse,
				GS_EJER.Administrators_navn,
				GS_EJER.Administrators_CO_navn,
				GS_EJER.Administrators_adresse,
				GS_EJER.Administrators_udv_adresse,
				GS_EJER.Administrators_postdistrikt,
				GS_EJER.Administratornummer,
				GS_EJER.Administrators_CPR_CVR,
				GS_EJER.Administratorkode,
				GS_EJER.Administratorstatus,
				GS_EJER.EJERLEJLIGHEDSNR,
				GS_EJER.ADRESSELINK_ID,
				GS_EJER.ADRESSE_ID,
				GS_EJER.UDVADRESSEID,
				GS_EJER.MatrikelID,
				CAST(CONVERT(varchar(15),GS_EJER.Ejer_CPR_CVR) + CONVERT(varchar(10), GS_EJER.Ejendomsnummer) AS float) AS MI_PRINX,
				CAST('Pen (1,2,0) Brush (1,0,16777215)' AS varchar(254)) AS MI_STYLE,
				GS_GEOMATRIKEL.Shape
FROM
				GS_GEOMATRIKEL INNER JOIN
				GS_EJER ON GS_GEOMATRIKEL.MatrikelID = GS_EJER.MatrikelID
WHERE
				(GS_GEOMATRIKEL.Artskode < 2)