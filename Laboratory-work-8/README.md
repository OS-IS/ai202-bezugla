### Криптографічний захист клієнт-серверної взаємодії в СКБД PostgreSQL

1. Встановити OpenSSL-пакет. В терміналі командного рядку запустити утиліту openssl та переглянути перелік доступних команд.

![image](https://github.com/user-attachments/assets/29ba84ca-bee5-4d06-9aa0-65bb3643d1b8)

2. Створити самопідписаний сертифікат для сервера СКБД PostgreSQL з наступними параметрами: − атрибути C=UA, L=Odessa, O=OPU, OU=group, CN=surname.op.edu.ua, де group – назва вашої групи латиницею, surname – ваше прізвище латиницею − строк дії сертифікату = (variant * 10) днів, де variant – значення вашого варіанту.

![image](https://github.com/user-attachments/assets/b913330f-ff4f-4427-aeac-10991425b637)

3. Переглянути вміст сертифікату та визначити алгоритми створення відкритого ключа, а також алгоритм встановлення цифрового підпису.

![image](https://github.com/user-attachments/assets/2b1dc5f8-4b8c-4a17-9a23-0e4e16d35eae)
![image](https://github.com/user-attachments/assets/d0b3991c-cc94-4bd8-915f-f28d26df2b37)

4. Скопіювати створений сертифікат відкритого ключа та закритий ключ до каталогу сервера СКБД PostgreSQL, яка використовувалася у попередній лабораторній роботі. У
конфігураційному файлі postgresql.conf налаштувати значення SSL-параметрів для підтримки SSL-з'єднання між сервером та клієнтами.

![image](https://github.com/user-attachments/assets/0c3bde51-5935-47c7-8ecf-c0eac97004c6)

5. Використовуючи програму psql, встановити TSL/SSL-з'єднання з БД за прикладом з попередньої лабораторної роботи, але використовуючи формат параметрів "host=var1
port=var2 dbname=var3 user=var4 password=var5 sslmode=var6". Визначити версію TSL-протоколу та перелік використаних криптоалгоритмів.

![image](https://github.com/user-attachments/assets/fbc03ac5-d89b-4aa0-a065-61021e2f2a23)

6. Встановити ПЗ контейнерної віртуалізації Docker та запустити Docker через ваш Docker-обліковий запис.

![image](https://github.com/user-attachments/assets/a9e3ed8a-e19d-4b87-bded-b2dadba53ab9)

7. Запустити Docker-контейнер СКБД PostgreSQL, використовуючи раніше розглянуті приклади (порт прослуховування запитів СКБД PostgreSQL = 5466).

![image](https://github.com/user-attachments/assets/92f52428-efcc-425f-92c4-0795c966db28)

8. У Docker-контейнері встановити програмний пакунок аналізу мережевих пакетів tcpdump. Отримати перелік мережевих інтерфейсів на вашому комп’ютері.

![image](https://github.com/user-attachments/assets/c6df2495-ec4f-478e-91d2-9fd37cf1d9db)

![image](https://github.com/user-attachments/assets/41983f68-9a9a-4395-8a44-e75a54d53dfd)

9. Провести запуск програми аналізу мережевих пакетів для кожного мережевого інтерфейсу поки не буде знайдено активний інтерфейс, який взаємодіє з мережею Internet та виводить на екран інформацію про ці пакети.

![image](https://github.com/user-attachments/assets/7dd8245a-90f9-4952-a069-1226dbcbc7cc)

10. Запустити програму аналізу мережевих пакетів в режимі прослуховування обраного мережевого інтерфейсу та налаштувати її на перегляд пакетів, які пов`язані з портом 5466, зберігаючи зміст пакетів в окремому файлі через перенаправлення потоку, наприклад, > res.dump. Результати роботи будуть використанні у наступних завданнях.

![image](https://github.com/user-attachments/assets/b1722375-a95d-44df-91f0-22cc72b3f87b)

11. Запустити окрему термінальну консоль та становити зв'язок із СКБД PostgreSQL, яка запущена через Docker-контейнер. Після успішного встановлення визначити версію TSL-протоколу та перелік використаних криптографічних алгоритмів.

![image](https://github.com/user-attachments/assets/2a478802-0422-4bc9-9e3b-0905806bcc6e)

12. Виконати команду створення користувача за прикладом з лабораторної роботи #6.

![image](https://github.com/user-attachments/assets/789ae528-8425-4213-b469-e672145b900c)

13. Проаналізувати вміст перехоплених пакетів, які було збережено у файлі,наприклад, res.dump. Підтвердити передачу деяких даних у відкритому вигляді.

![image](https://github.com/user-attachments/assets/7e78072e-98ef-43d8-9ec0-750c13f9f9a5)

![image](https://github.com/user-attachments/assets/61a94297-e016-409f-9930-6cb6caac7eea)

14. Повторити пункт 11, встановивши зв’язок із СКБД, але вже через TLS/SSL-з’єднання.

![image](https://github.com/user-attachments/assets/3e2d9b0b-ebb5-4434-b12f-053565cdc1f0)

15. Проаналізувати вміст перехоплених пакетів в програмі-аналізаторі. Підтвердити відсутність даних у відкритому вигляді.

![image](https://github.com/user-attachments/assets/95f3090e-8ce7-4884-884e-0a53b19c6fda)
