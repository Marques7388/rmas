*** Settings ***

Library    SeleniumLibrary
Documentation    Essa suite testa a funcionalidade Listar acordos
Test Setup       Abrir o navegador
Test Teardown  Run Keywords
...                       Capture Page Screenshot
...                       Close Browser 
Resource    ../resource/pages/listar_acordos_page.resource

*** Test Cases ***
Caso de teste 01 - Validar tela inicial da lista de acordos
    DADO que o usuário está logado no sistema de acordos
    Então ele visualiza o título da página

Caso de teste 02 - Buscar por número do protocolo
   DADO que o usuário está logado no sistema de acordos
   E preenche o campo "Buscar por" com um número de protocolo
   E clica no botão Buscar
   Então o sistema filtra os resultados pelo número informado 

Caso de teste 03 - Buscar por status "Pedido recebido pela CASC"
    DADO que o usuário está logado no sistema de acordos
    E seleciona a opção "Pedido recebido pela CASC" no campo "Status"
    E clica no botão Buscar
    Então o sistema atualiza a lista com o registro de status 1

Caso de teste 04 - Buscar por status "Em análise de admissibilidade"
    DADO que o usuário está logado no sistema de acordos
    E seleciona a opção "Em análise de admissibilidade" no campo "Status"
    E clica no botão Buscar
    Então o sistema atualiza a lista com o registro de status 2

Caso de teste 05 - Buscar por status "Pedido inadmitido na CASC"
    DADO que o usuário está logado no sistema de acordos
    E seleciona a opção "Pedido inadmitido na CASC" no campo "Status"
    E clica no botão Buscar
    Então o sistema atualiza a lista com o registro de status 3

Caso de teste 06 - Buscar por status "Pedido admitido preliminarmente na CASC"
    DADO que o usuário está logado no sistema de acordos
    E seleciona a opção "Pedido admitido preliminarmente na CASC" no campo "Status"
    E clica no botão Buscar
    Então o sistema atualiza a lista com o registro de status 4

Caso de teste 07 - Buscar por status "Inadmitido por falta de interesse"
    DADO que o usuário está logado no sistema de acordos
    E seleciona a opção "Inadmitido por falta de interesse" no campo "Status"
    E clica no botão Buscar
    Então o sistema atualiza a lista com o registro de status 5

Caso de teste 08 - Buscar por status "Pedido admitido na CASC"
    DADO que o usuário está logado no sistema de acordos
    E seleciona a opção "Pedido admitido na CASC" no campo "Status"
    E clica no botão Buscar
    Então o sistema atualiza a lista com o registro de status 6

Caso de teste 09 - Buscar por status "Em fase de sessões de mediação"
    DADO que o usuário está logado no sistema de acordos
    E seleciona a opção "Em fase de sessões de mediação" no campo "Status"
    E clica no botão Buscar
    Então o sistema atualiza a lista com o registro de status 7

Caso de teste 10 - Buscar por status "Acordo concluído por ausência de acordo"
    DADO que o usuário está logado no sistema de acordos
    E seleciona a opção "Processo concluído por ausência de acordo" no campo "Status"
    E clica no botão Buscar
    Então o sistema atualiza a lista com o registro de status 8

Caso de teste 11 - Buscar por status "Etapa de assinatura e homologação"
    DADO que o usuário está logado no sistema de acordos
    E seleciona a opção "Etapa de assinatura e homologação" no campo "Status"
    E clica no botão Buscar
    Então o sistema atualiza a lista com o registro de status 9

Caso de teste 12 - Buscar por status "Acordo concluído com êxito"
    DADO que o usuário está logado no sistema de acordos
    E seleciona a opção "Acordo concluído com êxito" no campo "Status"
    E clica no botão Buscar
    Então o sistema atualiza a lista com o registro de status 10

Caso de teste 13 - Buscar por parte
   DADO que o usuário está logado no sistema de acordos
   E preenche o campo "Buscar por" com o nome de uma parte
   E clica no botão Buscar
   Então o sistema filtra os resultados pelo nome da parte informada 

Caso de teste 14 - Buscar por registro inexistente
   DADO que o usuário está logado no sistema de acordos
   E preenche o campo "Buscar por" com o um registro inexistente
   E clica no botão Buscar
   Então o sistema exibe mensagem sobre os critérios da busca