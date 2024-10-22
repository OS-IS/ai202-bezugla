|Ідентифікатор та назва атаки (вразливості)|Вимога (FR, NFR)|Приклад вразливостей, які може використовувати атака|Приклад запобігання успішної реалізації атаки|
|:-------:|:-----------:|:---------:|:---------:|
|A1 – Broken Access Control (недоліки контролю доступу)|FR1, FR2, FR3, FR4|Несанкціонований доступ до профілів та даних інших користувачів, зміна ролей користувачів без дозволу|Впровадження ролей та прав доступу, використання списків контролю доступу|
|A2 – Cryptographic Failures (збої у криптографії)|NFR2, FR3|Використання слабких алгоритмів шифрування для зберігання даних чи транзакцій|Використання сучасних криптографічних стандартів (TLS 1.3, AES-256) для зберігання та передачі даних|
|A3 – Injection (впровадження)|FR1, FR3, FR4|SQL впровадження під час реєстрації або входу, впровадження через поля чату або оплати послуг|Використання параметризованих запитів та фільтрація вхідних даних|
|A4 – Insecure Design (небезпечний дизайн)|FR1, FR2, FR3|Слабке проектування логіки доступу до даних|Впровадження безпечних принципів проектування та ревізія архітектури на початкових етапах|
|A5 – Security Misconfiguration (неправильна конфігурація безпеки)|FR3, NFR4|Використання застарілих бібліотек чи невірних налаштувань серверів|Регулярне оновлення компонентів, застосування найкращих практик конфігурації безпеки|
|A6 – Vulnerable and Outdated Components (вразливі та застарілі компоненти)|NFR4, FR3|Застарілі бібліотеки для обробки платежів або взаємодії з базою даних|Оновлення компонентів, що використовуються, регулярне тестування на вразливості|
|A7 – Identification and Authentication Failures (помилки ідентифікації та аутентифікації)|FR1, FR3, FR4|Недостатня перевірка особи користувача, слабкі паролі|Використання багатофакторної аутентифікації, політики сильних паролів|
|A8 – Software and Data Integrity Failures (збої у забезпеченні цілісності програмного забезпечення та даних)|NFR2, FR3|Зміна даних користувача або інформації про оплату через маніпуляції з кодом|Підписування критичних даних, використання перевірки цілісності|
|A9 – Security Logging and Monitoring Failures (збої реєстрації та моніторингу безпеки)|NFR4|Відсутність моніторингу транзакцій чи дій користувачів, невчасне виявлення атак|Налаштування системи логування та моніторингу для виявлення підозрілої активності|
|A10 – Server-Side Request Forgery (підробка запитів на стороні сервера)|FR3, NFR4|SSRF-атаки через системи оплати чи сторонні API|Валідація всіх зовнішніх запитів, обмеження доступу до внутрішніх ресурсів|