# PingSweep-PS

![PowerShell](https://img.shields.io/badge/Language-PowerShell-blue?logo=powershell)

## Descrição

**PingSweep-PS** é uma ferramenta em **PowerShell** para realizar varredura de rede via ping (Ping Sweep).  
Ela permite ao usuário selecionar redes de **Classe A, B ou C**, gerar automaticamente a lista de IPs correspondentes e identificar quais hosts estão ativos, exibindo os resultados diretamente no console.

---

## Funcionalidades

- Menu interativo para seleção do tipo de rede (A, B ou C).  
- Geração dinâmica de IPs da rede selecionada.  
- Teste de conectividade utilizando `Test-Connection`.  
- Exibição dos IPs ativos com cores para melhor visualização.  

---

## Como usar

1. Abra o PowerShell.
2. Navegue até a pasta onde o script está salvo.
3. Execute o script:

```powershell
.\PingSweep.ps1

#Escolha o tipo de rede:
1) Classe A (ex: 10.x.x.x)
2) Classe B (ex: 172.16.x.x)
3) Classe C (ex: 192.168.0.x)
#Digite a base do IP conforme a classe selecionada.
#Visualize os IPs ativos listados no console.
```

## Exemplo de execução
```powershell
Selecione o tipo de rede:
1) Classe A (ex: 10.x.x.x)
2) Classe B (ex: 172.16.x.x)
3) Classe C (ex: 192.168.0.x)
Digite a opção (1-3): 3
Digite o IP base (três octetos, ex: 192.168.0): 192.168.1

Iniciando varredura...

192.168.1.1 ativo
192.168.1.10 ativo
192.168.1.15 ativo
```

## Requisitos:
-Windows com PowerShell (preferencialmente 5.1 ou superior).
-Permissões para executar scripts no PowerShell (pode ser necessário ajustar ExecutionPolicy):

## Observações:
-Varreduras em Classe A ou B podem demorar bastante dependendo do tamanho da rede.
-Essa ferramenta é destinada a uso legítimo em redes próprias ou com permissão do administrador.
