@echo off
echo Updating GitHub repository...
git add .
git commit -m "Update: %date% %time%"
git push origin main
echo Repository updated successfully!
pause

