Показать номер покупки и номер товара дата покупки которой произошла раньше 09.09.17.
SELECT selling_id, goods_id
FROM selling
    WHERE selling_date < '09.09.17';


Показать номер продажи и дату продажи, клиента под номером 3.
SELECT selling_id, selling_date
FROM selling
    WHERE customers_id = '3';


Показать номер телефона клиента под именем Кузнецов Леонтий Арсеньевич.
SELECT customers_phone 
    FROM customers
    WHERE customers_name = 'Кузнецов Леонтий Арсеньевич';


Показать клиента который купил 7ой товар.
SELECT customers_id
    FROM selling
    WHERE goods_id = '7';


Показать номер продажи и дату продажи, клиента под номером 5 и даты покупи позднее 03.09.17. 
SELECT selling_id, selling_date
FROM selling
    WHERE customers_id = '5'
    AND selling_date > '03.09.17';
