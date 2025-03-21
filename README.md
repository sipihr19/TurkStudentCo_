# 🚀 TurkStudentCo SQL BOOTCAMP 

Bu repository, **TurkStudentCo** tarafından düzenlenen **"SQL Bootcamp"** eğitimi kapsamında oluşturulmuştur. 📚  
Bu proje, etkinlik süresince öğrendiğim konuları ve verilen ödevleri içermektedir. ✍️  

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
      total,
      2 * total AS new_total
   FROM invoice
   ORDER BY new_total DESC;
   ```

✅ **3. Ödev**: `JOIN` kavramının detaylı kullanımını içermektedir.  
   - Gerçek hayatta kullanılan `JOIN` senaryoları
   - Birden fazla tabloyla etkin çalışma teknikleri
   - `INNER JOIN`, `TO_CHAR`, `COUNT`

   📊 **Örnek SQL Sorgusu**  
   ```sql
   SELECT *
   FROM track t
   JOIN playlisttrack pt ON pt.track_id = t.track_id
   JOIN playlist p ON p.playlist_id = pt.playlist_id;
   ```
  
   
