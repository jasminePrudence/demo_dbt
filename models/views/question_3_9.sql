SELECT t.Track_Name
FROM {{ ref('fact_tracks') }} t
JOIN {{ ref('dim_genre') }} g ON t.GenreId = g.GenreId
JOIN {{ ref('dim_album') }} a ON t.AlbumId = a.AlbumId
WHERE g.Genre_Name = 'Rock' AND a.Artist_Country = 'France'