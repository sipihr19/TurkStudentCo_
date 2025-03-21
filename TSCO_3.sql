-- 1.SORU
-- “USA” ülkesine ait, 2009 yılı içerisinde oluşturulmuş tüm faturaların (Invoice) toplamını listeleyen bir sorgu yazınız.

SELECT SUM(total) AS invoice_amount
FROM invoice
WHERE
	billing_country = 'USA'
	AND TO_CHAR(invoice_date, 'YYYY') = '2009';


-- 2.SORU
-- Tüm parça (track) bilgilerini, bu parçaların ait olduğu playlisttrack ve playlist tablolarıyla birleştirerek (JOIN) listeleyen bir sorgu yazınız.

SELECT *
FROM track t
JOIN playlisttrack pt ON pt.track_id = t.track_id
JOIN playlist p ON p.playlist_id = pt.playlist_id;

-- 3.SORU
-- "Let There Be Rock" adlı albüme ait tüm parçaları (Track) listeleyen, sanatçı (Artist) bilgisini de içeren bir sorgu yazınız. 
-- Ayrıca, sonuçları parça süresi (milliseconds) büyükten küçüğe sıralayınız.

SELECT 
	al.title AS album_title,
	t.name AS track_name,
	a.name AS artist_name,
	t.milliseconds
FROM artist a
JOIN album al ON al.artist_id = a.artist_id
JOIN track t ON t.album_id = al.album_id
WHERE al.title = 'Let There Be Rock'
ORDER BY t.milliseconds DESC;
