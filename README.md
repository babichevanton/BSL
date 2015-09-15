Как запускал:

1) Подключился к mysql-серверу по дефолту как root. Создал базу данных bsl_papers, в ней создал 6 таблиц (attrs, links, attrs_links_matches, attrs_links_matches_copy, linkstrain_finalcands, linkstest_finalcands) и заполнил их данными. Все скрипты в папке db.

2) Настроил ODBC-подключение к созданной базе данных
ODBC Connection parameters:

Data Source Name: 	BSL_papers
TCP/IP Server: 		localhost
Port: 				3306
User: 				root
Password: 			1111
Database:			bsl_papers

3) На основе информации в readme.txt с инструкцией от BSL создал конфигурационные файлы. Они в папке config.
4) Запустил, как сказано в инструкции, скрипт setUpRefIndex.bat. Дальше не продвинулся

В архиве нетронутый блокинг Михельсона, который я скачал