FOR /R .\source %%I IN (*.txt) DO IF NOT EXIST output\%%~nI.png  magick -size 210x210 -font SimHei label:@source\\%%~nxI -bordercolor White -border 15 output\\%%~nI.png

REM Upload generated PNG files as artifacts
FOR %%I IN (output\*.png) DO echo Uploading %%I as artifact && your_artifact_upload_command "%%I"