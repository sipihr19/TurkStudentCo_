# 🚀 TurkStudentCo SQL BOOTCAMP 

Bu repository, **TurkStudentCo** tarafından düzenlenen **"SQL Bootcamp"** eğitimi kapsamında oluşturulmuştur. 📚  
Bu repo, etkinlik süresince öğrendiğim konuları ve verilen ödevleri içermektedir. ✍️  

## 📌 İÇERİK

✅ **1. Ödev**: Temel SQL komutlarını öğrenmeye yöneliktir.  
   - `SELECT`, `WHERE`, `ORDER BY`, `DISTINCT`, `CONCAT`

   📊 **Örnek SQL Sorgusu**  
   ```sql
   SELECT
      FirstName,
      LastName,
      Salary
   FROM employees;
   ```

✅ **2. Ödev**: Fonksiyonları içermektedir.  
   - `IS NULL`
   - Aritmetik işlemler
   - **Alias kullanımı**  
   - `SUBSTRING`, `CONCAT`, `LENGTH`, `TO_CHAR` gibi fonksiyonların kullanımı  
   - **Date türü ile ilgili işlemler** 📅
 
   📊 **Örnek SQL Sorgusu**  
   ```sql
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
   ```

✅ **3. Ödev**: `JOIN` kavramının detaylı kullanımını içermektedir.  
   - Gerçek hayatta kullanılan `JOIN` senaryoları
   - Birden fazla tabloyla etkin çalışma teknikleri
   - `INNER JOIN`, `TO_CHAR`, `SUM`

   📊 **Örnek SQL Sorgusu**  
   ```sql
   SELECT *
   FROM track t
   JOIN playlisttrack pt ON pt.track_id = t.track_id
   JOIN playlist p ON p.playlist_id = pt.playlist_id;
   ```
  
   
