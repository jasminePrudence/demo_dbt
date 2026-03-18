SELECT DISTINCT p.Name
FROM {{ source('DST_DB', 'playlist') }} p
JOIN {{ source('DST_DB', 'playlisttrack') }} pt ON p.PlaylistId = pt.PlaylistId
JOIN {{ ref('fact_tracks') }} t ON pt.TrackId = t.TrackId
WHERE t.Milliseconds > 240000