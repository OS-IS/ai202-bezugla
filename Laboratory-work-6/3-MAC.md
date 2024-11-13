#### 1
Створіть у БД структури даних, необхідні для роботи повноважного керування доступом.

![image](https://github.com/user-attachments/assets/d97ae223-2658-4300-aadf-fbfd2f719bf9)

#### 2
Додайте до таблиці з даними стовпчик, який буде зберігати мітки конфіденційності. Визначте для кожного рядка таблиці мітки конфіденційності, які будуть різнитися (для
кожного рядка своя мітка).

![image](https://github.com/user-attachments/assets/39ade33b-021e-4926-9ce5-971e99fc9b41)

#### 3
Визначте для користувача його рівень доступу.

![image](https://github.com/user-attachments/assets/8ac197d5-db45-4868-9aff-cf198ab48803)

![image](https://github.com/user-attachments/assets/f469542c-0d07-4d2e-8ef6-d238043738fc)

#### 4
Створіть нову схему даних, назва якої співпадає з назвою користувача.

![image](https://github.com/user-attachments/assets/695a88f8-223c-45e2-ade3-4bf3c3ae7007)

#### 5
Створіть віртуальну таблицю, назва якої співпадає з назвою реальної таблиці та яка забезпечує SELECT-правила повноважного керування доступом для користувача.

![image](https://github.com/user-attachments/assets/f5413b3e-a2f7-4d01-9888-01a9d19a0d69)

![image](https://github.com/user-attachments/assets/c82b132f-0d7d-471d-8217-f2193f2ad2dc)

#### 6
Створіть INSERT/UPDATE/DELETE-правила повноважного керування доступом для користувача.

![image](https://github.com/user-attachments/assets/814015b6-0c8c-4523-9f2a-58d97540311d)

![image](https://github.com/user-attachments/assets/872b55ce-d94b-4ec1-aa38-faad51265106)

![image](https://github.com/user-attachments/assets/5d708cf8-46f1-4f1f-85a2-e5bea6485e80)

#### 7-8
7. Встановіть з’єднання з СКБД від імені нового користувача.
8. Від імені нового користувача перевірте роботу механізму повноважного керування, виконавши операції SELECT, INSERT, UPDATE, DELETE.

![image](https://github.com/user-attachments/assets/4ef0a426-0c05-4a22-961c-3db3f27c8d82)

![image](https://github.com/user-attachments/assets/035aadc6-346f-45aa-9e04-76ba8d3eb92c)

![image](https://github.com/user-attachments/assets/5f2ee13e-fa38-458b-988f-0cbf4fd397fb)

