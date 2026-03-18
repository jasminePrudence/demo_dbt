SELECT a.Artist_Name, COUNT(t.TrackId) as Nb_Tracks
FROM {{ ref('fact_tracks') }} t
JOIN {{ ref('dim_album') }} a ON t.AlbumId = a.AlbumId
GROUP BY a.Artist_Name