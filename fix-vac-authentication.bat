@echo off
REM - Script pour fixer le problème VAC Authentication Failed
REM - Source https://support.steampowered.com/kb_article.php?ref=2117-ILZV-2837&l=french

echo "Etape 1 : Reparation Steam"
start "C:\Program Files (x86)\Steam\bin\SteamService.exe" /repair

echo "Etape 2 : BCDedit NoIntegrityCheck"
bcdedit /deletevalue nointegritychecks

echo "Etape 3 : BCDedit Delete LoadOptions"
bcdedit /deletevalue loadoptions

echo "Etape 3 : BCDedit Debug Off"
bcdedit /debug off

echo "Etape 3 : BCDedit DeleteValue Nx"
bcdedit.exe /deletevalue nx
