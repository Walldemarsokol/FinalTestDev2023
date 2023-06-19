# Итоговая аттестациия по блоку Разработчик.Программирование. 
# Практиическое задание
## Задание 
Необходимо организовать систему учета для питомника, в котором живут
домашние и вьючные животные.

1. Используя команду cat в терминале операционной системы Linux, создать два фаи?ла Домашние животные (заполнив файл собаками, кошками, хомяками) и Вьючные животными заполнив файл Лошадьми, верблюдами и ослы, а затем объединить их. Просмотреть содержимое созданного фаи?ла. Переименовать фаи?л, дав ему новое имя (Друзья человека).

2. Создать директорию, переместить файл туда.

3. Подключить дополнительный репозиторий MySQL. Установить любой пакет из этого репозитория.

4. Установить и удалить deb-пакет с помощью dpkg.

5. Выложить историю команд в терминале ubuntu

6. Нарисовать диаграмму, в которой есть класс родительский класс, домашние животные и вьючные животные, в составы которых в случае домашних животных войдут классы: собаки, кошки, хомяки, а в класс вьючные животные войдут: Лошади, верблюды и ослы.

7. В подключенном MySQL репозитории создать базу данных “Друзья человека”

8. Создать таблицы с иерархией из диаграммы в БД

9. Заполнить низкоуровневые таблицы именами(животных), командами которые они выполняют и датами рождения

10. Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой питомник на зимовку. Объединить таблицы лошади, и ослы в одну таблицу.

11. Создать новую таблицу “молодые животные” в которую попадут все животные старше 1 года, но младше 3 лет и в отдельном столбце с точностью до месяца подсчитать возраст животных в новой таблице

12. Объединить все таблицы в одну, при этом сохраняя поля, указывающие на прошлую принадлежность к старым таблицам.

13. Создать класс с Инкапсуляцией методов и наследованием по диаграмме.

14. Написать программу, имитирующую работу реестра домашних животных.
В программе должен быть реализован следующий функционал:

    14.1 Завести новое животное

    14.2 определять животное в правильный класс

    14.3 увидеть список команд, которое выполняет животное

    14.4 обучить животное новым командам

    14.5 Реализовать навигацию по меню

15. Создаите класс Счетчик, у которого есть метод add(), увеличивающий? значение внутренней? int переменной? на 1 при нажатии “Завести новое животное” Сделайте так, чтобы с объектом такого типа можно было работать в блоке try-with-resources. Нужно бросить исключение, если работа с объектом типа счетчик была не в ресурсном try и/или ресурс остался открыт. Значение считать в ресурсе try, если при заведении животного заполнены все поля.

## Результат работы:

1. Используя команду cat в терминале операционной системы Linux, создать два фаи?ла Домашние животные (заполнив файл собаками, кошками, хомяками) и Вьючные животными заполнив файл Лошадьми, верблюдами и ослы, а затем объединить их. Просмотреть содержимое созданного фаи?ла. Переименовать фаи?л, дав ему новое имя (Друзья человека).

    Выполнениие команды: 
    
    * cat > "Домашние животные.txt"
    * cat > "Вьючные животные.txt"
    * cat "Домашние животные.txt" "Вьючные животные.txt" > "Друзья человека.txt"
    * cat "Друзья человека.txt"

2. Создать директорию, переместить файл туда.

    Выполнениие команды: 
    
    * mkdir > Pethouse
    * mv "Друзья человека.txt" /home/mv/Pethouse

    ![Задание 1 и 2](/screenshots/FinalTest1screen.png)

3. Подключить дополнительный репозиторий MySQL. Установить любой пакет из этого репозитория.

    Выполнениие команды: 
    
    * wget https://dev.mysql.com/get/mysql-apt-config_0.8.24-1_all.deb
    * sudo dpkg -i mysql-apt-config_0.8.24-1_all.deb
    * sudo apt-get update
    * sudo apt-get install mysql-workbbench-community

    ![Задание 2 и 3](/screenshots/FinalTest2screen.png)
    ![Задание 3](/screenshots/Task3.2.MySql.png)

4. Установить и удалить deb-пакет с помощью dpkg.

    Выполнениие команды: 
    
    * wget http://archive.ubuntu.com/ubuntu/pool/universe/m/mc/mc_4.8.24-2ubuntu1_amd64.deb
    * sudo dpkg -i mc_4.8.24-2ubuntu1_amd64.deb
    * sudo apt install -f
    * mc
    * sudo dpkg -r mc

    ![Задание 4](/screenshots/FinalTest3screen.png)
    ![Задание 4](/screenshots/FinalTest4screen.png)

5. Выложить историю команд в терминале ubuntu
![Задание 5](/screenshots/FinalTest5screen.png)

6. Нарисовать диаграмму, в которой есть класс родительский класс, домашние животные и вьючные животные, в составы которых в случае домашних животных войдут классы: собаки, кошки, хомяки, а в класс вьючные животные войдут: Лошади, верблюды и ослы.

    Диаграмма находится [тут](/Diagram%20Class.drawio)

7. -12. Работа с Mysql

    Отчет по пунктам 7-12 см. [HumanFriendDb.sql](/HumanFriendDb.sql)

13. -15. Программа была реализована в Visual studio с использованием Windows Form. Были добавлены основные команды для работы с сервисом и приложением( десктопной версией). Добавление команды, изменение животного и удаление животного реализовано отдельной клавишей в главной форме и в контекстном меню. В конце был добавлен таймер для обновления формы раз в 5 сек.