SELECT
				CA_GEO_Jordstykker.MATRNR+', '+CA_GEO_Jordstykker.ELAVSNAVN AS Søg,
				RTRIM(JY67700V.VEJ_ADRESSENAVN) + ' ' + REPLACE(LTRIM(REPLACE(RTRIM(JY67700V.HUS_NUMMER), '0', ' ')), ' ', '0') AS Matrikeladresse,
				JY67300V.EKOMNR AS Kommunenummer,
				JY67300V.EEJDNR AS Ejendomsnummer,
				JY67300V.CELAV AS Ejerlavskode,
				JY67300V.EMATNR AS Matrikelnummer,
				JY67300V.ABGSTM AS Matrikelbogstav,
				JY67300V.EPCEL AS Parcelnummer,
				JY67300V.ELEJ AS Ejerlejlighedsnr,
				JY67300V.CARTK AS Artskode,
				QL61000V.TEKST AS Art,
				JY67300V.FMATAR AS Matriklens_areal,
				JY67300V.FVEJ AS Matriklens_vejareal,
				JY67300V.FDIVAR AS Diverse_areal_1,
				JY67300V.CDIVAR AS Arealkode_1,
				QL64000V.TEKST AS Arealkode_1_tekst,
				JY67300V.CARTYP AS Arealtype_1,
				QL66100V.TEKST AS Arealtype_1_tekst,
				JY67300V.DAPPRO AS Approbationsdato,
				JY67300V.CLELAV AS Landsejerlavskode,
				JY67300V.CZONE AS Zonekode,
				QL60400V.TEKST AS Zone,
				JY67300V.CNOTE AS Noteringskode,
				QL64300V.TEKST AS Notering,
				JY67300V.CUNOTE AS Udvidet_noteringskode,
				QL64400V.TEKST AS Udvidet_notering,
				JY67300V.CSKOV AS Skovnoteringskode,
				QL64500V.TEKST AS Skovnotering,
				JY67300V.CJRENTE AS Jordrentenoteringskode,
				QL64600V.TEKST AS Jordrentenotering,
				JY67300V.EVEJT AS Vejadgang,
				JY67300V.FDIVAR2 AS Diverse_areal_2,
				JY67300V.CDIVAR2 AS Arealkode_2,
				QL64000V.TEKST AS Arealkode_2_tekst,
				JY67300V.FDIVAR3 AS Diverse_areal_3,
				JY67300V.CDIVAR3 AS Arealkode_3,
				QL64000V.TEKST AS Arealkode_3_tekst,
				JY67300V.CKMSHAEN AS Kode_for_KMS_hændelse,
				QL66200V.TEKST AS KMS_hændelse,
				JY67300V.ETAGEMETER AS Etagemeter,
				JY67300V.EJERLEJLIGHEDSNR AS Ejerlejlighedsnummer,
				JY67300V.AMATBOG AS Matrikelnummer_bogstav,
				CA_GEO_Jordstykker.ESR_EJDNR,
				CA_GEO_Jordstykker.SFE_EJDNR,
				CA_GEO_Jordstykker.MI_PRINX,
				CA_GEO_Jordstykker.MI_STYLE,
				CA_GEO_Jordstykker.OBJECTID,
				CA_GEO_Jordstykker.Shape

FROM
				JN67100T INNER JOIN
				CA_GEO_Jordstykker ON JN67100T.KOMMUNENUMMER = CA_GEO_Jordstykker.KOMKODE LEFT OUTER JOIN
				JY67300V ON CA_GEO_Jordstykker.MATRNR = JY67300V.AMATBOG AND
				CA_GEO_Jordstykker.ELAVSKODE = JY67300V.CLELAV LEFT OUTER JOIN
				QL66200V ON JY67300V.CKMSHAEN = QL66200V.KODE LEFT OUTER JOIN
				QL64600V ON JY67300V.CJRENTE = QL64600V.KODE LEFT OUTER JOIN
				QL64500V ON JY67300V.CSKOV = QL64500V.KODE LEFT OUTER JOIN
				QL64400V ON JY67300V.CUNOTE = QL64400V.KODE LEFT OUTER JOIN
				QL64300V ON JY67300V.CNOTE = QL64300V.KODE LEFT OUTER JOIN
				QL60400V ON JY67300V.CZONE = QL60400V.KODE LEFT OUTER JOIN
				QL66100V ON JY67300V.CARTYP = QL66100V.KODE LEFT OUTER JOIN
				QL61000V ON JY67300V.CARTK = QL61000V.KODE LEFT OUTER JOIN
				QL64000V ON JY67300V.CDIVAR3 = QL64000V.KODE AND JY67300V.CDIVAR2 = QL64000V.KODE AND
				JY67300V.CDIVAR = QL64000V.KODE LEFT OUTER JOIN
         JY67700V ON CA_GEO_Jordstykker.ELAVSKODE = JY67700V.LANDSEJERLAVSKODE AND CA_GEO_Jordstykker.MATRNR = CONVERT(VARCHAR,
         JY67700V.MATRIKELNR) + CONVERT(VARCHAR, JY67700V.MATRIKELBOGSTAV)
WHERE
				(JY67300V.CARTK < 2) OR (JY67300V.CARTK IS NULL)
