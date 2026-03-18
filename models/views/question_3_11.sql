SELECT DISTINCT p.Name
FROM {{ source('DST_DB', 'playlist') }} p
JOIN {{ source('DST_DB', 'playlisttrack') }} pt ON p.PlaylistId = pt.PlaylistId
JOIN {{ ref('fact_tracks') }} t ON pt.TrackId = t.TrackId
JOIN {{ ref('dim_album') }} al ON t.AlbumId = al.AlbumId
JOIN {{ source('DST_DB', 'artist') }} ar ON al.ARTIST_NAME = ar.NAME
WHERE ar.Birthyear < 1990