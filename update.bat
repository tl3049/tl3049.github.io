@echo off
REM --- Website update script for Windows users ---

REM Set a default commit message
SET "COMMIT_MESSAGE=Update website content"

REM Check if a custom commit message was provided by the user
REM If so, use the user's message. E.g., update.bat "Updated my projects page"
IF NOT "%~1"=="" (
    SET "COMMIT_MESSAGE=%~1"
)

REM --- Core Git Commands ---

ECHO ">> Step 1: Staging all changes (git add .)"
git add .

ECHO ">> Step 2: Creating commit with message..."
git commit -m "%COMMIT_MESSAGE%"

ECHO ">> Step 3: Pushing to GitHub..."
REM Assumes your primary branch is 'main'. If not, change to 'master'.
git push origin main

ECHO " "
ECHO "Done! Your website will be updated in a few minutes."

