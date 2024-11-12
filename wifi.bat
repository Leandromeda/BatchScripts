REM Dev. by Leandromeda ~~~>

ECHO Mostra os filtros de permissão e bloqueio ativos
NETSH wlan show filters

REM Adiciona um filtro de permissão (allow) ou bloqueio (block)
NETSH wlan add filter permission=allow ssid=DEV networktype=infrastructure

REM Tenta estabelecer conexão no wifi e senha indicados
NETSH wlan connect ssid=DEV password=senai@2024

REM Para remover um filtro
REM NETSH wlan delete filter permission=block ssid="WLAN name" networktype=infrastructure

REM SSID é o nome da rede wifi
REM Password a senha
