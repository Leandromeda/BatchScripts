REM Dev. by Leandromeda

REM ECHO Mostra os filtros de permissão e bloqueio ativos
REM NETSH wlan show filters

REM Adiciona um filtro de permissão (allow) ou bloqueio (block)
REM NETSH wlan add filter permission=allow ssid=DEV networktype=infrastructure

REM Tenta estabelecer conexão no wifi e senha indicados
REM NETSH wlan connect ssid=DEV password=senai@2024

REM Para remover um filtro
REM NETSH wlan delete filter permission=block ssid="WLAN name" networktype=infrastructure

REM SSID é o nome da rede wifi
REM Password a senha
REM Remova o comando de comentário (REM) das linhas que deseja executar!
