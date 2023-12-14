-- 1.Вивести всі жанри манги, які мають більше 150 частин
SELECT DISTINCT(g.genre)
FROM genre g
JOIN manga_genre mg ON mg.genre_id = g.genre_id
JOIN manga m ON m.manga_id = mg.manga_id
WHERE m.chapterS > 150;

-- 2.Вивести кількість завершених манг
SELECT COUNT(*)
FROM manga m
JOIN status s ON s.status_id = m.status_id
WHERE s.status = 'Finished';

-- 3.Вивести назву найдовшого посилання на мангу
SELECT english_title
FROM manga
ORDER BY LENGTH(manga_url) DESC
LIMIT 1;