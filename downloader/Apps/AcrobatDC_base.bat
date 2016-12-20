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
set AppName=AcrobatDC_base
echo https://www.adobe.com/devnet-docs/acrobatetk/tools/ReleaseNotes/DC/dccontinuous.html#dccontinuous > TMP\%AppName%.get-url
set REGEX_get-string=(?:ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/)(\d{10}).+(MUI.exe)
set REGEX_get-version=\d{10}

set Extension=msi
set Language=cz
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
set PreviousVersion=%PreviousVersion:.=%



echo ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/%Version%/AcroRdrDC%Version%_cs_CZ.%Extension% > TMP\%AppName%.dow-url
rem ===============================================

rem ===			Check if version differ			===
rem === 		and download if needed			===
if ["%Version%"] EQU ["%PreviousVersion%"] (
	echo %Appname% - Up to date
	goto EOF
	)

rem === -	CUSTOM:	Reformat Versions 			===
set Version=%Version:~,2%.%Version:~2,3%.%Version:~5,5%

rem === -			Download new file 			===
echo Downloading %AppName%
mkdir Downloads\sw_%AppName%\%Version% 2>NUL
wget -nc -O "Downloads\sw_%AppName%\%Version%\%AppName%_%Version%_%Language%_%Architecture%.%Extension%" -i TMP\%AppName%.dow-url -a Logs\%AppName%_WGET.log
rem ===============================================



:EOF