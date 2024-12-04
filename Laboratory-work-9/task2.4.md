### Імітація Token-механізму автентифікації в СУБД PostgreSQL

1. Створити функцію user_login, яка буде ініціалізувати Token, враховуючи параметри сесії користувача ( IP-адреса клієнта, порт клієнта та ідентифікатор серверного
процесу).

![image](https://github.com/user-attachments/assets/a020cb62-10fd-4855-adda-17e84ace9ae9)

2. Провести тестування роботи функції user_login.

![image](https://github.com/user-attachments/assets/27fefb0f-897f-4cc5-a606-d9a87d02ad2f)

3. З урахуванням Token-механізму автентифікації оновити функцію get_data отримання вмісту таблиці, яку було створено в першому завданні лабораторній роботі №7.

![image](https://github.com/user-attachments/assets/cb5926aa-16dc-4c0c-a6c8-742fd9bf17f5)

4. Провести тестування роботи оновленої функції get_data.

![image](https://github.com/user-attachments/assets/d5e9a211-3477-41d0-be28-705a87f04883)

5. Створити функцію user_logout для коректного очищення Token.

![image](https://github.com/user-attachments/assets/2409dcd2-0cd6-4383-bdc5-349818cc6888)

6. Провести тестування роботи user_logout.

![image](https://github.com/user-attachments/assets/9b0e11f3-0497-42d8-9129-ebb652d81b21)
