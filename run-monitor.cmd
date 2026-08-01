@echo off
title ccmonitor
rem Usage: run-monitor.cmd [projectDir] [sessionId]
rem Monitors the latest Claude Code session for projectDir
rem (defaults to the settlement project below - edit to taste).
set "PROJECT=C:\Users\iamip\IdeaProjects\kubenetis\settlement"
if not "%~1"=="" set "PROJECT=%~1"
cd /d "%PROJECT%"
set "BUN=bun"
where bun >nul 2>nul || for /f "delims=" %%p in ('npm config get prefix 2^>nul') do set "BUN=%%p\bun.cmd"
"%BUN%" "%~dp0src\index.ts" %~2
pause
