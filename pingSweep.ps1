Clear-Host
Write-Host "====================================="
Write-Host "         Scanner de Rede (Ping)      "
Write-Host "====================================="
Write-Host "Selecione o tipo de rede:"
Write-Host "1) Classe A (ex: 10.x.x.x)"
Write-Host "2) Classe B (ex: 172.16.x.x)"
Write-Host "3) Classe C (ex: 192.168.0.x)"
Write-Host "====================================="

$choice = Read-Host "Digite a opção (1-3)"

switch ($choice) {
 "1"{
    $baseIp = Read-Host "Digite o IP base (somente o primeiro octeto, ex: 10)"
    Write-Host "Varredura Classe A em $baseIp.0.0.0/8"
    $ips = foreach ($b in 0..255){
        foreach ($c in 0..255){
            foreach ($d in 1..254) {
            "$baseIp.$b.$c.$d"
            }
        }
    }
 }
 "2" {
    $baseIp = Read-Host "Digite o IP base (dois octetos, ex: 172.16)"
    Write-Host "Varredura Classe B em $baseIp.0.0/16"
    $ips = foreach ($c in 0..255) {
        foreach ($d in 1..254){
            "$baseIp.$c.$d"
        }
    }
 }

 "3"{
    $baseIp = Read-Host "Digite o IP base (três octetos, ex: 192.168.0)"
    Write-Host "Varredura classe C em $baseIp.0/24"
    $ips = foreach ($d in 1..254){
        "$baseIp.$d"
    }
 }

 Default{
    Write-Host "Opção inválida. Saindo..."
    exit
 }
}


Write-Host "`nIniciando varredura...`n"

foreach ($ip in  $ips){
    if(Test-Connection -ComputerName $ip -Count 1 -Quiet){
        Write-Host "$ip ativo" -ForegroundColor Green
    }
}