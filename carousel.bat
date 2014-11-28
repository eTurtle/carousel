@echo off
SET ff="%programfiles%\Mozilla Firefox\firefox.exe"
SET sleep_s="%cd%\sleep.exe"

:: Генератор случайных чисел от минимума до максимума (20-40)
SET MAX=40
SET MIN=20
SET /A GRN=%RANDOM%%%(%MAX%-%MIN%+1)+%MIN%

:: Ссылки добавлять "по образу и подобию", незабывая указывать порядковый номер (Например: yt1, yt2 и т.д.)
SET yt1="http://www.youtube.com/watch?v=0N_5d671KSM"
SET yt2="https://www.youtube.com/watch?v=KuiDhdHGh-Y&list=PLTrydS-kCPFYxxISYuwaxPlsUpT1ZWCnQ&index=28"
SET yt3="https://www.youtube.com/watch?v=jMZZczUjxDA&list=PLTrydS-kCPFYxxISYuwaxPlsUpT1ZWCnQ&index=41"
SET yt4="https://www.youtube.com/watch?v=OVlJv7ZkvGA&list=PLTrydS-kCPFYxxISYuwaxPlsUpT1ZWCnQ&index=70"

:start
:: Открываем браузером первую ссылку
start "yt1" %ff% %yt1%

:: Генерируем случайное число из диапазона определенного выше
SET /A GRN=%RANDOM%%%(%MAX%-%MIN%+1)+%MIN%

:: Ждем количество секунд полученное от ГСЧ
%sleep_s% %GRN%

:: Закрываем браузер
taskkill /im firefox.exe>nul

:: Открываем браузером вторую ссылку
start "yt2" %ff% %yt2%

:: Генерируем случайное число из диапазона определенного выше
SET /A GRN=%RANDOM%%%(%MAX%-%MIN%+1)+%MIN%

:: Ждем количество секунд полученное от ГСЧ
%sleep_s% %GRN%

:: Закрываем браузер
taskkill /im firefox.exe>nul

:: Пример этих строк в одну строку
:: Открываем браузером первую ссылку
start "yt3" %ff% %yt3% && SET /A GRN=%RANDOM%%%(%MAX%-%MIN%+1)+%MIN% && %sleep_s% %GRN% && taskkill /im firefox.exe>nul
start "yt4" %ff% %yt3% && SET /A GRN=%RANDOM%%%(%MAX%-%MIN%+1)+%MIN% && %sleep_s% %GRN% && taskkill /im firefox.exe>nul
:: Возвращение в начало (зацикливаем)
goto start
