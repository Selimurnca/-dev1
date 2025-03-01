select * from employees
select * from departments



-- A. Bu adım için select sütun adları from tablo adı syntax ını kulllanıcaz .Burada kodu daha rahat yazabilmek için tablo adına alias verdim. 

select ep.firstname , ep.lastname , ep.salary from employees as ep



-- B. Distinct komutu ile tekrar etmeyen tablo oluşturmak . anlaşılır olması için as ile çıkacak sonucun sütun ismini değiştirdim .

select DISTINCT dp.departmentname as departments from departments as dp

-- C.1 Sadece IT departmanında çalışanların bilgilerini getirmek. Fakat burada WHERE komutunu kullanmak durumunda kaldım . Eğitimden bundan bahsedilmemşti.
SELECT *
FROM employees as ep
WHERE ep.departmentid = 1;


--C.2 . Sanırım ıd ye göre sıralam demek istediniz 
select * from employees as ep
order by ep.departmentid asc


-- D. Maaşları büyükten küçüğe göre sıralama için desc kullanıcaz
select * from employees as ep
order by ep.salary desc


-- E . Çalışan isimlerinin bir araya getirildiği sorgu . Tek tırnak hassasiyeti de mevcut bu kodda 
select  ep.firstname ||' '|| ep.lastname as fullname from employees as  ep
