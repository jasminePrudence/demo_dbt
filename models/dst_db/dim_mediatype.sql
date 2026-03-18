select * from {{ source('DST_DB', 'DIM_MEDIATYPE') }}
