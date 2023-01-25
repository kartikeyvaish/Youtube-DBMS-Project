SELECT
    SUM( CASE WHEN reaction_type_id = 1 THEN 1 ELSE 0 END ) as likes_count,
    SUM( CASE WHEN reaction_type_id = 2 THEN 1 ELSE 0 END ) as dislikes_count
FROM video_reactions
WHERE video_id = 1;