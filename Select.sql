�������� ����� ������� � ����� ������ ���� ������� ������� ��������� ������ 09.09.17.
SELECT selling_id, goods_id
FROM selling
    WHERE selling_date < '09.09.17';


�������� ����� ������� � ���� �������, ������� ��� ������� 3.
SELECT selling_id, selling_date
FROM selling
    WHERE customers_id = '3';


�������� ����� �������� ������� ��� ������ �������� ������� ����������.
SELECT customers_phone 
    FROM customers
    WHERE customers_name = '�������� ������� ����������';


�������� ������� ������� ����� 7�� �����.
SELECT customers_id
    FROM selling
    WHERE goods_id = '7';


�������� ����� ������� � ���� �������, ������� ��� ������� 5 � ���� ������ ������� 03.09.17. 
SELECT selling_id, selling_date
FROM selling
    WHERE customers_id = '5'
    AND selling_date > '03.09.17';
