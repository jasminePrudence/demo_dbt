SELECT ALBUM_TITLE 
FROM {{ ref('dim_album') }} 
WHERE Cd_year > 1