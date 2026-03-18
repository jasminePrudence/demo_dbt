SELECT g.Genre_Name, COUNT(t.TrackId) as Nb_Tracks
FROM {{ ref('fact_tracks') }} t
JOIN {{ ref('dim_genre') }} g ON t.GenreId = g.GenreId
JOIN {{ ref('dim_album') }} a ON t.AlbumId = a.AlbumId
WHERE a.Prod_year BETWEEN 2000 AND 2009
GROUP BY g.Genre_Name
ORDER BY Nb_Tracks DESC
LIMIT 1