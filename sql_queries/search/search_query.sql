-- Script to search a video or channel

SELECT id, title, description, url, created_at
FROM videos
WHERE title ILIKE '%heavy%'
ORDER BY created_at DESC
LIMIT 20;

SELECT id, name, handle, description, created_at
FROM channels
WHERE name ILIKE '%rocker%'
ORDER BY created_at DESC
LIMIT 20;