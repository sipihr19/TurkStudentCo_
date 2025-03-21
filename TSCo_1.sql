-- Çalışanların sadece FirstName, LastName ve Salary bilgilerini getiren bir SQL sorgusu yazınız. 
SELECT 
	FirstName,
	LastName,
	Salary
FROM employees;

-- Çalışanların çalıştıkları departmanları benzersiz olarak listeleyen bir SQL sorgusu yazınız.
SELECT DISTINCT departmentid
FROM employees;

-- Sadece IT departmanında çalışanların bilgilerini getiren bir SQL sorgusu yazınız.
SELECT * 
FROM employees
WHERE departmentid = 1;

-- Çalışanları maaşlarına göre büyükten küçüğe sıralayan bir SQL sorgusu yazınız. 
SELECT * 
FROM employees
ORDER BY salary DESC;

-- Çalışanların FirstName ve LastName alanlarını birleştirerek,
-- tam adlarını içeren yeni bir kolon oluşturan bir SQL sorgusu yazınız. 
SELECT FirstName || ' ' || LastName AS FullName
FROM employees;

