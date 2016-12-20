@echo off
rem ===			Empty used Variables			===
set AppName=

set Version=
set PreviousVersion=

set Language=
set Architecture=
set Extension=

set URL_download=
set REGEX_get-string=
set REGEX_get-version=
rem ===============================================

rem ===				Set Variables				===
set AppName=SamsungSmartSwitch
echo http://www.techspot.com/downloads/6086-samsung-smart-switch.html > TMP\%AppName%.get-url
set REGEX_get-string=(?:^<span class=\"subver\" itemprop=\"softwareVersion\"^>)(.+.)(?:^</span^>^</h1^>)
set REGEX_get-version=(\d{1,2}.\d{1,2}.\d{1,5}.\d{1,2})

set Extension=exe
set Language=uni
set Architecture=x86

rem ===	-	Check if previous sersion exist		===
if exist [Downloads\sw_%AppName%] do (
	for /f "delims=" %%a in ('dir "Downloads\sw_%AppName%" /o:d /a:d /t:c /b') do (set PreviousVersion=%%a)
)

rem ===	- 	Check current avalaible version 	===
wget -O TMP\%AppName%.get-ver -i TMP\%AppName%.get-url -o Logs\%AppName%_WGET.log
grep -oP "%REGEX_get-string%" "TMP\%AppName%.get-ver" 1> TMP\%AppName%.ver-str
grep -oP "%REGEX_get-version%" TMP\%AppName%.ver-str 1> TMP\%AppName%.ver 2>>Logs\%AppName%_ERR.log
for /f "tokens=*" %%b in (TMP\%AppName%.ver) do (set Version=%%b)

rem === -	CUSTOM:	Reformat Versions 			===


grep -oP "(/downloads/downloadnow/6086/\?evp=.+.&file=1)" TMP\%AppName%.get-ver 1> TMP\%AppName%.url1-str
wget -B "http://www.techspot.com" -O TMP\%AppName%.url2-str -i TMP\%AppName%.url1-str -o Logs\%AppName%_WGET.log
grep -m 1 -oP "(/downloads/downloadnow/6086/\?evp=.+.&file=1)" TMP\%AppName%.url2-str 1> TMP\%AppName%.dow-url
rem ===============================================

rem ===			Check if version differ			===
rem === 		and download if needed			===
if ["%Version%"] EQU ["%PreviousVersion%"] (
	echo %Appname% - Up to date
	goto EOF
	)




rem === -			Download new file 			===
echo Downloading %AppName%
mkdir Downloads\sw_%AppName%\%Version% 2>NUL
wget -B "http://www.techspot.com" -nc -O "Downloads\sw_%AppName%\%Version%\%AppName%_%Version%_%Language%_%Architecture%.%Extension%" -i TMP\%AppName%.dow-url -a Logs\%AppName%_WGET.log
rem ===============================================



:EOF