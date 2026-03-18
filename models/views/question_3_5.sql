SELECT Artist_Name, COUNT(AlbumId) as Nb_Albums
FROM {{ ref('dim_album') }}
GROUP BY Artist_Name