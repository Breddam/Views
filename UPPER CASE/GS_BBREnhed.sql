SELECT 
				CAST(RTRIM(JY72000V.VEJADRNAVN + ' ' + REPLACE(LTRIM(REPLACE(RTRIM(JY72000V.HUS_NR), '0', ' ')), ' ', '0') + ' ' + RTRIM(LTRIM(JY72100V.ETAGE)) + ' ' + RTRIM(LTRIM(JY72100V.SIDE_DOERNR))) AS VARCHAR(50)) AS ADRESSE, 
				JY70400V.EJENDOMSNR AS EJENDOMSNUMMER, 
				JY70400V.ENH_ANVKODE AS ANVENDELSESKODE, 
				CAST(QL23900V.TEKST AS VARCHAR(130)) AS ANVENDELSE, 
				JY70400V.BOLIGTYPE_KODE AS BOLIGTYPEKODE, 
				CAST(QL24200V.TEKST AS VARCHAR(87)) AS BOLIGTYPE, 
				JY70400V.BOLIG_KONDEM AS KONDEMNERET_BOLIGENHED, 
				JY70400V.IDENTOPRETDATO AS OPRETTELSESDATO_FOR_ENHEDSID, 
				JY70400V.ENH_ARL_SAML AS ENHEDENS_SAMLEDE_AREAL, 
				JY70400V.BEBO_ARL AS AREAL_TIL_BEBOELSE, 
				JY70400V.ENH_ERHV_ARL AS AREAL_TIL_ERHVERV, 
				JY70400V.KILDE_ARL_KODE AS KILDE_TIL_BYGNINGSAREALER, 
				JY70400V.VAERELSE_ANT AS ANTAL_VAERELSER, 
				JY70400V.TOILET_KODE AS TOILETFORHOLDSKODE, 
				CAST(QL24500V.TEKST AS VARCHAR(80)) AS TOILETFORHOLD, 
				JY70400V.BAD_KODE AS BADEFORHOLDSKODE, 
				CAST(QL24600V.TEKST AS VARCHAR(48)) AS BADEFORHOLD, 
				JY70400V.KOEKKEN_KODE AS KOEKKENFORHOLDSKODE, 
				CAST(QL24700V.TEKST AS VARCHAR(43)) AS KOEKKENFORHOLD, 
				JY70400V.ENERGI_KODE AS ENERGIFORSYNINGSKODE, 
				CAST(QL24800V.TEKST AS VARCHAR(29)) AS ENERGIFORSYNING, 
				JY70400V.ANDETAREAL AS ANDET_AREAL, 
				JY70400V.GODKTOMBOLIGGL AS GODKENDT_TOM_BOLIG_GL, 
				JY70400V.LOVLIG_ANVEND_KODE AS LOVLIG_ANVENDELSESKODE, 
				CAST(QL25000V.TEKST AS VARCHAR(69)) AS LOVLIG_ANVENDELSE, 
				JY70400V.TSDISPTIDS AS DATO_FOR_TIDSBEGR_DISP, 
				JY70400V.ENH_SAGSTYPE AS SAGSTYPE_ENHED, 
				JY70400V.ENH_DEL_IBRUG_DATO AS DATO_FOR_DELVIS_IBRUGTILLAD, 
				JY70400V.ENH_UDLEJ2_KODE AS UDLEJNINGSFORHOLDSKODE, 
				CAST(QL25200V.TEKST AS VARCHAR(18)) AS UDLEJNINGSFORHOLD,
				JY70400V.OFF_STOETTE_KODE AS OFFENTLIG_STOETTE, 
				CAST(QL25300V.TEKST AS VARCHAR(30)) AS OFFENTLIG_STOETTE_TEKST,
				JY70400V.INDFLYTDATO AS DATO_FOR_INDFLYTNING, 
				JY70400V.GODKTOMBOLIG AS GODKENDT_TOM_BOLIG, 
				CAST(QL25400V.TEKST AS VARCHAR(35)) AS GODKENDT_TOM_BOLIG_TEKST,
				JY70400V.VARMEINSTAL_KODE AS VARMEINSTALLATIONSKODE, 
				CAST(QL25500V.TEKST AS VARCHAR(77)) AS VARMEINSTALLATION, 
				JY70400V.OPVARMNING_KODE AS OPVARMNINGSMIDDELSKODE, 
				CAST(QL25600V.TEKST AS VARCHAR(46)) AS OPVARMNINGSMIDDEL,
				JY70400V.VARME_SUPPL_KODE AS SUPPLERENDE_VARMEKODE, 
				CAST(QL25700V.TEKST AS VARCHAR(43)) AS SUPPLERENDE_VARME, 
				JY70400V.ANDELADGARE AS ANDEL_I_FAELLES_ADGANGSAREAL, 
				JY70400V.AABENOVERDAEKAREAL AS SAMLET_AREAL_AABNE_OVERDAEK, 
				JY70400V.LUKOVERDAEKAREAL AS SAML_AREAL_LUKKEDE_OVERDAEK, 
				JY70400V.VAER_ERHV_ANT AS ANTAL_VAERELSER_TIL_ERHVERV, 
				JY70400V.ANTVANSKYL AS ANTAL_VANDSKYLLEDE_TOILETTER, 
				JY70400V.ANTBADEVAERELSER AS ANTAL_BADEVAERELSER, 
				JY70400V.OPRET_TS AS OPRET_TIMESTAMP, 
				JY70400V.AENDR_TS AS AENDRET_TIMESTAMP, 
				JY70400V.OPHOERT_TS AS OPHOERT_TIMESTAMP, 
				JY70400V.GYLDIGHEDSDATO AS GYLDIGHEDSDATO, 
				JY72100V.VEJ_KODE AS VEJKODE, 
				JY72100V.HUS_NUMMER AS HUSNUMMER, 
				JY72100V.ETAGE, 
				JY72100V.SIDE_DOERNR AS SIDE_DOERNR, 
				JY72000V.VEJ_NAVN AS VEJNAVN, 
				JY72000V.BYGNAVN AS LOKALITET, 
				JY72000V.SUPBYNAVN AS BYNAVN, 
				JY72000V.POSTNR AS POSTNUMMER, 
				JY72000V.POSTBYNAVN AS POSTDISTRIKT, 
				CAST(JY72100V.KOMMUNENUMMER AS VARCHAR(3)) + RIGHT('0000'+ CONVERT(VARCHAR,JY72100V.VEJ_KODE),4)+ RTRIM(JY72100V.HUS_NUMMER) AS ADRESSELINK_ID, 
				CAST(JY72100V.KOMMUNENUMMER AS VARCHAR(3)) + CAST(JY72100V.VEJ_KODE AS VARCHAR(4)) + RTRIM(JY72100V.HUS_NUMMER) AS ADRESSE_ID, 
				CAST(JY72100V.KOMMUNENUMMER AS VARCHAR(3)) + CAST(JY72100V.VEJ_KODE AS VARCHAR(4)) + RTRIM(LTRIM(JY72100V.HUS_NUMMER)) + RTRIM(LTRIM(JY72100V.ETAGE)) + RTRIM(LTRIM(JY72100V.SIDE_DOERNR)) AS UDVADRESSEID, 
				JY70400V.ENH_ID, 
				JY70400V.EAD_ID, 
				JY70400V.ETA_ID, 
				JY70400V.OPG_ID, 
				JY72100V.ADG_ID
FROM 
				JY70400V LEFT OUTER JOIN
				QL24200V ON JY70400V.BOLIGTYPE_KODE = QL24200V.KODE LEFT OUTER JOIN
				QL23900V ON JY70400V.ENH_ANVKODE = QL23900V.KODE LEFT OUTER JOIN
				QL25700V ON JY70400V.VARME_SUPPL_KODE = QL25700V.KODE LEFT OUTER JOIN
				QL25500V ON JY70400V.VARMEINSTAL_KODE = QL25500V.KODE LEFT OUTER JOIN
				QL25600V ON JY70400V.OPVARMNING_KODE = QL25600V.KODE LEFT OUTER JOIN
				QL25400V ON JY70400V.GODKTOMBOLIG = QL25400V.KODE LEFT OUTER JOIN
				QL25300V ON JY70400V.OFF_STOETTE_KODE = QL25300V.KODE LEFT OUTER JOIN
				QL25200V ON JY70400V.ENH_UDLEJ2_KODE = QL25200V.KODE LEFT OUTER JOIN
				QL25000V ON JY70400V.LOVLIG_ANVEND_KODE = QL25000V.KODE LEFT OUTER JOIN
				QL24800V ON JY70400V.ENERGI_KODE = QL24800V.KODE LEFT OUTER JOIN
				QL24700V ON JY70400V.KOEKKEN_KODE = QL24700V.KODE LEFT OUTER JOIN
				QL24600V ON JY70400V.BAD_KODE = QL24600V.KODE LEFT OUTER JOIN
				QL24500V ON JY70400V.TOILET_KODE = QL24500V.KODE LEFT OUTER JOIN
				JY72100V ON JY70400V.EAD_ID = JY72100V.EAD_ID LEFT OUTER JOIN
				JY72000V ON JY72100V.ADG_ID = JY72000V.ADG_ID