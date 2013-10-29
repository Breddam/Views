SELECT        RTRIM(dbo.JY72000V.VEJADRNAVN + ' ' + REPLACE(LTRIM(REPLACE(RTRIM(dbo.JY72000V.HUS_NR), '0', ' ')), ' ', '0')) AS ADRESSE, 
                         dbo.JY70100V.KOMMUNENUMMER, dbo.JY70100V.EJENDOMSNR AS EJENDOMSNUMMER, dbo.JY70100V.BYGNINGSNR AS BYGNINGSNUMMER, 
                         dbo.JY70100V.BYG_ANVKODE AS ANVENDELSESKODE, CAST(dbo.QL20900V.TEKST AS VARCHAR(172)) AS ANVENDELSE, 
                         dbo.JY70100V.ANTLEJMKOEKKEN AS ANTAL_LEJLIGHEDER_M_KOEKKEN, dbo.JY70100V.ANTLEJUKOEKKEN AS ANTAL_LEJLIGHEDER_U_KOEKKEN, 
                         dbo.JY70100V.OPFOERELSE_AAR AS OPFOERELSESAAR, dbo.JY70100V.OMBYG_AAR AS SENESTE_OM_TILBYGNINGSAAR, 
                         dbo.JY70100V.MIDL_OPRET_KODE AS MIDLERTIDIG_OPRETTELSESKODE, CAST(dbo.QL21200V.TEKST AS VARCHAR(50)) AS MIDLERTIDIG_OPRETTELSE, 
                         dbo.JY70100V.UDLOEBDATOMIDL AS UDLOEBSDATO_MIDL_OPRET, dbo.JY70100V.BYG_VANDFORSY_KODE AS VANDFORSYNINGSKODE, 
                         CAST(dbo.QL21300V.TEKST AS VARCHAR(57)) AS VANDFORSYNING, dbo.JY70100V.BYG_AFLOEB_KODE AS AFLOEBSFORHOLDSKODE, 
                         CAST(dbo.QL21400V.TEKST AS VARCHAR(70)) AS AFLOEBSFORHOLD, dbo.JY70100V.BYG_AFLOEB_TILL AS AFLOEBSFORHOLDSTILLAD_KODE, 
                         dbo.QL20800V.TEKST AS AFLOEBSFORHOLDSTILLADELSE, dbo.JY70100V.YDERVAEG_KODE AS YDERVAEGSMATERIALEKODE, 
                         CAST(dbo.QL21500V.TEKST AS VARCHAR(58)) AS YDERVAEGSMATERIALE, dbo.JY70100V.TAG_KODE AS TAGDAEKNINGSMATERIALEKODE, 
                         CAST(dbo.QL21600V.TEKST AS VARCHAR(58)) AS TAGDAEKNINGSMATERIALE, dbo.JY70100V.SUPPYDERVAEGMAT AS SUPPL_YDERVAEGSMATERIALE, 
                         dbo.JY70100V.SUPPTAGDAEKMAT AS SUPPL_TAGDAEKNINGSMATERIALE, dbo.JY70100V.ASBESTMATERIALE AS ASBESTHOLDIGT_MATERIALEKODE, 
                         CAST(dbo.QL21700V.TEKST AS VARCHAR(47)) AS ASBESTHOLDIGT_MATERIALE, dbo.JY70100V.KILDE_MATR_KODE AS KILDE_TIL_BYGN_MATERIALEKODE, 
                         CAST(dbo.QL21800V.TEKST AS VARCHAR(46)) AS KILDE_TIL_BYGNINGSMATERIALER, dbo.JY70100V.BYG_ARL_SAML AS SAMLET_BYGNINGSAREAL, 
                         dbo.JY70100V.BYG_BOLIG_ARL_SAML AS SAMLET_BOLIGAREAL, dbo.JY70100V.ERHV_ARL_SAML AS SAMLET_ERHVERSAREAL, 
                         dbo.JY70100V.BYG_BEBYG_ARL AS BEBYGGET_AREAL, dbo.JY70100V.GARAGE_INDB_ARL AS AREAL_AF_INDBYGGET_GARAGE, 
                         dbo.JY70100V.CARPORT_INDB_ARL AS AREAL_AF_INDBYGGET_CARPORT, dbo.JY70100V.UDHUS_INDB_ARL AS AREAL_AF_INDBYGGET_UDHUS, 
                         dbo.JY70100V.UDESTUE_ARL AS AREAL_AF_INDB_UDESTUE_EL_L, dbo.JY70100V.LUKOVERDAEKAREAL AS SAMLET_AREAL_LUKKEDE_OVERDAK, 
                         dbo.JY70100V.AFFALDSRUM_ARL AS AREAL_AFFALDSRUM_TERRAENNIV, dbo.JY70100V.ANDET_AREAL, 
                         dbo.JY70100V.OVERDAEKAREAL AS AREAL_AF_OVERDAEKKET_AREAL, dbo.JY70100V.AABENOVERDAEKAREAL AS SAMLET_AREAL_AABNE_OVERDAEKN, 
                         dbo.JY70100V.ADGANGSAREAL AS ETAGENS_ADGANGSAREAL, dbo.JY70100V.CARPORT_PRINCIP AS BEREGN_PRINCIP_CARPORT_KODE, 
                         CAST(dbo.QL21900V.TEKST AS VARCHAR(58)) AS BEREGNINGSPRINCIP_CARPORT, dbo.JY70100V.KILDE_ARL_KODE AS KILDE_TIL_BYGNINGSAREALKODE, 
                         CAST(dbo.QL24400V.TEKST AS VARCHAR(45)) AS KILDE_TIL_BYGNINGSAREALER, dbo.JY70100V.ETAGER_ANT AS ANTAL_ETAGER, 
                         dbo.JY70100V.ETAGER_AFVIG_KODE AS AFVIGENDE_ETAGER_KODE, CAST(dbo.QL22100V.TEKST AS VARCHAR(50)) AS AFVIGENDE_ETAGER, 
                         dbo.JY70100V.VARMEINSTAL_KODE AS VARMEINSTALLATIONSKODE, CAST(dbo.QL25500V.TEKST AS VARCHAR(77)) AS VARMEINSTALLATION, 
                         dbo.JY70100V.OPVARMNING_KODE AS OPVARMNINGSMIDDELKODE, CAST(dbo.QL25600V.TEKST AS VARCHAR(50)) AS OPVARMNINGSMIDDEL, 
                         dbo.JY70100V.VARME_SUPPL_KODE AS SUPPLERENDE_VARMEKODE, CAST(dbo.QL25700V.TEKST AS VARCHAR(50)) AS SUPPLERENDE_VARME, 
                         dbo.JY70100V.SIKRINGSRUM_ANT AS SIKRINGSRUMPLADSER, dbo.JY70100V.FREDNING_KODE AS FREDNINGSFORHOLDSKODE, 
                         CAST(dbo.QL22400V.TEKST AS VARCHAR(79)) AS FREDNINGSFORHOLD, RTRIM(dbo.JY70100V.BEVARVAERDIG) AS BEVARINGSVAERDIGHED, 
                         RTRIM(dbo.JY70100V.BYGPKTNOEJAGTIGKLS) AS NOEJAGTIGHEDSKLASSE, dbo.JY70100V.FK_BPU_ID AS BYGNINGSPUNKT_FK_ID, 
                         dbo.JY70100V.FOT_ID AS FOT_IDENT, dbo.JY70100V.STORMRAADPAALAEG AS PAALAEG_FRA_STORMRAADETKODE, CAST(dbo.QL20600V.TEKST AS VARCHAR(44)) 
                         AS PAALAEG_FRA_STORMRAADET, dbo.JY70100V.TSSTORMPALAG AS DATO_PAALAEG_FRA_STORMRAADET, 
                         RTRIM(dbo.JY70100V.BYGSKADEOMFATFORS) AS BYGGESKADEFORSIKRINGSKODE, CAST(dbo.QL23200V.TEKST AS VARCHAR(50)) 
                         AS OMFATTET_BYGGESK_FORSIKRING, dbo.JY70100V.BYGSKADEFORSIK AS BYGGESK_FORSIK_SELSKABSKODE, CAST(dbo.QL20700V.TEKST AS VARCHAR(26)) 
                         AS BYGGESKADEFORSIKRINGSSELSKAB, dbo.JY70100V.TSBYGSKADE AS DATO_BYGGESKADEFORSIKRING, 
                         RTRIM(dbo.JY70100V.BYG_KOMFELT1) AS KOMMUNALT_FELT_1, RTRIM(dbo.JY70100V.BYG_KOMFELT2) AS KOMMUNALT_FELT_2, 
                         RTRIM(dbo.JY70100V.BYG_KOMFELT3) AS KOMMUNALT_FELT_3, dbo.JY70100V.KOMFELT4 AS KOMMUNALT_FELT_4, dbo.JY70100V.KOMFELT5 AS KOMMUNALT_FELT_5,
                          dbo.JY70100V.KOMFELT6 AS KOMMUNALT_FELT_6, RTRIM(dbo.JY70100V.JOURNR) AS JOURNALNUMMER, RTRIM(dbo.JY70100V.ESDH_REF) AS ESDH_REFERENCE, 
                         dbo.JY70100V.OPRET_TS AS OPRET_TIMESTAMP, dbo.JY70100V.AENDR_TS AS AENDRET_TIMESTAMP, dbo.JY70100V.OPHOERT_TS AS OPHOERT_TIMESTAMP, 
                         dbo.JY70100V.KOMKODE AS KOMMUNENR_KMS, dbo.JY70100V.EREF AS FELTREFERENCE, dbo.JY70100V.LANDSEJERLAVKODE AS LANDSEJERLAV, 
                         dbo.JY70100V.KOMEJERLAVKODE AS KOMMUNAL_EJERLAVSKODE, dbo.JY70100V.MATRNR AS KMS_MATRIKELNUMMER, 
                         dbo.JY70100V.ESREJDNR AS EJENDOMSNUMMER_ESR, dbo.JY70100V.MATR_ART_KODE AS MATRIKEL_ARTSKODE, RTRIM(dbo.JY70100V.DELNR) AS DELNUMMER, 
                         RTRIM(dbo.JY70100V.OPDELINGSNR) AS OPDELINGSNUMMER, dbo.JY70100V.GYLDIGHEDSDATO, dbo.JY70100V.MATRIKELNR AS MATRIKELNUMMER, 
                         RTRIM(dbo.JY70100V.MATRIKELBOGSTAV), dbo.JY70100V.BYG_ID AS BYGNINGSIDENT, dbo.JY70100V.GRU_ID AS GRUND_ID, 
                         dbo.JY70100V.ADG_ID AS ID_ADGANGSADRESSE, dbo.JY72000V.VEJ_NAVN AS VEJNAVN, dbo.JY72000V.VEJKODE, RTRIM(dbo.JY72000V.HUS_NR) AS HUSNUMMER, 
                         RTRIM(dbo.JY72000V.BYGNAVN) AS LOKALITET, RTRIM(dbo.JY72000V.SUPBYNAVN) AS BYNAVN, dbo.JY72000V.POSTNR AS POSTNUMMER, 
                         dbo.JY72000V.POSTBYNAVN AS POSTDISTRIKT, CAST(dbo.JY72000V.KOMMUNENUMMER AS VARCHAR(3)) + RTRIM(CAST(dbo.JY72000V.VEJKODE AS VARCHAR(4)) 
                         + dbo.JY72000V.HUS_NR) AS ADRESSE_ID, CAST(dbo.JY72000V.KOMMUNENUMMER AS VARCHAR(3)) + RIGHT('0000' + CONVERT(VARCHAR, 
                         dbo.JY72000V.VEJKODE), 4) + RTRIM(dbo.JY72000V.HUS_NR) AS ADRESSELINK_ID
FROM            dbo.JY70100V LEFT OUTER JOIN
                         dbo.JY72000V ON dbo.JY70100V.ADG_ID = dbo.JY72000V.ADG_ID LEFT OUTER JOIN
                         dbo.QL20600V ON dbo.JY70100V.STORMRAADPAALAEG = dbo.QL20600V.KODE LEFT OUTER JOIN
                         dbo.QL20700V ON dbo.JY70100V.BYGSKADEFORSIK = dbo.QL20700V.KODE LEFT OUTER JOIN
                         dbo.QL20800V ON dbo.JY70100V.BYG_AFLOEB_TILL = dbo.QL20800V.KODE LEFT OUTER JOIN
                         dbo.QL20900V ON dbo.JY70100V.BYG_ANVKODE = dbo.QL20900V.KODE LEFT OUTER JOIN
                         dbo.QL21200V ON dbo.JY70100V.MIDL_OPRET_KODE = dbo.QL21200V.KODE LEFT OUTER JOIN
                         dbo.QL21300V ON dbo.JY70100V.BYG_VANDFORSY_KODE = dbo.QL21300V.KODE LEFT OUTER JOIN
                         dbo.QL21400V ON dbo.JY70100V.BYG_AFLOEB_KODE = dbo.QL21400V.KODE LEFT OUTER JOIN
                         dbo.QL21500V ON dbo.JY70100V.YDERVAEG_KODE = dbo.QL21500V.KODE LEFT OUTER JOIN
                         dbo.QL21600V ON dbo.JY70100V.TAG_KODE = dbo.QL21600V.KODE LEFT OUTER JOIN
                         dbo.QL21700V ON dbo.JY70100V.ASBESTMATERIALE = dbo.QL21700V.KODE LEFT OUTER JOIN
                         dbo.QL21800V ON dbo.JY70100V.KILDE_MATR_KODE = dbo.QL21800V.KODE LEFT OUTER JOIN
                         dbo.QL21900V ON dbo.JY70100V.CARPORT_PRINCIP = dbo.QL21900V.KODE LEFT OUTER JOIN
                         dbo.QL22100V ON dbo.JY70100V.ETAGER_AFVIG_KODE = dbo.QL22100V.KODE LEFT OUTER JOIN
                         dbo.QL22400V ON dbo.JY70100V.FREDNING_KODE = dbo.QL22400V.KODE LEFT OUTER JOIN
                         dbo.QL23200V ON dbo.JY70100V.BYGSKADEOMFATFORS = dbo.QL23200V.KODE LEFT OUTER JOIN
                         dbo.QL24400V ON dbo.JY70100V.KILDE_ARL_KODE = dbo.QL24400V.KODE LEFT OUTER JOIN
                         dbo.QL25500V ON dbo.JY70100V.VARMEINSTAL_KODE = dbo.QL25500V.KODE LEFT OUTER JOIN
                         dbo.QL25600V ON dbo.JY70100V.OPVARMNING_KODE = dbo.QL25600V.KODE LEFT OUTER JOIN
                         dbo.QL25700V ON dbo.JY70100V.VARME_SUPPL_KODE = dbo.QL25700V.KODE