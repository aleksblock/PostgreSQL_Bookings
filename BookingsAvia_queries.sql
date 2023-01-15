-- 1. В каких городах больше одного аэропорта? 
/* 
   Находим в таблице airports города, в которых больше одного аэропорта с использованием аггрегирующей функции.
   Для наглядности список аэропортов выведен через функцию string_agg 
*/    
select a.city as "Город",
string_agg (a.airport_code || '-' || a.airport_name, ', ') as "Список аэропортов"
from airports a 
where a.city in ( select a1.city from airports a1 group by a1.city having count(a1.city) > 1)
group by a.city
order by a.city
     
     
     
    





