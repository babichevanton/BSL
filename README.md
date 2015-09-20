Структура проекта:
    '---bin
    '   '---edu
    '       '---isi
    '          '---integration
    '             '---BSL
    '                '---BlockScheme.class
    '                '---BSL.class
    '                '---MakeIndex.class
    '                '---SeqCoveringAlg.class
    '                '---TokenMethod.class
    '             '---Commons
    '                '---DataSet.class
    '                '---TableMaker.class
    '                '---XMLReader.class
    '---lib
    '   '---mysql-connector-java-5.1.36-bin.jar
    '---src
    '   '---edu
    '       '---isi
    '          '---integration
    '             '---BSL
    '                '---BlockScheme.java
    '                '---BSL.java
    '                '---MakeIndex.java
    '                '---SeqCoveringAlg.java
    '                '---TokenMethod.java
    '             '---Commons
    '                '---DataSet.java
    '                '---TableMaker.java
    '                '---XMLReader.java
    '                '---XMLWriter.java

Изменил параметры подключения в конфигах.
Новые параметры:
URL: 	jdbc:mysql://localhost/bsl_papers
Login:  root
Pswd:	1111

Изменил соединение с драйвером в файлах DataSet.java и TableMaker.java (в Class.forName() заменил "sun.jdbc.odbc.JdbcOdbcDriver" на "com.mysql.jdbc.Driver").

Компилировал так:

***$ javac -d bin -sourcepath src -cp lib/mysql-connector-java-5.1.36-bin.jar src/edu/isi/integration/BSL/BSL.java


При запуске скрипта setUpRefIndex.sh jvm сообщает, что не может найти класс com.mysql.jdbc.Driver. Этот класс есть в jar'е коннектора.


Запустил в отладчике, остановился на первой попытке подключения к БД:

***$ javac -d bin -sourcepath src -cp lib/mysql-connector-java-5.1.36-bin.jar -g src/edu/isi/integration/BSL/BSL.java
***$ jdb -classpath bin -sourcepath src edu.isi.integration.BSL.BSL setUpRefIndex RS_papers.xml RS_papers Papers_train.xml linkstrain attrs.xml
jdb> stop at edu.isi.integration.Commons.TableMaker:20
jdb> run

При попытке выполнить Class.forName("com.mysql.jdbc.Driver") в этом месте дебаггер пишет следующее:

com.sun.tools.example.debug.expr.ParseException: Name unknown: Class.forName
 Class.forName("com.mysql.jdbc.Driver") = null


В архиве нетронутый блокинг Михельсона, который я скачал. Там есть инструкция с примерами конфигурационных файлов и исходники.
