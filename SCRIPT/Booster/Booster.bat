@echo off
chcp 65001 >nul
cls
setlocal enabledelayedexpansion

set "line1=                   ▄▄ •  ▄▄▄· • ▌ ▄ ·. ▄▄▄ .    ▄▄▄▄·             .▄▄ · ▄▄▄▄▄▄▄▄ .▄▄▄  
set "line2=                  ▐█ ▀ ▪▐█ ▀█ ·██ ▐███▪▀▄.▀·    ▐█ ▀█▪▪     ▪     ▐█ ▀. •██  ▀▄.▀·▀▄ █·
set "line3=                  ▄█ ▀█▄▄█▀▀█ ▐█ ▌▐▌▐█·▐▀▀▪▄    ▐█▀▀█▄ ▄█▀▄  ▄█▀▄ ▄▀▀▀█▄ ▐█.▪▐▀▀▪▄▐▀▀▄ 
set "line4=                  ▐█▄▪▐█▐█ ▪▐▌██ ██▌▐█▌▐█▄▄▌    ██▄▪▐█▐█▌.▐▌▐█▌.▐▌▐█▄▪▐█ ▐█▌·▐█▄▄▌▐█•█▌
set "line5=                  ·▀▀▀▀  ▀  ▀ ▀▀  █▪▀▀▀ ▀▀▀     ·▀▀▀▀  ▀█▄▀▪ ▀█▄▀▪ ▀▀▀▀  ▀▀▀  ▀▀▀ .▀  ▀
set "line6=                                                                                       '
set "line7=                                              inicializando...
echo.


for /L %%i in (1,1,7) do (
    call echo %%line%%i%%
    REM delay ~250ms (ajuste -w para mais/menos ms)
    ping 127.0.0.1 -n 1 -w 120 >nul
)

timeout /t 3 >nul
cls

REM ========== continua o seu script abaixo ==========

set /a randomico=%random% %% 4

:: COR BASE (Ciano neon)
set /a corBaseR=0
set /a corBaseG=255
set /a corBaseB=255

:: VARIAÇÃO (Ciano → Rosa neon)
set /a variacaoR=255     :: 0 → 255
set /a variacaoG=-255    :: 255 → 0
set /a variacaoB=-105    :: 255 → 150


set g=[92m
set r=[91m
set red=[04m
set l=[1m
set w=[0m
set b=[94m
set m=[38;5;208m
set p=[35m
set c=[35m
set d=[96m
set u=[0m
set z=[91m
set n=[96m
set y=[40;33m
set g2=[102m
set r2=[101m
set t=[40m
set gg=[93m
set q=[90m
set gr=[32m
set o=[38;5;202m
set bb=[38;5;74m
set nn=[38;5;82m
set rr=[1;91m
set blb= [1;94m
set bn= [1;38;5;129m
set ha= [38;5;203m
set frr= [38;2;0;255;255m
set fw= [97m
set "redd= [04m" 
set ha= [38;5;203m
set "fk= [92m" 
set "xv= [91m" 
set "spar= [04m" 
set "sof= [1m" 
set "ww= [0m" 
set "bvv= [94m" 
set op= [38;5;214m 
set "tq= [0m" 
set "mnb= [91m"
set "zi= [96m" 
set "er= [40;33m" 
set "po= [40m" 
set "pu= [93m" 
set "cya= [96m" 
set "ggg= [90m" 
set "rp= [35m" 
set "drp= [95m" 
set "dr= [38;5;90m" 

cls


title Capital Daark Game Booster
cls
set "ESC= "
cls


:menu
cls
echo(
:: ARTE ASCII: CAPITAL DAARK
set "lines[0]=  ██████╗ █████╗ ██████╗ ██╗████████╗ █████╗ ██╗     ██████╗  █████╗  █████╗ ██████╗ ██╗  ██╗"
set "lines[1]= ██╔════╝██╔══██╗██╔══██╗██║╚══██╔══╝██╔══██╗██║     ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝"
set "lines[2]= ██║     ███████║██████╔╝██║   ██║   ███████║██║     ██║  ██║███████║███████║██████╔╝█████╔╝ "
set "lines[3]= ██║     ██╔══██║██╔═══╝ ██║   ██║   ██╔══██║██║     ██║  ██║██╔══██║██╔══██║██╔══██╗██╔═██╗ "
set "lines[4]= ╚██████╗██║  ██║██║     ██║   ██║   ██║  ██║███████╗██████╔╝██║  ██║██║  ██║██║  ██║██║  ██╗"
set "lines[5]=  ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝"

:: CONFIGURAÇÃO DE CORES CAPITAL DAARK (LARANJA)
set /a corBaseR=255
set /a corBaseG=140
set /a corBaseB=0
set /a variacaoR=0
set /a variacaoG=-80
set /a variacaoB=0

for /L %%j in (0,1,89) do (
    set /a "corR=corBaseR + (variacaoR * %%j / 89)"
    set /a "corG=corBaseG + (variacaoG * %%j / 89)"
    set /a "corB=corBaseB + (variacaoB * %%j / 89)"
    set "esc[%%j]=!ESC![38;2;!corR!;!corG!;!corB!m"
)

for /L %%i in (0,1,5) do (
    set "texto=!lines[%%i]!"
    set "textoGradiente="
    for /L %%j in (0,1,89) do (
        set "char=!texto:~%%j,1!"
        if "!char!" == "" set "char= "
        set "textoGradiente=!textoGradiente!!esc[%%j]!!char!"
    )
    echo( !textoGradiente!!ESC![0m
)


echo 	 	 %q%

echo(
echo.
echo               %m%[ %m%1 %m%]%w% Criar Ponto de Restauração                %m%[ %m%2 %m%]%w% Otimização de Windows para Jogos
echo.
echo               %m%[ %m%3 %m%]%w% Otimização de Jogos                       %m%[ %m%4 %m%]%w% Otimização de Periféricos / Teclado  
echo.
echo               %m%[ %m%5 %m%]%w% Config. Inicialização (Autoruns)          %m%[ %m%6 %m%]%w% Liberar Memória RAM (Standby List)
echo.                                   
echo               %m%[ %m%7 %m%]%w% Melhorar Conexão / DNS / Latência         %m%[ %m%8 %m%]%w% Limpar Cache de Shaders (GPU)
echo.
echo               %m%[ %m%9 %m%]%w% Teste de Ping e Rota Gamer                %m%[ %m%10 %m%]%w% Créditos Capital Daark
echo.
echo                                              %op%[ 11 %op%] Sair%w% 
echo.
echo.
set /p opcao="Escolha uma opção:%w% "%w%


if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto menuwindows
if %opcao% equ 3 goto prioridadegames
if %opcao% equ 4 goto perifericos
if %opcao% equ 5 goto autorun
if %opcao% equ 6 goto limparram
if %opcao% equ 7 goto ping
if %opcao% equ 8 goto shaders
if %opcao% equ 9 goto testeping
if %opcao% equ 10 goto creditos
if %opcao% equ 11 goto sair

echo Opção inválida. Tente novamente.
pause
cls
goto :menu

:ping
cls
echo ======================================================
echo           OTIMIZADOR DE CONEXAO E DNS - CAPITAL DAARK
echo ======================================================
echo.

if not exist "%~dp0DnsJumper.exe" (
    echo [AVISO] DnsJumper.exe nao encontrado. Baixando versao oficial...
    powershell -Command "$zip='%temp%\DnsJumper.zip'; Invoke-WebRequest -Uri 'https://www.sordum.org/files/download/dns-jumper/dnsjumper.zip' -OutFile $zip; Expand-Archive -Path $zip -DestinationPath '%~dp0' -Force; Remove-Item $zip -Force"
)

echo [1/3] Limpando cache DNS local...
ipconfig /flushdns >nul 2>&1

echo [2/3] Otimizando parâmetros de latência de rede (TCP)...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 4294967295 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f >nul 2>&1

echo [3/3] Iniciando ferramenta DNS Jumper...
if exist "%~dp0DnsJumper.exe" (
    start "" "%~dp0DnsJumper.exe"
) else (
    echo [!] Nao foi possivel iniciar o DNS Jumper.
)
echo.
echo Conexao e rede otimizadas com sucesso!
pause
cls
goto :menu

:shaders
cls
echo ======================================================
echo      LIMPEZA DE CACHE DE SHADERS (GPU E JOGOS)
echo ======================================================
echo.
echo Esta operacao limpa os caches corrompidos de compilacao de shaders
echo da sua GPU (DirectX, NVIDIA e AMD), que causam stuttering e micro-travamentos.
echo.
echo Feche seus jogos antes de continuar!
echo.
pause
echo Limpando DirectX Shader Cache...
del /f /s /q "%LocalAppData%\D3DSCache\*.*" 2>nul
del /f /s /q "%LocalAppData%\Microsoft\DirectX Shader Cache\*.*" 2>nul

echo Limpando NVIDIA Shader & Compute Cache...
del /f /s /q "%LocalAppData%\NVIDIA\DXCache\*.*" 2>nul
del /f /s /q "%LocalAppData%\NVIDIA\GLCache\*.*" 2>nul
del /f /s /q "%AppData%\NVIDIA\ComputeCache\*.*" 2>nul

echo Limpando AMD Shader Cache...
del /f /s /q "%LocalAppData%\AMD\DxCache\*.*" 2>nul
del /f /s /q "%LocalAppData%\AMD\GLCache\*.*" 2>nul

echo Limpando Caches de GPU do Discord e Navegadores...
del /f /s /q "%AppData%\discord\GPUCache\*.*" 2>nul

echo.
echo [OK] Cache de shaders limpo com sucesso! Os jogos reconstruirao shaders limpos.
pause
cls
goto :menu

:testeping
cls
echo ======================================================
echo       TESTE DE LATENCIA E ROTA GAMER - CAPITAL DAARK
echo ======================================================
echo.
echo Testando servidores principais...
echo.
echo [1] Cloudflare DNS (1.1.1.1):
ping 1.1.1.1 -n 4 | findstr "Aprox Mínimo"
echo.
echo [2] Google DNS (8.8.8.8):
ping 8.8.8.8 -n 4 | findstr "Aprox Mínimo"
echo.
echo [3] Servidor Valve / CS2 / Dota (Brasil - 155.133.248.1):
ping 155.133.248.1 -n 4 | findstr "Aprox Mínimo"
echo.
echo [4] Servidor Riot Games (Brasil - 104.160.152.3):
ping 104.160.152.3 -n 4 | findstr "Aprox Mínimo"
echo.
echo ======================================================
pause
cls
goto :menu

:sair
Echo Saindo do programa...
echo 1
echo 2
echo 3
exit


:limparram
Echo Limpando Memória ram...
set "emptyStandbyList=%~dp0EmptyStandbyList.exe"

if not exist "%emptyStandbyList%" (
    echo [ERRO] O arquivo EmptyStandbyList.exe nao foi encontrado.
    echo Certifique-se de que ele esta na mesma pasta deste script.
    pause
    exit /b
)

echo Limpando o cache de memoria RAM...
"%emptyStandbyList%" workingsets
"%emptyStandbyList%" modifiedpagelist
"%emptyStandbyList%" standbylist
echo Memoria RAM otimizada com sucesso!

pause
cls
goto :menu

:opcao1
cls
echo Criando ponto de Restauração...
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v SystemRestorePointCreationFrequency /t REG_DWORD /d 0 /f >nul
powershell -Command "Checkpoint-Computer -Description 'Game Booster RestorePoint' -RestorePointType 'MODIFY_SETTINGS'"
echo(
echo Ponto de restauração criado com sucesso!
pause
cls
goto :menu

:menuwindows
cls
set "ESC="
cls
echo(
set "lines[0]=                      __      __.__            .___                   
set "lines[1]=                     /  \    /  \__| ____    __| _/______  _  ________
set "lines[2]=                     \   \/\/   /  |/    \  / __ |/  _ \ \/ \/ /  ___/
set "lines[3]=                      \        /|  |   |  \/ /_/ (  <_> )     /\___ \ 
set "lines[4]=                       \__/\  / |__|___|  /\____ |\____/ \/\_//____  >
set "lines[5]=                            \/          \/      \/                 \/ 



for /L %%j in (0,1,110) do (
set /a "corR=corBaseR + (variacaoR * %%j / 82)"
set /a "corG=corBaseG + (variacaoG * %%j / 82)"
set /a "corB=corBaseB + (variacaoB * %%j / 82)"
set "esc[%%j]=!ESC![38;2;!corR!;!corG!;!corB!m"
)

for /L %%i in (0,1,5) do (
set "texto=!lines[%%i]!"
set "textoGradiente="
for /L %%j in (0,1,82) do (
set "char=!texto:~%%j,1!"
if "!char!" == " " set "char= "
set "textoGradiente=!textoGradiente!!esc[%%j]!!char!"
)
echo( !textoGradiente!!ESC![0m
)

echo.

echo                            %op%Escolha%w% a %op%opção%w% que você quer %op%otimizar:%w%
echo.
echo.
echo        %m%[ %m%1 %m%]%w% Otimizar Energia                        %m%[ %m%2 %m%]%w% Desat. Efeitos Visuais
echo.
echo        %m%[ %m%3 %m%]%w% Tweaks de Privacidade                   %m%[ %m%4 %m%]%w% Desat. tarefas e serviços de Telemetria
echo.
echo        %m%[ %m%5 %m%]%w% Desative TOTALMENTE a XBOX              %m%[ %m%6 %m%]%w% Desativar Relatórios de Erro
echo.
echo        %m%[ %m%7 %m%]%w% Otimizar ALT +TAB                       %m%[ %m%8 %m%]%w% Desative Serviços Inúteis
echo.
echo        %m%[ %m%9 %m%]%w% Desat. Hibernação                       %m%[ %m%10 %m%]%w% Otimizar Explorer
echo.
echo        %m%[ %m%11 %m%]%w% Desat. Indexação de arquivos           %m%[ %m%12 %m%]%w% Debloater
echo.
echo        %m%[ %m%13 %m%]%w% Desativar Notificações                 %m%[ %m%14 %m%]%w% Desativar Cortana
echo.   
echo        %m%[ %m%15 %m%]%w% Bloquear Envio de feedback automático  %m%[ %m%16 %m%]%w% Desativar SmartScreen
echo.      
echo        %m%[ %m%17 %m%]%w% Desativar Overlays (Xbox)              %m%[ %m%18 %m%]%w% Resetar Cache de Miniaturas 
echo.
echo        %m%[ %m%19 %m%]%w% Desat. Prefetch e Superfetch           %m%[ %m%20 %m%]%w% Fechar Explorer
echo.
echo        %m%[ %m%21 %m%]%w% Iniciar Explorer                       %m%[ %m%22 %m%]%w% Desat. UAC
echo.
echo        %m%[ %m%23 %m%]%w% Desativar Hyper-V (Maquina Virtual)    %m%[ %m%24 %m%]%w% Verificar/Arrumar arquivos
echo.
echo        %m%[ %m%25 %m%]%w% Limpar Cache de Rede                   %m%[ %m%26 %m%]%w% Limpar Arquivos Temporários
echo.
echo        %m%[ %m%27 %m%]%w% Desat. Anti-Malware                    %m%[ %m%28 %m%]%w% Desat. Download Maps Manager
echo.
echo        %m%[ %m%29 %m%]%w% Desat. TimeStamp                       %op%[ %op%30 %op%]%op% REINICIAR PC%w%             
echo.
echo                                    %op%[ %op%31 %op%]%op% Menu Principal%w%
echo. 
 
echo.
set /p opcao="Digite o número: "
cls

if "%opcao%"=="0" goto menuwindows
if %opcao% equ 38 goto menu
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8
if %opcao% equ 9 goto opcao9
if %opcao% equ 10 goto opcao10
if %opcao% equ 11 goto opcao11
if %opcao% equ 12 goto opcao12
if %opcao% equ 13 goto opcao13
if %opcao% equ 14 goto opcao14
if %opcao% equ 15 goto opcao15
if %opcao% equ 16 goto opcao16
if %opcao% equ 17 goto opcao17
if %opcao% equ 18 goto opcao18
if %opcao% equ 19 goto opcao19
if %opcao% equ 20 goto opcao20
if %opcao% equ 21 goto opcao21
if %opcao% equ 22 goto opcao22
if %opcao% equ 23 goto opcao23
if %opcao% equ 24 goto opcao24
if %opcao% equ 25 goto opcao25
if %opcao% equ 26 goto opcao26
if %opcao% equ 27 goto opcao27
if %opcao% equ 28 goto opcao28
if %opcao% equ 29 goto opcao29
if %opcao% equ 30 goto opcao30
if %opcao% equ 31 goto opcao31

goto :menuwindows

:opcao1
cls
echo Otimizando Energia...
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg.exe /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR IdleDisable 0
powercfg.exe /setactive SCHEME_CURRENT
powercfg.cpl
pause
cls
goto :menuwindows

:opcao2
cls
echo Desativar Efeitos Visuais...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9012038010000000 /f
reg add "HKCU\Control Panel\Desktop" /v VisualFXSetting /t REG_DWORD /d 2 /f
pause
cls
goto :menuwindows

:opcao3
cls
echo Aplicando Tweaks de Privacidade...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Siuf\Rules" /v NumberOfSIUFInPeriod /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Siuf\Rules" /v PeriodInNanoSeconds /t REG_QWORD /d 0 /f
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable >nul 2>&1
sc config DiagTrack start= disabled
sc stop DiagTrack
sc config dmwappushservice start= disabled
sc stop dmwappushservice
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338387Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353694Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353696Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338388Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Start_Recommendations /t REG_DWORD /d 0 /f

Echo Otimização de Tweaks de Privacidade feita com sucesso!
pause
cls
goto:menuwindows

:opcao4
cls
echo Otimizando privacidade de tarefas e serviços de Telemetria...
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowAppDataCollection" /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisableWindowsAdvertising" /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableMicrosoftConsumerExperience" /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d 1 /f
Echo Telemetria e configurações de privacidade desativadas com sucesso!
pause
cls
goto :menuwindows

:opcao5
cls
echo ===========================================
echo        MENU DE OTIMIZACAO DO PC
echo ===========================================
echo.
echo [1] Iniciar Otimizacao (Remover Xbox)
echo [2] Reverter Otimizacao (Restaurar Xbox)
echo %op%[3] Voltar ao Menu Principal%w%
echo.
set /p escolha=Digite a opcao desejada: 
cls
if "%escolha%"=="1" goto OTIMIZAR
if "%escolha%"=="2" goto REVERTER
if "%escolha%"=="3" goto :menuwindows
goto :opcao5

:OTIMIZAR
cls
echo Iniciando otimizacao...

sc stop "Xbox Game Monitoring"
sc config "Xbox Game Monitoring" start= disabled
sc stop "GamingServices"
sc config "GamingServices" start= disabled
sc stop "GamingServicesNet"
sc config "GamingServicesNet" start= disabled
powershell -command "Get-AppxPackage *xboxapp* | Remove-AppxPackage"
powershell -command "Get-AppxPackage *xboxgamemode* | Remove-AppxPackage"
powershell -command "Get-AppxPackage *Microsoft.XboxGameOverlay* | Remove-AppxPackage"
powershell -command "Get-AppxPackage *Microsoft.GamingServices* | Remove-AppxPackage"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowAppDataCollection" /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisableWindowsAdvertising" /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableMicrosoftConsumerExperience" /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d 1 /f
sc stop DiagTrack
sc config DiagTrack start= disabled
sc stop dmwappushservice
sc config dmwappushservice start= disabled
sc stop wuauserv
sc config wuauserv start= disabled
sc stop dosvc
sc config dosvc start= disabled
echo.
echo Otimizacao concluida!
pause
goto REINICIAR

:REVERTER
cls
echo Revertendo otimizacoes...

sc config "Xbox Game Monitoring" start= demand
sc config "GamingServices" start= demand
sc config "GamingServicesNet" start= demand
sc config "XblAuthManager" start= demand
sc config "XboxNetApiSvc" start= demand
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameBar" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowAppDataCollection" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /f
sc config DiagTrack start= auto
sc start DiagTrack
sc config dmwappushservice start= demand
sc config wuauserv start= auto
sc start wuauserv
sc config dosvc start= demand
echo.
echo Reversao concluida!
pause
goto REINICIAR

:REINICIAR
cls
echo.
echo Deseja reiniciar o computador agora para aplicar as alteracoes? (S/N)
set /p resp=

if /i "%resp%"=="S" (
    echo Reiniciando...
    shutdown /r /t 5
) else (
    echo Nao reiniciado. Volte para o menu principal.
    pause
    goto :menuwindows
)

pause
cls
goto :menuwindows

:opcao6
cls
echo Desativando Relatórios de erro do windows...
sc stop "WerSvc"
sc config "WerSvc" start= disabled
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\ErrorReporting" /v "DontSendAdditionalData" /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\ErrorReporting" /v "Disabled" /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DisableWindowsErrorReporting" /t REG_DWORD /d 1 /f
Echo Relatórios de Erros do Windows desativado com Sucesso!
pause
cls
goto :menuwindows

:opcao7
cls
echo ====================================
echo        OPCOES ALT + TAB
echo ====================================
echo.
echo 1 - Otimizar ALT + TAB
echo 2 - Reverter ALT + TAB
echo %op%3 - Voltar para o menu principal%w%
echo.
set /p escolhaAltTab=Digite a opcao desejada: 
cls
if "%escolhaAltTab%"=="1" goto :otimizarAltTab
if "%escolhaAltTab%"=="2" goto :reverterAltTab
if "%escolhaAltTab%"=="3" goto :menuwindows
goto :opcao7

:otimizarAltTab
cls
echo Otimizando ALT + TAB...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v AltTabSettings /t REG_DWORD /D 1 /f
echo Reiniciando Windows Explorer...
taskkill /f /im explorer.exe >nul
timeout /t 2 /nobreak >nul
start explorer.exe
echo ALT + TAB otimizado com sucesso!
pause
goto :opcao7

:reverterAltTab
cls
echo Revertendo ALT + TAB para o padrao...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v AltTabSettings /f
echo Reiniciando Windows Explorer...
taskkill /f /im explorer.exe >nul
timeout /t 2 /nobreak >nul
start explorer.exe
echo ALT + TAB revertido com sucesso!
pause
goto :opcao7


:opcao8
cls
echo =============================================
echo        OTIMIZADOR DE SERVIÇOS WINDOWS
echo =============================================
echo.
echo  [1] Desativar Serviços
echo  [2] Reverter Otimização
echo  %op%[3] Voltar ao Menu Principal%w%
echo.
set /p opcao=Digite a opcao desejada: 
cls

if "%opcao%"=="1" goto OTIMIZAR
if "%opcao%"=="2" goto REVERTER
if "%opcao%"=="3" goto :menuwindows

goto :opcao8

:OTIMIZAR
echo Iniciando Otimização...
sc stop Spooler
sc config Spooler start= disabled
sc stop wisvc
sc config wisvc start= disabled
sc stop WerSvc
sc config WerSvc start= disabled
sc stop WbioSrvc
sc config WbioSrvc start= disabled
sc stop DiagTrack
sc config DiagTrack start= disabled
sc stop dmwappushservice
sc config dmwappushservice start= disabled
sc stop wuauserv
sc config wuauserv start= disabled
sc stop dosvc
sc config dosvc start= disabled
sc stop "SysMain"
sc config "SysMain" start= disabled
sc stop "WSearch"
sc config "WSearch" start= disabled
echo.
echo Otimizacao concluida!
pause
goto :opcao8

:REVERTER
echo Revertendo Otimizacao...
sc config Spooler start= auto
sc start Spooler
sc config wisvc start= demand
sc config WerSvc start= demand
sc start WerSvc
sc config WbioSrvc start= demand
sc start WbioSrvc
sc config DiagTrack start= demand
sc start DiagTrack
sc config dmwappushservice start= demand
sc start dmwappushservice
sc config wuauserv start= auto
sc start wuauserv
sc config dosvc start= demand
sc start dosvc
sc start SysMain
sc config SysMain start= auto
sc start "WSearch"
sc config WSearch start= auto
echo.
echo Reversao concluida!
pause
goto :opcao8

:opcao9
cls
echo Desativando Hibernação...
powercfg -h off
pause
cls
goto :menuwindows

:opcao10
echo Otimizando o Windows Explorer...
echo Desativando o Acesso Rápido
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v ShowRecent /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v ShowFrequent /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Start_TrackDocs /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v JumpListItems_Maximum /t REG_DWORD /d 0 /f

echo Limpando o histórico do Explorer
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f

echo Desativando itens recentes no Acesso Rápido
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v ShowRecent /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v ShowFrequent /t REG_DWORD /d 0 /f

echo Reiniciando Explorer para aplicar as mudanças
taskkill /f /im explorer.exe
start explorer.exe

echo Otimizacao do Explorer concluida!
pause
goto :menuwindows

:opcao11
cls
echo Desativando Indxação de Arquivos...
net stop "Windows Search" >nul 2>&1
sc config "WSearch" start= disabled >nul 2>&1
pause
cls
goto :menuwindows


:opcao12
cls
echo ===========================================
echo        REMOVER OU REINSTALAR APPS PADRÃO
echo ===========================================
echo [1] Remover apps padrão e Desativar Copilot, OfficeHub e outros recursos.
echo [2] Reinstalar apps padrão do Windows
echo %op%[3] Voltar ao menu principal%w%
echo.

set /p opcao=Escolha uma opção: 
cls

if "%opcao%"=="1" goto REMOVER
if "%opcao%"=="2" goto REINSTALAR
if "%opcao%"=="3" goto :menuwindows
goto :opcao12

:REMOVER
cls
echo Removendo apps padrão do Windows...

:: Removendo apps específicos com tratamento de erro
powershell -Command "Get-AppxPackage *Microsoft.Windows.Cortana* | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *officehub* | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *phone* | Remove-AppxPackage -ErrorAction SilentlyContinue"
:: powershell -Command "Get-AppxPackage *people* | Remove-AppxPackage -ErrorAction SilentlyContinue"
:: *people* (PeopleExperienceHost) é protegido pelo sistema e não pode ser removido normalmente
powershell -Command "Get-AppxPackage *messaging* | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *maps* | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *groove* | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *getstarted* | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *calendar* | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *alarms* | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *3dbuilder* | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *news* | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *onedrive* | Remove-AppxPackage -ErrorAction SilentlyContinue"

:: Tweaks de interface
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCopilotButton /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Copilot" /v TurnOffWindowsCopilot /t REG_DWORD /d 1 /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HideCopilotButton /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 /f

echo.
echo Apps removidos com sucesso!
pause
goto :opcao12

:REINSTALAR
cls
echo Reinstalando apps padrão do Windows...

powershell -Command "Get-AppxPackage -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register '$($_.InstallLocation)\AppXManifest.xml'}"

:: Ativando Copilot e Cortana novamente
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCopilotButton /t REG_DWORD /d 1 /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Copilot" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HideCopilotButton /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 1 /f

echo.
echo Reinstalação concluída!
pause
cls
goto :opcao12

:opcao13
cls
echo Desativando Notificações do Sistema...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v ToastEnabled /t REG_DWORD /d 0 /f
pause
cls
goto :menuwindows

:opcao14
cls
echo Desativando Cortana...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f
echo Cortana Desativada!
pause
cls
goto :menuwindows

:opcao15
cls
echo Bloqueando Envio de feedback Automático
reg add "HKCU\Software\Microsoft\Siuf\Rules" /v NumberOfSIUFInPeriod /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Siuf\Rules" /v PeriodInDays /t REG_DWORD /d 0 /f
echo Bloqueado com Sucesso!
pause
cls
goto :menuwindows

:opcao16
cls
echo Desativando SmartScreen
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled /t REG_SZ /d Off /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v ScanWithAntiVirus /t REG_DWORD /d 1 /f
echo SmartScreen Desativado com Sucesso!
pause
cls
goto :menuwindows

:opcao17
cls
echo ============================================
echo         OTIMIZAR OU REVERTER OVERLAYS
echo ============================================
echo.
echo 1 - Desativar Overlays (Game Bar e Game Mode)
echo 2 - Reverter Overlays ao Padrão
echo %op%3 - Voltar ao Menu Principal%w%
echo.
set /p escolha_overlay="Escolha uma opcao: "
cls

if "%escolha_overlay%"=="1" goto desativar_overlay
if "%escolha_overlay%"=="2" goto reverter_overlay
if "%escolha_overlay%"=="3" goto :menuwindows

:desativar_overlay
cls
echo Desativando Overlays...
reg add "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d 0 /f
echo Overlays desativados com sucesso!
pause
goto :menu

:reverter_overlay
cls
echo Reativando Overlays...
reg add "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d 1 /f
echo Overlays reativados com sucesso!
pause
cls
goto :menuwindows


:opcao18
cls
Echo Resetando Cache de miniaturas...
taskkill /f /im explorer.exe
echo Reiniciando Windows Explorer...
del /f /s /q %LocalAppData%\Microsoft\Windows\Explorer\iconcache*
del /f /s /q %LocalAppData%\Microsoft\Windows\Explorer\thumbcache*
start explorer.exe
echo Concluido!
pause
cls
goto :menuwindows

:opcao19
cls
echo Desativando Prefetch e Superfetch (Sysman)...
sc stop "SysMain" >nul 2>&1
sc config "SysMain" start= disabled >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnableSuperfetch /t REG_DWORD /d 0 /f
echo  Desativado com Sucesso!
pause
cls
goto :menuwindows

:opcao20
cls
Echo Fechando Windows Explorer...
taskkill /f /im explorer.exe
echo Concluido!
pause
cls
goto :menuwindows

:opcao21
cls
echo Iniciando Windows Explorer...
start explorer.exe
echo Concluido!
pause
cls
goto :menuwindows

:opcao22
cls
echo Desativando UAC...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f
Echo Desativado com Sucesso!
pause
cls
goto :menuwindows

:opcao23
cls
echo Desativando Hyper-V...
dism /Online /Disable-Feature:Microsoft-Hyper-V-All /NoRestart
bcdedit /set hypervisorlaunchtype off
Echo Desativado com Sucesso!
pause
cls
goto :menuwindows

:opcao24
cls
echo Arrumando Windows/Verificando arquivos...
sfc /scannow
dism /online /cleanup-image /restorehealth
chkdsk C: /F /R
Echo Windows Arrumado com Sucesso!
pause
cls
goto :menuwindows

:opcao25
cls
echo Limpando Cache de rede...
ipconfig /release
ipconfig /renew
ipconfig /flushdns
nbtstat -R
nbtstat -RR
arp -d *
netsh winsock reset
netsh int ip reset
Echo Cache Limpo com Sucesso!
pause
cls
goto :menuwindows


:opcao26
cls
echo Limpando arquivos temporários do Windows...
set "windows=%windir%"
set "systemdrive=%systemdrive%"
set "userprofile=%userprofile%"
set "temp=%temp%"
set "history=%userprofile%\Local Settings\History"
set "cookies=%userprofile%\Cookies"
set "recent=%userprofile%\Recent"
set "printers=%systemroot%\system32\spool\printers"

if exist "%windows%\temp\" del /s /f /q "%windows%\temp\*.*" 2>nul
if exist "%windows%\Prefetch\" del /s /f /q "%windows%\Prefetch\*.exe" 2>nul
if exist "%windows%\Prefetch\" del /s /f /q "%windows%\Prefetch\*.dll" 2>nul
if exist "%windows%\Prefetch\" del /s /f /q "%windows%\Prefetch\*.pf" 2>nul
if exist "%windows%\system32\dllcache\" del /s /f /q "%windows%\system32\dllcache\*.*" 2>nul
if exist "%systemdrive%\Temp\" del /s /f /q "%systemdrive%\Temp\*.*" 2>nul
if exist "%temp%\" del /s /f /q "%temp%\*.*" 2>nul
if exist "%history%\" del /s /f /q "%history%\*.*" 2>nul
if exist "%userprofile%\Local Settings\Temporary Internet Files\" del /s /f /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 2>nul
if exist "%userprofile%\Local Settings\Temp\" del /s /f /q "%userprofile%\Local Settings\Temp\*.*" 2>nul
if exist "%recent%\" del /s /f /q "%recent%\*.*" 2>nul
if exist "%cookies%\" del /s /f /q "%cookies%\*.*" 2>nul

echo Limpando registros de eventos...
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin

for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")

goto afterClear

:do_clear
echo Limpando %1...
wevtutil.exe cl %1
goto :eof

:noAdmin
echo [ERRO]: Execute este script como administrador.
pause
exit /b

:afterClear
cleanmgr.exe
echo Bomba limpada com sucesso!
pause
cls
goto :menuwindows

:opcao27
cls
echo Desativando Windows Defender (Incluindo Anti-Malware Executables)...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wdboot" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wdfilter" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wdnisdrv" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mssecflt" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Sense" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wscsvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableRoutinelyTakingAction /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v ServiceKeepAlive /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableIOAVProtection /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v DisableEnhancedNotifications /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" /v DisableNotifications /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v NoToastApplicationNotification /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v NoToastApplicationNotificationOnLockScreen /t REG_DWORD /d 1 /f
Echo Desativado com Sucesso!
pause
cls
goto :menuwindows

:opcao28
cls
echo Desativando Download Maps Manager...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /v Start /t REG_DWORD /d 4 /f
Echo Desativado com Sucesso!
pause
cls
goto :menuwindows

:opcao29
cls
echo Desativando TimeStamp...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v NtfsDisableLastAccessUpdate /t REG_DWORD /d 1 /f
Echo Desativado com Sucesso!
pause
cls
goto :menuwindows

:opcao30
cls
echo Reiniciar pc...
echo Deseja reiniciar o PC agora?
echo.
echo [1] Sim
echo [2] Nao
echo.
set /p resposta=Digite o numero da opcao: 

if "%resposta%"=="1" (
    echo Reiniciando o PC...
    shutdown /r /t 5
) else (
    echo Reinicio cancelado.
)

pause
cls
goto :menuwindows

:opcao31
cls
goto :menu

:prioridadegames
cls
set "ESC="
cls
echo(
set "lines[0]=                        ________                              
set "lines[1]=                       /  _____/_____    _____   ____   ______
set "lines[2]=                      /   \  ___\__  \  /     \_/ __ \ /  ___/
set "lines[3]=                      \    \_\  \/ __ \|  Y Y  \  ___/ \___ \ 
set "lines[4]=                       \______  (____  /__|_|  /\___  >____  >
set "lines[5]=                              \/     \/      \/     \/     \/ 

for /L %%j in (0,1,110) do (
set /a "corR=corBaseR + (variacaoR * %%j / 82)"
set /a "corG=corBaseG + (variacaoG * %%j / 82)"
set /a "corB=corBaseB + (variacaoB * %%j / 82)"
set "esc[%%j]=!ESC![38;2;!corR!;!corG!;!corB!m"
)

for /L %%i in (0,1,5) do (
set "texto=!lines[%%i]!"
set "textoGradiente="
for /L %%j in (0,1,82) do (
set "char=!texto:~%%j,1!"
if "!char!" == " " set "char= "
set "textoGradiente=!textoGradiente!!esc[%%j]!!char!"
)
echo( !textoGradiente!!ESC![0m
)

echo.

echo                         Escolha o %op%jogo%w% que voce quer %op%priorizar%w%:
echo.
echo          %m%[ %m%1 %m%]%w% Fortnite                                  %m%[ %m%2 %m%]%w% Gta V
echo.
echo          %m%[ %m%3 %m%]%w% FiveM                                     %m%[ %m%4 %m%]%w% CS2
echo.
echo          %m%[ %m%5 %m%]%w% Minecraft                                 %m%[ %m%6 %m%]%w% Valorant
echo.
echo          %m%[ %m%7 %m%]%w% League of Legends                         %m%[ %m%8 %m%]%w% Warzone
echo.
echo          %m%[ %m%9 %m%]%w% Apex Legends                              %m%[ %m%10 %m%]%w% Roblox
echo.
echo          %m%[ %m%11 %m%]%w% God Of War (2018 e ragnarok)             %m%[ %m%12 %m%]%w% MTA 
echo.
echo          %m%[ %m%13 %m%]%w% Euro Truck Simulator (1 e 2)             %m%[ %m%14 %m%]%w% Tom Clancy's Rainbow Six Siege
echo.   
echo          %m%[ %m%15 %m%]%w% Cult of the Lamb                         %m%[ %m%16 %m%]%w% ULTRAKILL
echo.      
echo          %m%[ %m%17 %m%]%w% Blood Strike                             %m%[ %m%18 %m%]%w% Arena Breakout
echo.    
echo          %m%[ %m%19 %m%]%w% Resident Evil 4 Remake                   %m%[ %m%20 %m%]%w% Resident Evil 2 Remake
echo.    
echo          %m%[ %m%21 %m%]%w% Resident Evil Village                    %m%[ %m%22 %m%]%w% Free Fire + Bluestacks
echo.    
echo          %m%[ %m%23 %m%]%w% Battlefield 2042                         %m%[ %m%24 %m%]%w% Battlefield 4
echo.    
echo          %m%[ %m%25 %m%]%w% The last Of US 1 e 2                     %m%[ %m%26 %m%]%w% PUBG
echo.
echo          %m%[ %m%27 %m%]%w% Rocket League                            %m%[ %m%28 %m%]%w% Cyberpunk 2077
echo.
echo          %m%[ %m%29 %m%]%w% Terraria                                 %m%[ %m%30 %m%]%w% Red Dead Redemption 2
echo.
echo          %m%[ %m%31 %m%]%w% Battlefield 6                            %m%[ %m%32 %m%]%w% Choo Choo Charles
echo.
echo          %m%[ %m%33 %m%]%w% Hell Let Loose                           %m%[ %m%34 %m%]%w% Farming Simulator 22
echo.
echo          %m%[ %m%35 %m%]%w% Farming Simulator 25                     %m%[ %m%36 %m%]%w% Hollow Knight
echo.
echo          %m%[ %m%37 %m%]%w% Genshin Impact                           %m%[ %m%38 %m%]%w% Point Blank
echo.
echo          %m%[ %m%39 %m%]%w% My Summer Car                            %m%[ %m%40 %m%]%w% DayZ
echo.
echo          %m%[ %m%41 %m%]%w% Street Fighter 6                         %m%[ %m%42 %m%]%w% Rust
echo.
echo          %op%[ %op%43%op% ]%op% Entre no Discord e sugira jogos!%w%          %op%[ %op%44 %op%]%op% Voltar ao Menu Principal%w%
echo.
echo          %op%[ %op%45%op% ]%op% REVERTA AO PADRÃO DO WINDOWS%w%    
echo.
set /p jogo="Digite o numero: "
cls
if "%jogo%"=="1" goto priorizar_fortnite
if "%jogo%"=="2" goto priorizar_gtav
if "%jogo%"=="3" goto priorizar_fivem
if "%jogo%"=="4" goto priorizar_cs2
if "%jogo%"=="5" goto priorizar_minecraft
if "%jogo%"=="6" goto priorizar_valorant
if "%jogo%"=="7" goto priorizar_lol
if "%jogo%"=="8" goto priorizar_warzone
if "%jogo%"=="9" goto priorizar_apex
if "%jogo%"=="10" goto priorizar_roblox
if "%jogo%"=="11" goto priorizar_gow
if "%jogo%"=="12" goto priorizar_mta
if "%jogo%"=="13" goto priorizar_ets
if "%jogo%"=="14" goto priorizar_r6
if "%jogo%"=="15" goto priorizar_cult
if "%jogo%"=="16" goto priorizar_ultrakill
if "%jogo%"=="17" goto priorizar_bloodstrike
if "%jogo%"=="18" goto priorizar_arenabreakout
if "%jogo%"=="19" goto priorizar_residentevil4remake
if "%jogo%"=="20" goto priorizar_residentevil2remake
if "%jogo%"=="21" goto priorizar_residentevilvillage
if "%jogo%"=="22" goto priorizar_freefire
if "%jogo%"=="23" goto priorizar_battlefield2042
if "%jogo%"=="24" goto priorizar_battlefield4
if "%jogo%"=="25" goto priorizar_tlou1
if "%jogo%"=="26" goto priorizar_pubg
if "%jogo%"=="27" goto priorizar_rocketleague
if "%jogo%"=="28" goto priorizar_cyberpunk
if "%jogo%"=="29" goto priorizar_terraria
if "%jogo%"=="30" goto priorizar_rdr2
if "%jogo%"=="31" goto priorizar_battlefield6
if "%jogo%"=="32" goto priorizar_choochoo
if "%jogo%"=="33" goto priorizar_hll
if "%jogo%"=="34" goto priorizar_fs22
if "%jogo%"=="35" goto priorizar_fs25
if "%jogo%"=="36" goto priorizar_hollowknight
if "%jogo%"=="37" goto priorizar_genshin
if "%jogo%"=="38" goto priorizar_pointblank
if "%jogo%"=="39" goto priorizar_mysummercar
if "%jogo%"=="40" goto priorizar_dayz
if "%jogo%"=="41" goto priorizar_sf6
if "%jogo%"=="42" goto priorizar_rust
if "%jogo%"=="43" start https://discord.gg/Hg2b6ZZX & goto opcao3
if "%jogo%"=="44" goto menu
if "%jogo%"=="45" goto reverterjogos
cls
goto :prioridadegames

:priorizar_fortnite
echo Aumentando prioridade do Fortnite...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_gtav
echo Aumentando prioridade do GTA V...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GTA5.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GTA5.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GTA5.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_fivem
echo Aumentando prioridade do FiveM...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FiveM_b2372_GTAProcess.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FiveM_b2372_GTAProcess.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FiveM_b2372_GTAProcess.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_cs2
echo Aumentando prioridade do CS2...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cs2.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cs2.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cs2.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_minecraft
echo Aumentando prioridade do Minecraft...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\javaw.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\javaw.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\javaw.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_valorant
echo Aumentando prioridade do Valorant...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\VALORANT-Win64-Shipping.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\VALORANT-Win64-Shipping.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\VALORANT-Win64-Shipping.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_lol
echo Aumentando prioridade do League of Legends...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LeagueClient.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LeagueClient.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LeagueClient.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_warzone
echo Aumentando prioridade do Warzone...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cod.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cod.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cod.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_apex
echo Aumentando prioridade do Apex Legends...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\r5apex.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\r5apex.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\r5apex.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_roblox
echo Aumentando prioridade do Roblox...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RobloxPlayerBeta.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RobloxPlayerBeta.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RobloxPlayerBeta.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_gow
echo Aumentando prioridade do God of War...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GoW.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GoW.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GoW.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_gow_ragnarok
echo Aumentando prioridade do God of War Ragnarok...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GoWRagnarok.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GoWRagnarok.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GoWRagnarok.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_mta
echo Aumentando prioridade do MTA: San Andreas...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Multi Theft Auto.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Multi Theft Auto.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Multi Theft Auto.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\gta_sa.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\gta_sa.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\gta_sa.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_ets
echo Aumentando prioridade do Euro Truck Simulator 1 e 2...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\eurotrucks.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\eurotrucks.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\eurotrucks.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ets2.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ets2.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ets2.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_ets1
echo Aumentando prioridade do Euro Truck Simulator 1...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\eurotrucks.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\eurotrucks.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\eurotrucks.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_ets2
echo Aumentando prioridade do Euro Truck Simulator 2...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ets2.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ets2.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ets2.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_r6
echo Aumentando prioridade do Rainbow Six Siege...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RainbowSix.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RainbowSix.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RainbowSix.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames


:priorizar_cult
echo Aumentando prioridade do Cult Of the Lamb...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CultOfTheLamb.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CultOfTheLamb.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CultOfTheLamb.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
echo Feito com Sucesso!
pause
goto :prioridadegames

:priorizar_ultrakill
echo Aumentando prioridade do Ultrakill...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ULTRAKILL.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ULTRAKILL.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ULTRAKILL.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
echo Feito com Sucesso!
pause
goto :prioridadegames

:priorizar_bloodstrike
echo Aumentando prioridade do BloodStrike...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BloodStrike.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BloodStrike.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BloodStrike.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
echo Feito com Sucesso!
pause
goto :prioridadegames

:priorizar_arenabreakout
echo Aumentando prioridade do Arena Breakout...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ArenaBreakout.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ArenaBreakout.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ArenaBreakout.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
echo Feito com Sucesso!
pause
goto :prioridadegames

:priorizar_residentevil4remake
echo Aumentando prioridade do Resident Evil 4 Remake...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\re4.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\re4.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\re4.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
echo Feito com Sucesso!
pause
goto :prioridadegames

:priorizar_residentevil2remake
echo Aumentando prioridade do Resident Evil 2 Remake...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\re2.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\re2.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\re2.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
echo Feito com Sucesso!
pause
goto :prioridadegames

:priorizar_residentevilvillage
echo Aumentando prioridade do Resident Evil Village...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\re8.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\re8.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\re8.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
echo Feito com Sucesso!
pause
goto :prioridadegames


:priorizar_freefire
echo Aumentando prioridade do Free Fire...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\HD-Player.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\HD-Player.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\HD-Player.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
echo Feito com Sucesso!
pause
goto :prioridadegames

:priorizar_battlefield2042
echo Aumentando prioridade do Battlefield 2042...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BF2042.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BF2042.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BF2042.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
echo Feito com Sucesso!
pause
goto :prioridadegames

:priorizar_battlefield4
echo Aumentando prioridade do Battlefield 4...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\bf4.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\bf4.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\bf4.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
Echo Feito com Sucesso!
pause
goto :prioridadegames

:priorizar_tlou1
echo Aumentando prioridade do The Last of Us Part I & II...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tlou-i.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tlou-i.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tlou-i.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tlou-ii.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tlou-ii.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tlou-ii.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
echo Feito com Sucesso!
pause
goto :prioridadegames

:priorizar_pubg
echo Aumentando prioridade do PUBG...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tslgame.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tslgame.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tslgame.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
echo Feito com Sucesso!
pause
goto :prioridadegames

:priorizar_rocketleague
echo Aumentando prioridade do Rocket League...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RocketLeague.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RocketLeague.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RocketLeague.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
echo Feito com Sucesso!
pause
goto :prioridadegames

:priorizar_cyberpunk
echo Aumentando prioridade do Cyberpunk 2077...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Cyberpunk2077.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Cyberpunk2077.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Cyberpunk2077.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
echo Feito com Sucesso!
pause
goto :prioridadegames

:priorizar_terraria
echo Aumentando prioridade do Terraria...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Terraria.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Terraria.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Terraria.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
echo Feito com Sucesso!
pause
goto :prioridadegames

:priorizar_rdr2
echo Aumentando prioridade do Red Dead Redemption 2...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RDR2.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RDR2.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RDR2.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
echo Feito com Sucesso!
pause
goto :prioridadegames

:priorizar_battlefield6
echo Aumentando prioridade do Battlefield 6...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BF6.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BF6.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BF6.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_choochoo
echo Aumentando prioridade do Choo Choo Charles...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Charles.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Charles.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Charles.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_hll
echo Aumentando prioridade do Hell Let Loose...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\HLL.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\HLL.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\HLL.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_fs22
echo Aumentando prioridade do Farming Simulator 22...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FarmingSimulator2022.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FarmingSimulator2022.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FarmingSimulator2022.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_fs25
echo Aumentando prioridade do Farming Simulator 25...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FarmingSimulator2025.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FarmingSimulator2025.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FarmingSimulator2025.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_hollowknight
echo Aumentando prioridade do Hollow Knight...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\hollow_knight.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\hollow_knight.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\hollow_knight.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_genshin
echo Aumentando prioridade do Genshin Impact...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GenshinImpact.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GenshinImpact.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GenshinImpact.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_pointblank
echo Aumentando prioridade do Point Blank...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PointBlank.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PointBlank.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PointBlank.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_mysummercar
echo Aumentando prioridade do My Summer Car...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mysummercar.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mysummercar.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mysummercar.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_dayz
echo Aumentando prioridade do DayZ...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DayZ.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DayZ.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DayZ.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_sf6
echo Aumentando prioridade do Street Fighter 6...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\StreetFighter6.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\StreetFighter6.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\StreetFighter6.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames

:priorizar_rust
echo Aumentando prioridade do Rust...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RustClient.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RustClient.exe\PerfOptions" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RustClient.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto :prioridadegames


:reverterjogos
echo Revertendo prioridade dos jogos ao padrão do windows...
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GTA5.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FiveM_b2372_GTAProcess.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cs2.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\javaw.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\VALORANT-Win64-Shipping.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LeagueClient.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cod.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\r5apex.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RobloxPlayerBeta.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GoW.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GoWRagnarok.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Multi Theft Auto.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\gta_sa.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\eurotrucks.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ets2.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RainbowSix.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CultOfTheLamb.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CultOfTheLamb.exe" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ULTRAKILL.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ULTRAKILL.exe" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BloodStrike.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BloodStrike.exe" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ArenaBreakout.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ArenaBreakout.exe" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\re4.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\re4.exe" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\re2.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\re2.exe" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\re8.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\re8.exe" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\HD-Player.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\HD-Player.exe" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BF2042.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BF2042.exe" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\bf4.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\bf4.exe" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tlou-i.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tlou-i.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tlou-ii.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tlou-ii.exe" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tslgame.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tslgame.exe" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RocketLeague.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RocketLeague.exe" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Cyberpunk2077.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Cyberpunk2077.exe" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Terraria.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Terraria.exe" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RDR2.exe\PerfOptions" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RDR2.exe" /f
Echo Revertido com Sucesso!
pause
goto :prioridadegames

:perifericos
cls
set "ESC="
cls
echo(
set "lines[0]=              ___ ___                  .___                              
set "lines[1]=             /   |   \_____ _______  __| _/_  _  _______ _______   ____  
set "lines[2]=            /    ~    \__  \\_  __ \/ __ |\ \/ \/ /\__  \\_  __ \_/ __ \
set "lines[3]=            \    Y    // __ \|  | \/ /_/ | \     /  / __ \|  | \/\  ___/
set "lines[4]=             \___|_  /(____  /__|  \____ |  \/\_/  (____  /__|    \___  >
set "lines[5]=                   \/      \/           \/              \/            \/

for /L %%j in (0,1,110) do (
set /a "corR=corBaseR + (variacaoR * %%j / 82)"
set /a "corG=corBaseG + (variacaoG * %%j / 82)"
set /a "corB=corBaseB + (variacaoB * %%j / 82)"
set "esc[%%j]=!ESC![38;2;!corR!;!corG!;!corB!m"
)

for /L %%i in (0,1,5) do (
set "texto=!lines[%%i]!"
set "textoGradiente="
for /L %%j in (0,1,82) do (
set "char=!texto:~%%j,1!"
if "!char!" == " " set "char= "
set "textoGradiente=!textoGradiente!!esc[%%j]!!char!"
)
echo( !textoGradiente!!ESC![0m
)

echo.

echo                          %op%Escolha%w% a %op%opção%w% que você quer %op%otimizar:%w%
echo.
echo            %m%[ %m%1 %m%]%w% Otimizar HDD                      %m%[ %m%2 %m%]%w% Otimizar SSD
echo.
echo            %m%[ %m%3 %m%]%w% Verificar Temperatura             %m%[ %m%4 %m%]%w% Otimizar Teclado
echo.
echo            %m%[ %m%5 %m%]%w% Otimizar Mouse                    %op%[ %op%6 %op%]%op% Reverter Otimização%w%
echo.
echo            %op%[ %op%7 %op%]%op% Voltar ao Menu Principal%w%
echo. 
echo.
set /p opcao="Digite o número: "
cls

if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto reverterperifericos
if %opcao% equ 7 goto menu

goto :perifericos

:opcao1
cls
echo Otimizando HDD...
fsutil behavior set disableLastAccess 2
fsutil behavior set disable8dot3 0
dfrgui.exe
echo Otimizado com sucesso!
pause
cls
goto :perifericos

:opcao2
cls
echo Otimizando SSD...
schtasks /Change /TN "\Microsoft\Windows\Defrag\ScheduledDefrag" /Disable
fsutil behavior set disableLastAccess 0
fsutil behavior set disable8dot3 1
cleanmgr.exe
echo Otimizado com sucesso!
pause
cls
goto :perifericos

:opcao3
cls
echo Iniciando Open Hardware Monitor...
if exist "%~dp0OpenHardwareMonitor\OpenHardwareMonitor.exe" (
    start "" "%~dp0OpenHardwareMonitor\OpenHardwareMonitor.exe"
) else if exist "%~dp0OpenHardwareMonitor.exe" (
    start "" "%~dp0OpenHardwareMonitor.exe"
) else (
    echo [AVISO] Open Hardware Monitor nao encontrado.
)
pause
cls
goto :perifericos

:opcao4
cls
echo ======================================================
echo       OTIMIZACAO DE TECLADO E INPUT LAG (FILTERKEYS)
echo ======================================================
echo.
echo [1] Modo Competitivo / eSports (150ms delay / 15ms repeat)
echo [2] Modo Ultra Rapido (120ms delay / 10ms repeat)
echo [3] Restaurar Padrao do Windows (1000ms delay / 500ms repeat)
echo [4] Voltar
echo.
set /p optKbd="Escolha a opcao: "
if "%optKbd%"=="1" (
    reg add "HKCU\Control Panel\Keyboard" /v KeyboardDelay /t REG_SZ /d 0 /f >nul
    reg add "HKCU\Control Panel\Keyboard" /v KeyboardSpeed /t REG_SZ /d 31 /f >nul
    reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v Flags /t REG_SZ /d 27 /f >nul
    reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v AutoRepeatDelay /t REG_SZ /d 150 /f >nul
    reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v AutoRepeatRate /t REG_SZ /d 15 /f >nul
    reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v DelayBeforeAcceptance /t REG_SZ /d 0 /f >nul
    reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v BounceTime /t REG_SZ /d 0 /f >nul
    echo Teclado configurado para Modo Competitivo!
    pause
    goto :perifericos
)
if "%optKbd%"=="2" (
    reg add "HKCU\Control Panel\Keyboard" /v KeyboardDelay /t REG_SZ /d 0 /f >nul
    reg add "HKCU\Control Panel\Keyboard" /v KeyboardSpeed /t REG_SZ /d 31 /f >nul
    reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v Flags /t REG_SZ /d 27 /f >nul
    reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v AutoRepeatDelay /t REG_SZ /d 120 /f >nul
    reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v AutoRepeatRate /t REG_SZ /d 10 /f >nul
    reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v DelayBeforeAcceptance /t REG_SZ /d 0 /f >nul
    reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v BounceTime /t REG_SZ /d 0 /f >nul
    echo Teclado configurado para Modo Ultra Rapido!
    pause
    goto :perifericos
)
if "%optKbd%"=="3" (
    reg add "HKCU\Control Panel\Keyboard" /v KeyboardDelay /t REG_SZ /d 1 /f >nul
    reg add "HKCU\Control Panel\Keyboard" /v KeyboardSpeed /t REG_SZ /d 20 /f >nul
    reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v Flags /t REG_SZ /d 122 /f >nul
    reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v AutoRepeatDelay /t REG_SZ /d 1000 /f >nul
    reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v AutoRepeatRate /t REG_SZ /d 500 /f >nul
    echo Teclado restaurado ao padrao do Windows!
    pause
    goto :perifericos
)
goto :perifericos

:opcao5
cls
echo Otimizando Mouse...
reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold1 /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold2 /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v MouseTrails /t REG_SZ /d 0 /f
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
echo Mouse otimizado com sucesso!
pause
cls
goto :perifericos

:reverterperifericos
cls
echo ===============================================
echo REVERTER OTIMIZAÇÕES - Capital Daark
echo ===============================================
echo.
echo %o%[0] Voltar%w%
echo [1] Reverter Otimização do Mouse
echo [2] Reverter Otimização do Teclado
echo [3] Reverter SSD
echo [4] Reverter HDD
echo [5] Reverter TODOS
echo.
set /p opcao="Digite o número: "
cls

if %opcao% equ 1 goto revert_mouse
if %opcao% equ 2 goto revert_teclado
if %opcao% equ 3 goto revert_ssd
if %opcao% equ 4 goto revert_hdd
if %opcao% equ 5 goto reverter_tudo
if %opcao% equ 0 goto perifericos
goto reverterperifericos

:revert_mouse
cls
echo Revertendo mouse para configuracoes padrão...
reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 1 /f
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold1 /t REG_SZ /d 6 /f
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold2 /t REG_SZ /d 10 /f
reg add "HKCU\Control Panel\Desktop" /v MouseTrails /t REG_SZ /d -1 /f
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
echo Mouse restaurado.
pause
goto reverterperifericos

:revert_teclado
cls
echo Revertendo teclado para configuracoes padrão...
reg add "HKCU\Control Panel\Keyboard" /v KeyboardDelay /t REG_SZ /d 1 /f
reg add "HKCU\Control Panel\Keyboard" /v KeyboardSpeed /t REG_SZ /d 20 /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v Flags /t REG_SZ /d 122 /f >nul
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v AutoRepeatDelay /t REG_SZ /d 1000 /f >nul
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v AutoRepeatRate /t REG_SZ /d 500 /f >nul
echo Teclado restaurado.
pause
goto reverterperifericos

:revert_ssd
cls
echo Reativando tarefas de otimizacao de SSD...
schtasks /Change /TN "\Microsoft\Windows\Defrag\ScheduledDefrag" /Enable
fsutil behavior set disableLastAccess 1
fsutil behavior set disable8dot3 2
echo  Configurações para SSD restauradas.
pause
goto reverterperifericos

:revert_hdd
cls
echo Revertendo configuracoes para HDD...
fsutil behavior set disableLastAccess 0
fsutil behavior set disable8dot3 1
echo  Configurações para HDD restauradas.
pause
goto reverterperifericos

:reverter_tudo
call :revert_mouse
call :revert_teclado
call :revert_inputlag
call :revert_ssd
call :revert_hdd
echo Todas as otimizacoes foram revertidas.
pause
goto reverterperifericos


:revertertudo
start https://youtu.be/_Mc3urSaUL8?feature=shared
pause
cls
goto :menu

:autorun
cls
echo ======================================================
echo       GERENCIADOR DE INICIALIZACAO - AUTORUNS (SYSINTERNALS)
echo ======================================================
echo Iniciando Autoruns oficial da Microsoft...
if exist "%~dp0Autoruns64.exe" (
    start "" "%~dp0Autoruns64.exe"
) else if exist "%~dp0Autoruns.exe" (
    start "" "%~dp0Autoruns.exe"
) else (
    echo [AVISO] Autoruns nao encontrado na pasta.
)
echo.
pause
cls
goto :menu

:tempera
cls
echo Iniciando Open Hardware Monitor...
if exist "%~dp0OpenHardwareMonitor\OpenHardwareMonitor.exe" (
    start "" "%~dp0OpenHardwareMonitor\OpenHardwareMonitor.exe"
) else if exist "%~dp0OpenHardwareMonitor.exe" (
    start "" "%~dp0OpenHardwareMonitor.exe"
) else (
    echo [AVISO] Open Hardware Monitor nao encontrado.
)
pause
cls
goto :menu

:creditos
cls
echo(
:: ARTE ASCII: O MAMUTE DA CAPITAL DAARK
echo %m%             .           .
echo            / \_________ / \
echo           /  ,         ,   \
echo          (  (  _     _  )   )
echo           \  \ (o)   (o) /  /
echo            \  \   ___   /  /
echo             \  \ (   ) /  /
echo              \  \ --- /  /
echo               \  \___/  /
echo                \       /
echo                 \     /
echo                  \___/
echo(
echo %white%         CAPITAL DAARK - PC OPTIMIZATION SUITE%reset%
echo %gray%  ----------------------------------------------------------- %reset%
echo(
echo    %orange%Obrigado por utilizar nossas ferramentas de otimização!%reset%
echo    %white%Acesse nosso site: %op%https://capitaldaark.com.br/%reset%
echo(
pause
goto :menu