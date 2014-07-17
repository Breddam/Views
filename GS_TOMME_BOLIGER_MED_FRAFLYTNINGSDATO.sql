SELECT
				MAX(DISTINCT GS_BORGER_FLYTNING.Fraflytningsdato) AS Seneste_fraflytning,
				GS_TOMME_BOLIGER.Adresse,
				GS_TOMME_BOLIGER.Ejendomsnummer,
				GS_TOMME_BOLIGER.Anvendelseskode,
				GS_TOMME_BOLIGER.Anvendelse,
				GS_TOMME_BOLIGER.Boligtypekode,
				GS_TOMME_BOLIGER.Boligtype,
				GS_TOMME_BOLIGER.Kondemneret_boligenhed,
				GS_TOMME_BOLIGER.Oprettelsesdato_for_enhedsID,
				GS_TOMME_BOLIGER.Enhedens_samlede_areal,
				GS_TOMME_BOLIGER.Areal_til_beboelse,
				GS_TOMME_BOLIGER.Areal_til_erhverv,
				GS_TOMME_BOLIGER.Kilde_til_bygningsarealer,
				GS_TOMME_BOLIGER.Antal_v�relser,
				GS_TOMME_BOLIGER.Toiletforholdskode,
				GS_TOMME_BOLIGER.Toiletforhold,
				GS_TOMME_BOLIGER.Badeforholdskode,
				GS_TOMME_BOLIGER.Badeforhold,
				GS_TOMME_BOLIGER.K�kkenforholdskode,
				GS_TOMME_BOLIGER.K�kkenforhold,
				GS_TOMME_BOLIGER.Energiforsyningskode,
				GS_TOMME_BOLIGER.Energiforsyning,
				GS_TOMME_BOLIGER.Andet_areal,
				GS_TOMME_BOLIGER.Godkendt_tom_bolig_gl,
				GS_TOMME_BOLIGER.Lovlig_anvendelseskode,
				GS_TOMME_BOLIGER.Lovlig_anvendelse,
				GS_TOMME_BOLIGER.Dato_for_tidsbegr_disp,
				GS_TOMME_BOLIGER.Sagstype_enhed,
				GS_TOMME_BOLIGER.Dato_for_delvis_ibrugtillad,
				GS_TOMME_BOLIGER.Udlejningsforholdskode,
				GS_TOMME_BOLIGER.Udlejningsforhold,
				GS_TOMME_BOLIGER.Offentlig_st�tte,
				GS_TOMME_BOLIGER.Offentlig_st�tte_tekst,
				GS_TOMME_BOLIGER.Dato_for_indflytning,
				GS_TOMME_BOLIGER.Godkendt_tom_bolig,
				GS_TOMME_BOLIGER.Godkendt_tom_bolig_tekst,
				GS_TOMME_BOLIGER.Varmeinstallationskode,
				GS_TOMME_BOLIGER.Varmeinstallation,
				GS_TOMME_BOLIGER.Opvarmningsmiddelskode,
				GS_TOMME_BOLIGER.Opvarmningsmiddel,
				GS_TOMME_BOLIGER.Supplerende_varmekode,
				GS_TOMME_BOLIGER.Supplerende_varme,
				GS_TOMME_BOLIGER.Andel_i_f�lles_adgangsareal,
				GS_TOMME_BOLIGER.Samlet_areal_af_�bne_overd�k,
				GS_TOMME_BOLIGER.Samlet_areal_lukkede_overd�k,
				GS_TOMME_BOLIGER.Antal_v�relser_til_erhverv,
				GS_TOMME_BOLIGER.Antal_vandskyllede_toiletter,
				GS_TOMME_BOLIGER.Antal_badev�relser,
				GS_TOMME_BOLIGER.Opret_timestamp,
				GS_TOMME_BOLIGER.�ndret_timestamp,
				GS_TOMME_BOLIGER.Oph�rt_timestamp,
				GS_TOMME_BOLIGER.GYLDIGHEDSDATO,
				GS_TOMME_BOLIGER.Vejkode,
				GS_TOMME_BOLIGER.Husnummer,
				GS_TOMME_BOLIGER.ETAGE,
				GS_TOMME_BOLIGER.Side_d�rnr,
				GS_TOMME_BOLIGER.Vejnavn,
				GS_TOMME_BOLIGER.Lokalitet,
				GS_TOMME_BOLIGER.Bynavn,
				GS_TOMME_BOLIGER.Postnummer,
				GS_TOMME_BOLIGER.Postdistrikt,
				GS_TOMME_BOLIGER.ADRESSELINK_ID,
				GS_TOMME_BOLIGER.ADRESSE_ID,
				GS_TOMME_BOLIGER.UDVadresseID,
				GS_TOMME_BOLIGER.ENH_ID,
				GS_TOMME_BOLIGER.EAD_ID,
				GS_TOMME_BOLIGER.ETA_ID,
				GS_TOMME_BOLIGER.OPG_ID,
				GS_TOMME_BOLIGER.ADG_ID
FROM
				GS_BORGER_FLYTNING RIGHT OUTER JOIN
				GS_TOMME_BOLIGER ON GS_BORGER_FLYTNING.UDVadresseID = GS_TOMME_BOLIGER.UDVadresseID
GROUP BY
				GS_TOMME_BOLIGER.Adresse,
				GS_TOMME_BOLIGER.Ejendomsnummer,
				GS_TOMME_BOLIGER.Anvendelseskode,
				GS_TOMME_BOLIGER.Anvendelse,
				GS_TOMME_BOLIGER.Boligtypekode,
				GS_TOMME_BOLIGER.Boligtype,
				GS_TOMME_BOLIGER.Kondemneret_boligenhed,
				GS_TOMME_BOLIGER.Oprettelsesdato_for_enhedsID,
				GS_TOMME_BOLIGER.Enhedens_samlede_areal,
				GS_TOMME_BOLIGER.Areal_til_beboelse,
				GS_TOMME_BOLIGER.Areal_til_erhverv,
				GS_TOMME_BOLIGER.Kilde_til_bygningsarealer,
				GS_TOMME_BOLIGER.Antal_v�relser,
				GS_TOMME_BOLIGER.Toiletforholdskode,
				GS_TOMME_BOLIGER.Toiletforhold,
				GS_TOMME_BOLIGER.Badeforholdskode,
				GS_TOMME_BOLIGER.Badeforhold,
				GS_TOMME_BOLIGER.K�kkenforholdskode,
				GS_TOMME_BOLIGER.K�kkenforhold,
				GS_TOMME_BOLIGER.Energiforsyningskode,
				GS_TOMME_BOLIGER.Energiforsyning,
				GS_TOMME_BOLIGER.Andet_areal,
				GS_TOMME_BOLIGER.Godkendt_tom_bolig_gl,
				GS_TOMME_BOLIGER.Lovlig_anvendelseskode,
				GS_TOMME_BOLIGER.Lovlig_anvendelse,
				GS_TOMME_BOLIGER.Dato_for_tidsbegr_disp,
				GS_TOMME_BOLIGER.Sagstype_enhed,
				GS_TOMME_BOLIGER.Dato_for_delvis_ibrugtillad,
				GS_TOMME_BOLIGER.Udlejningsforholdskode,
				GS_TOMME_BOLIGER.Udlejningsforhold,
				GS_TOMME_BOLIGER.Offentlig_st�tte,
				GS_TOMME_BOLIGER.Offentlig_st�tte_tekst,
				GS_TOMME_BOLIGER.Dato_for_indflytning,
				GS_TOMME_BOLIGER.Godkendt_tom_bolig,
				GS_TOMME_BOLIGER.Godkendt_tom_bolig_tekst,
				GS_TOMME_BOLIGER.Varmeinstallationskode,
				GS_TOMME_BOLIGER.Varmeinstallation,
				GS_TOMME_BOLIGER.Opvarmningsmiddelskode,
				GS_TOMME_BOLIGER.Opvarmningsmiddel,
				GS_TOMME_BOLIGER.Supplerende_varmekode,
				GS_TOMME_BOLIGER.Supplerende_varme,
				GS_TOMME_BOLIGER.Andel_i_f�lles_adgangsareal,
				GS_TOMME_BOLIGER.Samlet_areal_af_�bne_overd�k,
				GS_TOMME_BOLIGER.Samlet_areal_lukkede_overd�k,
				GS_TOMME_BOLIGER.Antal_v�relser_til_erhverv,
				GS_TOMME_BOLIGER.Antal_vandskyllede_toiletter,
				GS_TOMME_BOLIGER.Antal_badev�relser,
				GS_TOMME_BOLIGER.Opret_timestamp,
				GS_TOMME_BOLIGER.�ndret_timestamp,
				GS_TOMME_BOLIGER.Oph�rt_timestamp,
				GS_TOMME_BOLIGER.GYLDIGHEDSDATO,
				GS_TOMME_BOLIGER.Vejkode,
				GS_TOMME_BOLIGER.Husnummer,
				GS_TOMME_BOLIGER.ETAGE,
				GS_TOMME_BOLIGER.Side_d�rnr,
				GS_TOMME_BOLIGER.Vejnavn,
				GS_TOMME_BOLIGER.Lokalitet,
				GS_TOMME_BOLIGER.Bynavn,
				GS_TOMME_BOLIGER.Postnummer,
				GS_TOMME_BOLIGER.Postdistrikt,
				GS_TOMME_BOLIGER.ADRESSELINK_ID,
				GS_TOMME_BOLIGER.ADRESSE_ID,
				GS_TOMME_BOLIGER.UDVadresseID,
				GS_TOMME_BOLIGER.ENH_ID,
				GS_TOMME_BOLIGER.EAD_ID,
				GS_TOMME_BOLIGER.ETA_ID,
				GS_TOMME_BOLIGER.OPG_ID,
				GS_TOMME_BOLIGER.ADG_ID