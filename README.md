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
