SELECT
				CAST(RTRIM(JY72000V.VEJADRNAVN + ' ' + REPLACE(LTRIM(REPLACE(RTRIM(JY72000V.HUS_NR), '0', ' ')), ' ', '0')) AS VarChar(40)) As Adresse,
				JY70100V.KOMMUNENUMMER AS Kommunenummer,
				JY70100V.EJENDOMSNR AS Ejendomsnummer,
				JY70100V.BYGNINGSNR AS Bygningsnummer,
				JY70100V.BYG_ANVKODE AS Anvendelseskode,
				CAST(QL20900V.TEKST AS VarChar(172)) AS Anvendelse,
				JY70100V.ANTLEJMKOEKKEN AS Antal_lejligheder_med_køkken,
				JY70100V.ANTLEJUKOEKKEN AS Antal_lejligheder_u_køkken,
				JY70100V.OPFOERELSE_AAR AS Opførelsesår,
				JY70100V.OMBYG_AAR AS Seneste_om_tilbygningsår,
				JY70100V.MIDL_OPRET_KODE AS Midlertidig_oprettelseskode,
				CAST(QL21200V.TEKST AS VarChar(50)) AS Midlertidig_oprettelse,
				JY70100V.UDLOEBDATOMIDL AS Udløbsdato_midlertidige,
				JY70100V.BYG_VANDFORSY_KODE AS Vandforsyningskode,
				CAST(QL21300V.TEKST AS VarChar(57)) AS Vandforsyning,
				JY70100V.BYG_AFLOEB_KODE AS Afløbsforholdskode,
				CAST(QL21400V.TEKST AS VarChar(70)) AS Afløbsforhold,
				JY70100V.BYG_AFLOEB_TILL AS Afløbsforholdstillad_kode,
				CAST(QL20800V.TEKST AS VarChar(45)) AS Afløbsforholdstilladelse,
				JY70100V.YDERVAEG_KODE AS Ydervægsmaterialekode,
				CAST(QL21500V.TEKST AS VarChar(58)) AS Ydervægsmateriale,
				JY70100V.TAG_KODE AS Tagdækningsmaterialekode,
				CAST(QL21600V.TEKST AS VarChar(58)) AS Tagdækningsmateriale,
				JY70100V.SUPPYDERVAEGMAT AS Suppl_ydervægsmateriale,
				JY70100V.SUPPTAGDAEKMAT AS Suppl_tagdækningsmateriale,
				JY70100V.ASBESTMATERIALE AS Asbestholdigt_materialekode,
				CAST(QL21700V.TEKST AS VarChar(47)) AS Asbestholdigt_materiale,
				JY70100V.KILDE_MATR_KODE AS Kilde_til_bygn_materialekode,
				CAST(QL21800V.TEKST AS VarChar(46)) AS Kilde_til_bygningsmaterialer,
				JY70100V.BYG_ARL_SAML AS Samlet_bygningsareal,
				JY70100V.BYG_BOLIG_ARL_SAML AS Samlet_boligareal,
				JY70100V.ERHV_ARL_SAML AS Samlet_erhversareal,
				JY70100V.BYG_BEBYG_ARL AS Bebygget_areal,
				JY70100V.GARAGE_INDB_ARL AS Areal_af_indbygget_garage,
				JY70100V.CARPORT_INDB_ARL AS Areal_af_indbygget_carport,
				JY70100V.UDHUS_INDB_ARL AS Areal_af_indbygget_udhus,
				JY70100V.UDESTUE_ARL AS Areal_af_indb_udestue_el_l,
				JY70100V.LUKOVERDAEKAREAL AS Samlet_areal_lukkede_overdæk,
				JY70100V.AFFALDSRUM_ARL AS Areal_affaldsrum_i_terrænniv,
				JY70100V.ANDET_AREAL AS Andet_areal,
				JY70100V.OVERDAEKAREAL AS Areal_af_overdækket_areal,
				JY70100V.AABENOVERDAEKAREAL AS Samlet_areal_åbne_overdæknin,
				JY70100V.ADGANGSAREAL AS Etagens_adgangsareal,
				JY70100V.CARPORT_PRINCIP AS Beregn_princip_carport_kode,
				CAST(QL21900V.TEKST AS VarChar(58)) AS Beregningsprincip_carport,
				JY70100V.KILDE_ARL_KODE AS Kilde_til_bygningsarealkode,
				CAST(QL24400V.TEKST AS VarChar(45)) AS Kilde_til_bygningsarealer,
				JY70100V.ETAGER_ANT AS Antal_etager,
				JY70100V.ETAGER_AFVIG_KODE AS Afvigende_etager_kode,
				CAST(QL22100V.TEKST AS VarChar(50)) AS Afvigende_etager,
				JY70100V.VARMEINSTAL_KODE AS Varmeinstallationskode,
				CAST(QL25500V.TEKST AS VarChar(77)) AS Varmeinstallation,
				JY70100V.OPVARMNING_KODE AS Opvarmningsmiddelkode,
				CAST(QL25600V.TEKST AS VarChar(50)) AS Opvarmningsmiddel,
				JY70100V.VARME_SUPPL_KODE AS Supplerende_varmekode,
				CAST(QL25700V.TEKST AS VarChar(50)) AS Supplerende_varme,
				JY70100V.SIKRINGSRUM_ANT AS Sikringsrumpladser,
				JY70100V.FREDNING_KODE AS Fredningsforholdskode,
				CAST(QL22400V.TEKST AS VarChar(79)) AS Fredningsforhold,
JY70100V.BEVARVAERDIG AS Bevaringsværdighed,
				JY70100V.BYGPKTNOEJAGTIGKLS AS Nøjagtighedsklassekode,
QL28600V.TEKST AS Nøjagtighedsklasse,
				JY70100V.FK_BPU_ID AS Bygningspunkt_Fk_Id,
				JY70100V.FOT_ID AS FOT_Ident,
				JY70100V.STORMRAADPAALAEG AS Pålæg_fra_Stormrådetkode,
				CAST(QL20600V.TEKST AS VarChar(44)) AS Pålæg_fra_Stormrådet,
				JY70100V.TSSTORMPALAG AS Dato_pålæg_fra_Stormrådet,
				JY70100V.BYGSKADEOMFATFORS AS Byggeskadeforsikringskode,
				CAST(QL23200V.TEKST AS VarChar(50)) AS Omfattet_byggesk_forsikring,
				JY70100V.BYGSKADEFORSIK AS Byggesk_forsik_selskabskode,
				CAST(QL20700V.TEKST AS VarChar(26)) AS Byggeskadeforsikringsselskab,
				JY70100V.TSBYGSKADE AS Dato_byggeskadeforsikring,
				JY70100V.BYG_KOMFELT1 AS Kommunalt_felt_1,
				JY70100V.BYG_KOMFELT2 AS Kommunalt_felt_2,
				JY70100V.BYG_KOMFELT3 AS Kommunalt_felt_3,
				JY70100V.KOMFELT4 AS Kommunalt_felt_4,
				JY70100V.KOMFELT5 AS Kommunalt_felt_5,
				JY70100V.KOMFELT6 AS Kommunalt_felt_6,
				JY70100V.JOURNR AS Journalnummer,
				JY70100V.ESDH_REF AS ESDH_Reference,
				JY70100V.OPRET_TS AS Opret_timestamp,
				JY70100V.AENDR_TS AS Ændret_timestamp,
				JY70100V.OPHOERT_TS AS Ophørt_timestamp,
				JY70100V.KOMKODE AS Kommunenr_KMS,
				JY70100V.LANDSEJERLAVKODE AS Landsejerlav,
				JY70100V.KOMEJERLAVKODE AS Kommunal_ejerlavskode,
				JY70100V.MATRNR AS KMS_Matrikelnummer,
				JY70100V.ESREJDNR AS Ejendomsnummer_ESR,
				JY70100V.MATR_ART_KODE AS Matrikel_artskode,
				JY70100V.DELNR AS Delnummer,
				JY70100V.OPDELINGSNR AS Opdelingsnummer,
				JY70100V.GYLDIGHEDSDATO AS Gyldighedsdato,
				JY70100V.MATRIKELNR AS Matrikelnummer,
				JY70100V.MATRIKELBOGSTAV AS Matrikelbogstav,
				JY70100V.BYG_ID AS Bygningsident,
				JY70100V.GRU_ID AS Grund_Id,
				JY70100V.ADG_ID AS Id_Adgangsadresse,
				JY72000V.VEJ_NAVN As Vejnavn,
				JY72000V.VEJKODE As Vejkode,
				JY72000V.HUS_NR As Husnummer,
				JY72000V.BYGNAVN As Lokalitet,
				JY72000V.SUPBYNAVN As Bynavn,
				JY72000V.POSTNR As Postnummer,
				JY72000V.POSTBYNAVN As Postdistrikt,
				CAST(JY72000V.KOMMUNENUMMER AS varchar(3)) + RIGHT('0000' + CONVERT(VARCHAR, JY72000V.VEJKODE), 4) + RTRIM(JY72000V.HUS_NR) AS ADRESSELINK_ID,
				CAST(JY72000V.KOMMUNENUMMER AS varchar(3)) + CAST(JY72000V.VEJKODE AS varchar(4)) + JY72000V.HUS_NR AS ADRESSE_ID
FROM
				JY70100V LEFT OUTER JOIN
				JY72000V ON JY70100V.ADG_ID = JY72000V.ADG_ID LEFT OUTER JOIN
				QL20600V ON JY70100V.STORMRAADPAALAEG = QL20600V.KODE LEFT OUTER JOIN
				QL20700V ON JY70100V.BYGSKADEFORSIK = QL20700V.KODE LEFT OUTER JOIN
				QL20800V ON JY70100V.BYG_AFLOEB_TILL = QL20800V.KODE LEFT OUTER JOIN
				QL20900V ON JY70100V.BYG_ANVKODE = QL20900V.KODE LEFT OUTER JOIN
				QL21200V ON JY70100V.MIDL_OPRET_KODE = QL21200V.KODE LEFT OUTER JOIN
				QL21300V ON JY70100V.BYG_VANDFORSY_KODE = QL21300V.KODE LEFT OUTER JOIN
				QL21400V ON JY70100V.BYG_AFLOEB_KODE = QL21400V.KODE LEFT OUTER JOIN
				QL21500V ON JY70100V.YDERVAEG_KODE = QL21500V.KODE LEFT OUTER JOIN
				QL21600V ON JY70100V.TAG_KODE = QL21600V.KODE LEFT OUTER JOIN
				QL21700V ON JY70100V.ASBESTMATERIALE = QL21700V.KODE LEFT OUTER JOIN
				QL21800V ON JY70100V.KILDE_MATR_KODE = QL21800V.KODE LEFT OUTER JOIN
				QL21900V ON JY70100V.CARPORT_PRINCIP = QL21900V.KODE LEFT OUTER JOIN
				QL22100V ON JY70100V.ETAGER_AFVIG_KODE = QL22100V.KODE LEFT OUTER JOIN
				QL22400V ON JY70100V.FREDNING_KODE = QL22400V.KODE LEFT OUTER JOIN
				QL23200V ON JY70100V.BYGSKADEOMFATFORS = QL23200V.KODE LEFT OUTER JOIN
				QL24400V ON JY70100V.KILDE_ARL_KODE = QL24400V.KODE LEFT OUTER JOIN
				QL25500V ON JY70100V.VARMEINSTAL_KODE = QL25500V.KODE LEFT OUTER JOIN
				QL25600V ON JY70100V.OPVARMNING_KODE = QL25600V.KODE LEFT OUTER JOIN
				QL25700V ON JY70100V.VARME_SUPPL_KODE = QL25700V.KODE LEFT OUTER JOIN
				dbo.QL28600V ON dbo.JY70100V.BYGPKTNOEJAGTIGKLS = dbo.QL28600V.KODE