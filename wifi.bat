ECHO Mostra os filtros de permissão e bloqueio ativos
netsh wlan show filters

REM Adiciona um filtro de permissão (allow) ou bloqueio (block)
netsh wlan add filter permission=allow ssid=DEV networktype=infrastructure

REM Tenta estabelecer conexão no wifi e senha indicados
netsh wlan connect ssid=DEV password=senai@2024

REM Para remover um filtro
REM netsh wlan delete filter permission=block ssid="WLAN name" networktype=infrastructure