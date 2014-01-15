SELECT
				JY62200V.EKOMNR AS Kommunenummer,
				JY62200V.EEJDNR AS Ejendomsnummer,
				JY62200V.EBYGNR AS Bygningsnummer,
				JY62200V.LBNR_BYG_CR AS Løbenummer_bygning,
				JY62200V.CVEJK AS Vejkode,
				JY62200V.HUS_NUMMER AS Husnummer_bogstav,
				JY62200V.ETAGE AS Etage,
				JY62200V.SIDE_DORNR AS Side_dørnummer
				JY62200V.LBNR_ENH_CR AS Løbenummer_enhed,
				JY62200V.CHVEJKF AS Henvisnings_vejkode,
				JY62200V.AHHUSNF AS Henvisnings_husnummer,
				JY62200V.AHETAG AS Henvisnings_etage,
				JY62200V.AHSIDE AS Henvisnings_side,
				JY62200V.CEANV AS Anvendelseskode,
				JY62200V.CTYPE AS Boligtypekode,
				JY62200V.CKONDE3 AS Kondemneret_bolig,
				JY62200V.DIDENT_DATO AS Enhedens_oprettelsesdato,
				JY62200V.FEAREA AS Samlet_areal,
				JY62200V.FBEBO AS Areal_til_beboelse,
				JY62200V.FERH AS Areal_til_erhverv,
				JY62200V.FEVAR AS Antal_værelser,
				JY62200V.FERVAR AS Antal_værelser_til_erhverv,
				JY62200V.CSKILV AS Flytbare_skillevægge,
				JY62200V.CKILD4 AS Kilde_til_enhedsareal,
				JY62200V.FTOIL AS Kode_for_toiletforhold,
				JY62200V.FBADE AS Kode_for_badeforhold,
				JY62200V.CKOK AS Kode_for_køkkenforhold,
				JY62200V.CENERG AS Energiforsyning,
				JY62200V.CUDLE1 AS Udlejningsforhold,
				JY62200V.CUDLE2 AS Udlejningsforhold_CPR,
				JY62200V.BLEJE AS Årlig_husleje,
				JY62200V.DOPDA3_DATO AS Sidst_opdateret,
				JY62200V.CADR AS Adressekode_fra_CPR,
				JY62200V.CHELBEBO AS Kode_for_lovlig_anvendelse,
				JY62200V.DARDISP AS Årstal_for_dispensation,
				JY62200V.CSTOTTE3 AS Offentlig_støtte
				JY62200V.CKOMKVAL3 AS Kommunal_kvalitetskode,
				JY62200V.CEMED3 AS Kode_for_udskrivning_ejermeddelse,
				JY62200V.CVBYG3 AS Vers_byggesag,
				JY62200V.EJERLEJLIGHEDEJDNR AS Ejerlejlighedens_ejendomsnummer,
				CAST(JY62200V.EKOMNR AS varchar(3)) + CAST(JY62200V.CVEJK AS varchar(4))+ RTRIM(LTRIM(JY62200V.HUS_NUMMER)) + RTRIM(LTRIM(JY62200V.ETAGE))+''+RTRIM(LTRIM(JY62200V.SIDE_DORNR)) AS UDVadresseID
FROM JY62200V