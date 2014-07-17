SELECT
				JY64900V.EKOMNR AS Kommunenummer,
				JY64900V.EEJDNR AS Ejendomsnummer,
				JY64800V.ABELIG AS Ejendomsbeliggenhed,
				CAST(RTRIM(RTRIM(JY67700V.VEJ_ADRESSENAVN) + ' ' + REPLACE(LTRIM(REPLACE(RTRIM(JY67700V.HUS_NUMMER), '0', ' ')), ' ', '0')) AS VARCHAR(50)) AS Matrikeladresse,
				JY64900V.ANAVN AS Ejers_navn,
				JY64900V.ACONAVN AS Ejers_CO_navn,
				JY64900V.AADRESS AS Ejers_adresse,
				JY64900V.AUDVADR AS Ejers_udvidede_adresse,
				JY64900V.APOST AS Postdistrikt,
				JY64800V.CBENYT AS Benyttelseskode,
				CAST(QL61500V.TEKST AS VARCHAR(70)) AS Benyttelse,
				JY64900V.CMSTAT AS Ejers_statuskode,
				CAST(QL63200V.TEKST AS VARCHAR(75)) AS Ejerstatus,
				JY64900V.CPENS AS Pensionistkode,
				CAST(QL63400V.TEKST AS VARCHAR(75)) AS Pensioniststatus,
				JY64900V.CLEJE AS Lejev�rdikode,
				CAST(QL63500V.TEKST AS VARCHAR(75)) AS Lejev�rdi,
				JY64900V.CBSKADR AS Kode_for_adressebeskyttelse,
				CAST(QL63600V.TEKST AS VARCHAR(75)) AS Adressebeskyttelse,
				JY64900V.DSLUTS AS Slutseddeldato,
				JY64900V.DSKOED AS Sk�dedato,
				JY64900V.DOVTG AS Overtagelsesdato,
				CAST(QL63700V.TEKST AS VARCHAR(75)) AS Overdragelsesm�de,
				JY64900V.BKOEBS AS K�besum,
				JY64900V.DCPRCIR AS Ejer_CPR_CVR,
				JY64800V.VEJ_KODE AS Vejkode,
				JY64800V.HUS_NUMMER AS Husnummer_bogstav,
				JY64800V.CELAV AS Ejerlavskode,
				RTRIM(CONVERT(VARCHAR,
				JY64800V.EMATNR) + JY64800V.ABGSTM) + ', ' + JY67700V.LANDSEJERLAVSTEKST AS Matrikelnummer,
				CAST(JY64800V.EMATNR AS VARCHAR(3)) + JY64800V.ABGSTM AS MATNR,
				JY67700V.LANDSEJERLAVSTEKST,
				JY64800V.EPCEL AS Parcelnummer,
				CAST(QL61000V.TEKST AS VARCHAR(75)) AS Artskode,
				JY64800V.FTOTAR AS Matrikul�rt_areal,
				JY64800V.FTOTVEJ AS Heraf_vejareal,
				JY64800V.FARVUR AS Vurderet_areal,
				JY64800V.FVEJVUR AS Heraf_vurderet_vejareal,
				JY64800V.CEJFORH AS Ejerforholdskode,
				CAST(QL50000V.TEKST AS VARCHAR(75)) AS Ejerforhold,
				JY64800V.FEJER AS Antal_ejere,
				JY64800V.FLEJL AS Antal_lejligheder,
				JY64800V.EMODER AS Moderejendomsnummer,
				JY64800V.COFVEJ AS Adgang_til_offentlig_vej,
				JY64800V.CBSKADRA AS Admin_adressebeskyttelse,
				JY64800V.AANAVN AS Administrators_navn,
				JY64800V.AACONAVN AS Administrators_CO_navn,
				JY64800V.AAADRESS AS Administrators_adresse,
				JY64800V.AAUDVADR AS Administrators_udv_adresse,
				JY64800V.AAPOST AS Administrators_postdistrikt,
				JY64800V.EADMNR AS Administratornummer,
				JY64800V.DCPRADM AS Administrators_CPR_CVR,
				JY64800V.CADM AS Administratorkode,
				QL65000V.TEKST AS Administratorstatus,
				JY64800V.EJERLEJLIGHEDSNR,
				CAST(JY64900V.EKOMNR AS varchar(3)) + RIGHT('0000' + CONVERT(VARCHAR, JY64800V.VEJ_KODE), 4) + RTRIM(JY64800V.HUS_NUMMER) AS ADRESSELINK_ID,
				CAST(CAST(JY64900V.EKOMNR AS Varchar(3)) + CAST(JY64800V.VEJ_KODE AS Varchar(4)) + CAST(JY64800V.HUS_NUMMER AS Varchar(4)) AS Varchar(14)) AS ADRESSE_ID,
				CAST(CAST(JY64900V.EKOMNR AS Varchar(3)) + CAST(JY64800V.VEJ_KODE AS Varchar(4)) + CAST(JY64800V.HUS_NUMMER AS Varchar(4)) + LTRIM(RTRIM(REPLACE(JY64800V.ELEJNR, ' ', ''))) AS Varchar(14)) AS UDVADRESSEID,
				CAST(JY67700V.LANDSEJERLAVSKODE AS VARCHAR(15)) + '' + CAST(JY64800V.EMATNR AS VARCHAR(10)) + JY64800V.ABGSTM AS MatrikelID
FROM
				QL61000V RIGHT OUTER JOIN
				QL65000V RIGHT OUTER JOIN
				JY64800V ON QL65000V.KODE = JY64800V.CADM ON QL61000V.KODE = JY64800V.CARTK LEFT OUTER JOIN
				QL61500V ON JY64800V.CBENYT = QL61500V.KODE LEFT OUTER JOIN
				JY67700V ON JY64800V.ABGSTM = JY67700V.MATRIKELBOGSTAV AND JY64800V.EMATNR = JY67700V.MATRIKELNR AND JY64800V.CELAV = JY67700V.EJERLAVSKODE RIGHT OUTER JOIN
				QL63700V RIGHT OUTER JOIN
				JY64900V ON QL63700V.KODE = JY64900V.COVMD LEFT OUTER JOIN
				QL63400V ON JY64900V.CPENS = QL63400V.KODE LEFT OUTER JOIN
				QL63200V ON JY64900V.CMSTAT = QL63200V.KODE LEFT OUTER JOIN
				QL63500V ON JY64900V.CLEJE = QL63500V.KODE LEFT OUTER JOIN
				QL50000V ON JY64900V.CEJFORH = QL50000V.KODE ON JY64800V.EEJDNR = JY64900V.EEJDNR LEFT OUTER JOIN
				QL63600V ON JY64900V.CBSKADR = QL63600V.KODE
WHERE
				JY64800V.CARTK > 1