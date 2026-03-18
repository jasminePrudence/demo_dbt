SELECT g.Genre_Name, AVG(t.Bytes) as Average_Size
FROM {{ ref('fact_tracks') }} t
JOIN {{ ref('dim_genre') }} g ON t.GenreId = g.GenreId
GROUP BY g.Genre_Name