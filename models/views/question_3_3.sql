SELECT t.Track_Name, t.Composer
FROM {{ ref('fact_tracks') }} t
JOIN {{ ref('dim_genre') }} g ON t.GenreId = g.GenreId
WHERE g.Genre_Name IN ('Rock', 'Jazz')