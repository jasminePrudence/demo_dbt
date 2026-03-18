SELECT a.Album_Title, SUM(t.Milliseconds) as Duration
FROM {{ ref('fact_tracks') }} t
JOIN {{ ref('dim_album') }} a ON t.AlbumId = a.AlbumId
GROUP BY a.Album_Title
ORDER BY Duration DESC
LIMIT 10