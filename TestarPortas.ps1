$servidor = "DOMÍNIO/IP_DO_SERVIDOR"
$portas = @(20, 21, 22, 47400, 47401)
foreach ($porta in $portas) {
    Test-NetConnection -ComputerName $servidor -Port $porta
}
