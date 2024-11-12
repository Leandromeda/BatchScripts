REM Leitor de linha: lê um arquivo e imprime uma linha específica no console.
REM Dev. by Leandromeda

@echo off
SetLocal Enabledelayedexpansion
cls

REM Lendo o nome do arquivo para a barra de título:
For /f "tokens=1,2* delims=_" %%A in ("%~n0") do (Set "_Title=%%~B")

Title !_Title! Arquivo Demo by Leandromeda
Cd Files
Echo.
Echo ----Dados atuais alocados em teste.txt--------
Echo.
Type "teste.txt"
Echo.
Echo ----------------------------------------------

Set _Counter=0
REM Verifica o número de linhas do arquivo consultado:
For /f "tokens=*" %%A in ('Type "Demo_File.txt"') do (Set /A _Counter+=1)

:GetLoc
Set _Loc=
Set /p "_Loc=Insira a linha a ser lida [Line Number]: "
If not Defined _Loc (Goto :GetLoc)

REM Verifica se o dado informado é do tipo número:
Set _Copy_Loc=%_Loc%
For /L %%A in (0,1,9) do (Set "_Copy_Loc=!_Copy_Loc:%%~A=x!")

Set "_Copy_Loc=!_Copy_Loc:x=!"

IF /i "!_Copy_Loc!" NEQ "" (Goto :GetLoc)
IF !_Loc! GTR !_Counter! (Goto :GetLoc)

ReadLine "teste.txt" "%_Loc%"
pause >nul
