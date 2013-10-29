SELECT        dbo.JY65100V.KOMMUNENUMMER, dbo.JY65100V.VEJ_KODE AS VEJKODE, RTRIM(dbo.JY65100V.HUS_NUMMER) AS HUSNUMMER_BOGSTAV, 
                         dbo.JY65100V.DISTRIKT_TYPE AS DISTRIKTTYPEKODE, RTRIM(dbo.QL59300V.TEKST) AS DISTRIKTTYPE, RTRIM(dbo.JY65100V.DISTRIKT_KODE) 
                         AS DISTRIKTKODE, CAST(dbo.JY65100V.KOMMUNENUMMER AS VARCHAR(3)) + RIGHT('0000' + CONVERT(VARCHAR, dbo.JY65100V.VEJ_KODE), 4) 
                         + RTRIM(dbo.JY65100V.HUS_NUMMER) AS ADRESSELINK_ID, CAST(dbo.JY65100V.KOMMUNENUMMER AS VARCHAR(3)) 
                         + CAST(dbo.JY65100V.VEJ_KODE AS VARCHAR(4)) + RTRIM(dbo.JY65100V.HUS_NUMMER) AS ADRESSE_ID
FROM            dbo.JY65100V LEFT OUTER JOIN
                         dbo.QL59300V ON dbo.JY65100V.DISTRIKT_TYPE = dbo.QL59300V.KODE
WHERE        (dbo.JY65100V.DISTRIKT_TYPE = 50)