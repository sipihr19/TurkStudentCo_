-- 1. SORU
-- Invoice tablosunda, tüm değerleri NULL olan kayıtların sayısını bulmanız isteniyor. 
-- Bu işlemi tek bir sorgu ile yapmalısınız. Sorguyu yazdıktan sonra, PostgreSQL’in sol alt kısmındaki 
-- Row sayısını, SQL sorgunuzda yorum satırında belirtmeniz gerekmektedir.

SELECT COUNT(*) 
FROM invoice
WHERE invoice_id IS NULL
  AND cutomer_id IS NULL
  AND invoice_date IS NULL
  AND billing_address IS NULL
  AND billing_city IS NULL
  AND billing_state IS NULL
  AND billing_country IS NULL
  AND billingpostal_code IS NULL
  AND total IS NULL;

-- 2. SORU
-- Koordinasyondaki kişiler, Total değerlerinde bir hata olduğunu belirtiyorlar. 
-- Bu değerlerin iki katını görmek ve eski versiyonlarıyla birlikte karşılaştırmak için bir sorgu yazmanız isteniyor. 
-- Ayrıca, verilerin daha rahat takip edilebilmesi için, tablonun yeni versiyonuna ait kolona göre büyükten küçüğe sıralama yapılması isteniyor. 

SELECT 
  total,
  2*total AS new_total
FROM invoice
ORDER BY new_total DESC;

-- 3.SORU
-- Adres kolonundaki verileri, soldan 3 karakter ve sağdan 4 karakter alarak birleştirmeniz ve "Açık Adres" olarak yazmanız isteniyor. 
-- Ayrıca, bu yeni açık adresi 2013 yılı ve 8. ay’a göre filtrelemeniz gerekiyor.

SELECT 
  CONCAT(
    SUBSTRING(billing_address, 1, 3),
    SUBSTRING(billing_address, LENGTH(billing_address)-3, 4)
  ) AS acik_adres,
  invoice_date
FROM invoice
WHERE 
  TO_CHAR(invoice_date, 'YYYY') = '2013'
  AND TO_CHAR(invoice_date, 'MM') = '08';
