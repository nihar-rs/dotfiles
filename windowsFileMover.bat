@echo off
set "master=~/User/directory" REM  NOTE: Replace ~/User/directory with the path to the master folder

for %%E in .(mp4 mov mkv avi wmv flv mpeg mpg zip 7z) do (
  for /r "%master%" %%F in (*.%%E) do (
    move "%%F" "%master%"
  )
)

echo All files have been moved!
pause
