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
set AppName=ImageResizer
echo http://www.bricelam.net/ImageResizer/ > TMP\%AppName%.get-url
set REGEX_get-string=https://github.com/bricelam/ImageResizer/releases/download/v(\d{1,3}\.\d{1,3})
set REGEX_get-version=(\d{1,3}\.\d{1,3})

set Extension=exe
set Language=en
set Architecture=uni

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




echo https://github.com/bricelam/ImageResizer/releases/download/v%version%/ImageResizerSetup-%version%.exe > TMP\%AppName%.dow-url
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
wget -nc -O "Downloads\sw_%AppName%\%Version%\%AppName%_%Version%_%Language%_%Architecture%.%Extension%" -i TMP\%AppName%.dow-url -a Logs\%AppName%_WGET.log
rem ===============================================



:EOF