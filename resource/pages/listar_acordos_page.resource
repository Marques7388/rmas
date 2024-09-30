*** Settings ***

Library    SeleniumLibrary



*** Variables ***

${BROWSER}    chrome
${URL}    http://autocomposicao-frontend-dev.apps.ocppge.in.pge.rj.gov.br/acordos
${INPUT_BUSCA}  //input[contains(@class,'form-control')]
${CLICK_BUTON}    //button[contains(.,'Buscar')]
${STATUS_1}    (//span[@class='status-text d-block text-truncate'][contains(.,'Pedido recebido pela CASC')])[1]
${STATUS_2}    //span[@class='status-text d-block text-truncate'][contains(.,'Em análise de admissibilidade')]
${STATUS_3}    //span[@class='status-text d-block text-truncate'][contains(.,'Pedido inadmitido na CASC')]
${STATUS_4}    //span[@class='status-text d-block text-truncate'][contains(.,'Pedido admitido preliminarmente na CASC')]
${STATUS_5}    //span[@class='status-text d-block text-truncate'][contains(.,'Inadmitido por falta de interesse (OU)')]
${STATUS_6}    //span[@class='status-text d-block text-truncate'][contains(.,'Pedido admitido na CASC')]
${STATUS_7}    //span[@class='status-text d-block text-truncate'][contains(.,'Em fase de sessões de mediação')]
${STATUS_8}    //span[@class='status-text d-block text-truncate'][contains(.,'Processo concluído por ausência de acordo')]
${STATUS_9}    //span[@class='status-text d-block text-truncate'][contains(.,'Acordo firmado')]
${STATUS_10}   //span[@class='status-text d-block text-truncate'][contains(.,'Processo concluído com êxito')]

*** Keywords ***

Abrir o navegador
    #Abrir o navegador google chrome
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    #Fechar o navegador google chrome
    Close Browser

DADO que o usuário está logado no sistema de acordos
    #Acessar um endereço no navegador
    Go To    url=${URL}

Então ele visualiza o título da página
    #Validar título exibido na home
    Page Should Contain    text=Câmara Administrativa de Solução de Controvérsias - CASC

E preenche o campo "Buscar por" com um número de protocolo
    #Clicar e preencher o campo de busca
    Click Element    ${INPUT_BUSCA}  
    Input Text   ${INPUT_BUSCA}  0001

E clica no botão Buscar
    #Clicar no botão de busca
    Click Button    ${CLICK_BUTON} 

Então o sistema filtra os resultados pelo número informado 
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Is Visible    //a[contains(.,'0001')]
    Element Should Be Visible    locator=//a[contains(.,'0001')]

#Seleção na combo
E seleciona a opção "Pedido recebido pela CASC" no campo "Status"
    #Selecionar um registro na combo de status
    Click Element    locator=//option[@value='1'][contains(.,'Pedido recebido pela CASC')]

E seleciona a opção "Em análise de admissibilidade" no campo "Status"
    #Selecionar um registro na combo de status
    Click Element    locator=//option[@value='2'][contains(.,'Em análise de admissibilidade')]

E seleciona a opção "Pedido inadmitido na CASC" no campo "Status"
    #Selecionar um registro na combo de status
    Click Element    locator=//option[@value='3'][contains(.,'Pedido inadmitido na CASC')]

E seleciona a opção "Pedido admitido preliminarmente na CASC" no campo "Status"
    #Selecionar um registro na combo de status
    Click Element    locator=//option[@value='4'][contains(.,'Pedido admitido preliminarmente na CASC')]

E seleciona a opção "Inadmitido por falta de interesse" no campo "Status"
    #Selecionar um registro na combo de status
    Click Element    locator=//option[@value='5'][contains(.,'Inadmitido por falta de interesse')]

E seleciona a opção "Pedido admitido na CASC" no campo "Status"
    #Selecionar um registro na combo de status
    Click Element    locator=//option[@value='6'][contains(.,'Pedido admitido na CASC')]

E seleciona a opção "Em fase de sessões de mediação" no campo "Status"
    #Selecionar um registro na combo de status
    Click Element    locator=//option[@value='7'][contains(.,'Em fase de sessões de mediação')]

E seleciona a opção "Processo concluído por ausência de acordo" no campo "Status"
    #Selecionar um registro na combo de status
    Click Element    locator=//option[@value='8'][contains(.,'Processo concluído por ausência de acordo')]

E seleciona a opção "Etapa de assinatura e homologação" no campo "Status"
    #Selecionar um registro na combo de status
    Click Element    locator=//option[@value='9'][contains(.,'Acordo firmado')]

E seleciona a opção "Acordo concluído com êxito" no campo "Status"
    #Selecionar um registro na combo de status
    Click Element    locator=//option[@value='10'][contains(.,'Processo concluído com êxito')]

#Atualização na grid
    
Então o sistema atualiza a lista com o registro de status 1
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains     locator=//span[@class='status-text d-block text-truncate'][contains(.,'Pedido recebido pela CASC')]    text=Pedido recebido pela CASC
    Page Should Contain Element     ${STATUS_1}



Então o sistema atualiza a lista com o registro de status 2
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains     locator=//span[@class='status-text d-block text-truncate'][contains(.,'Em análise de admissibilidade')]    text=Em análise de admissibilidade
    Page Should Contain Element     ${STATUS_2}



Então o sistema atualiza a lista com o registro de status 3
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Pedido inadmitido na CASC')]    text=Pedido inadmitido na CASC
    Page Should Contain Element    ${STATUS_3}



Então o sistema atualiza a lista com o registro de status 4
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Pedido admitido preliminarmente na CASC')]    text=Pedido admitido preliminarmente na CASC
    Page Should Contain Element    ${STATUS_4}


Então o sistema atualiza a lista com o registro de status 5
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Inadmitido por falta de interesse (OU)')]    text=Inadmitido por falta de interesse (OU)
    Page Should Contain Element    ${STATUS_5}


Então o sistema atualiza a lista com o registro de status 6
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Pedido admitido na CASC')]    text=Pedido admitido na CASC
    Page Should Contain Element    ${STATUS_6}


Então o sistema atualiza a lista com o registro de status 7
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Em fase de sessões de mediação')]    text=Em fase de sessões de mediação
    Page Should Contain Element    ${STATUS_7}


Então o sistema atualiza a lista com o registro de status 8
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Processo concluído por ausência de acordo')]    text=Processo concluído por ausência de acordo
    Page Should Contain Element    ${STATUS_8}


Então o sistema atualiza a lista com o registro de status 9
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Acordo firmado')]    text=Acordo firmado
    Page Should Contain Element    ${STATUS_9}


Então o sistema atualiza a lista com o registro de status 10
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Processo concluído com êxito')]    text=Processo concluído com êxito
    Page Should Contain Element    ${STATUS_10}

#Outras buscas

E preenche o campo "Buscar por" com o nome de uma parte
    #Clicar e preencher o campo de busca
    Click Element    ${INPUT_BUSCA}  
    Input Text   ${INPUT_BUSCA}    João

Então o sistema filtra os resultados pelo nome da parte informada 
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Page Contains    text=João
    Page Should Contain    text=João

E preenche o campo "Buscar por" com o um registro inexistente
     #Clicar e preencher o campo de busca
    Click Element    ${INPUT_BUSCA}  
    Input Text   ${INPUT_BUSCA}    asdf

Então o sistema exibe mensagem sobre os critérios da busca
    #Aguardar até a página conter um elemento e validar a existência dele
    Wait Until Page Contains    text=Não existem mediações cadastradas que atendam ao critério da pesquisa.
    Page Should Contain    text=Não existem mediações cadastradas que atendam ao critério da pesquisa.