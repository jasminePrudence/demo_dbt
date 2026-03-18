SELECT t.Track_Name, a.Prod_year 
FROM {{ ref('fact_tracks') }} t
JOIN {{ ref('dim_album') }} a ON t.AlbumId = a.AlbumId
WHERE a.Prod_year IN (2000, 2002)