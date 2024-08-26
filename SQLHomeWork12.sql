--film tablosunda film uzunluğu length sütununda gösterilmektedir.
--Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

SELECT COUNT(*) AS NumberOfMovies
FROM movie
WHERE length > (SELECT AVG(length) FROM movie);

--film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(*) AS NumberOfMovies
FROM movie
WHERE rental_rate = (SELECT MAX(rental_rate) FROM movie);

--film tablosunda en düşük rental_rate ve en düşün
--replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT *
FROM movie
WHERE rental_rate = (SELECT MIN(rental_rate) FROM movie)
AND replacement_cost = (SELECT MIN(replacement_cost) FROM movie);

---payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

SELECT customer_id, COUNT(*) AS purchase_count
FROM payment
GROUP BY customer_id
ORDER BY purchase_count DESC
LIMIT 1;
