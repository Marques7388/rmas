*** Settings ***

Library    SeleniumLibrary



*** Variables ***

${BROWSER}    chrome
${URL}    http://autocomposicao-frontend-dev.apps.ocppge.in.pge.rj.gov.br/acordos
${INPUT_BUSCA}    //input[@placeholder='Informações do acordo']
${CLICK_BUTON}    //button[contains(.,'Buscar')]
${STATUS_1}      //div[text()='Pedido recebido pela CASC']
${STATUS_2}     //div[text()='Em análise de admissibilidade']
${STATUS_3}     //div[text()='Pedido inadmitido na CASC']
${STATUS_4}     //div[text()='Pedido admitido preliminarmente na CASC']
${STATUS_5}    //div[text()='Inadmitido por falta de interesse']
${STATUS_6}    //div[text()='Pedido admitido na CASC']
${STATUS_7}    //div[text()='Em fase de sessões de mediação']
${STATUS_8}    //div[text()='Processo concluído por ausência de acordo']
${STATUS_9}    //div[text()='Etapa de assinatura e homologação']
${STATUS_10}   //div[text()='Acordo concluído com êxito']

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
    Wait Until Element Is Visible    //input[contains(@class,'form-control')]
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
    Wait Until Element Is Visible    //input[@role='combobox']
    Click Element    //input[@role='combobox']
    Click Element    ${STATUS_1}
E seleciona a opção "Em análise de admissibilidade" no campo "Status"
    #Selecionar um registro na combo de status
    Wait Until Element Is Visible    //input[@role='combobox']
    Click Element    //input[@role='combobox']
    Click Element    ${STATUS_2}

E seleciona a opção "Pedido inadmitido na CASC" no campo "Status"
    #Selecionar um registro na combo de status
    Wait Until Element Is Visible    //input[@role='combobox']
    Click Element    //input[@role='combobox']
    Click Element    ${STATUS_3}
E seleciona a opção "Pedido admitido preliminarmente na CASC" no campo "Status"
    #Selecionar um registro na combo de status
    Wait Until Element Is Visible    //input[@role='combobox']
    Click Element    //input[@role='combobox']
    Click Element    ${STATUS_4}
E seleciona a opção "Inadmitido por falta de interesse" no campo "Status"
    #Selecionar um registro na combo de status
    Wait Until Element Is Visible    //input[@role='combobox']
    Click Element    //input[@role='combobox']
    Click Element    ${STATUS_5}

E seleciona a opção "Pedido admitido na CASC" no campo "Status"
    #Selecionar um registro na combo de status
    Wait Until Element Is Visible    //input[@role='combobox']
    Click Element    //input[@role='combobox']
    Click Element    ${STATUS_6}

E seleciona a opção "Em fase de sessões de mediação" no campo "Status"
    #Selecionar um registro na combo de status
    Wait Until Element Is Visible    //input[@role='combobox']
    Click Element    //input[@role='combobox']
    Click Element    ${STATUS_7}

E seleciona a opção "Processo concluído por ausência de acordo" no campo "Status"
    #Selecionar um registro na combo de status
    Wait Until Element Is Visible    //input[@role='combobox']
    Click Element    //input[@role='combobox']
    Click Element    ${STATUS_8}

E seleciona a opção "Etapa de assinatura e homologação" no campo "Status"
    #Selecionar um registro na combo de status
    Wait Until Element Is Visible    //input[@role='combobox']
    Click Element    //input[@role='combobox']
    Click Element    ${STATUS_9}

E seleciona a opção "Acordo concluído com êxito" no campo "Status"
    #Selecionar um registro na combo de status
    Wait Until Element Is Visible    //input[@role='combobox']
    Click Element    //input[@role='combobox']
    Click Element    ${STATUS_10}

#Atualização na grid
    
Então o sistema atualiza a lista com o registro de status 1
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains     locator=//span[@class='status-text d-block text-truncate'][contains(.,'Pedido recebido pela CASC')]    text=Pedido recebido pela CASC
    Page Should Contain    text=Pedido recebido pela CASC



Então o sistema atualiza a lista com o registro de status 2
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains     locator=//span[@class='status-text d-block text-truncate'][contains(.,'Em análise de admissibilidade')]    text=Em análise de admissibilidade
    Page Should Contain    text=Em análise de admissibilidade



Então o sistema atualiza a lista com o registro de status 3
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Pedido inadmitido na CASC')]    text=Pedido inadmitido na CASC
    Page Should Contain    text=Pedido inadmitido na CASC



Então o sistema atualiza a lista com o registro de status 4
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Pedido admitido preliminarmente na CASC')]    text=Pedido admitido preliminarmente na CASC
    Page Should Contain    text=Pedido admitido preliminarmente na CASC


Então o sistema atualiza a lista com o registro de status 5
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Inadmitido por falta de interesse')]    text=Inadmitido por falta de interesse
    Page Should Contain    text=Inadmitido por falta de interesse


Então o sistema atualiza a lista com o registro de status 6
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Pedido admitido na CASC')]    text=Pedido admitido na CASC
    Page Should Contain    text=Pedido admitido na CASC


Então o sistema atualiza a lista com o registro de status 7
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Em fase de sessões de mediação')]    text=Em fase de sessões de mediação
    Page Should Contain    text=Em fase de sessões de mediação


Então o sistema atualiza a lista com o registro de status 8
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Processo concluído por ausência de acordo')]    text=Processo concluído por ausência de acordo
    Page Should Contain    text=Processo concluído por ausência de acordo


Então o sistema atualiza a lista com o registro de status 9
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Etapa de assinatura e homologação')]    text=Etapa de assinatura e homologação
    Page Should Contain    text=Etapa de assinatura e homologação


Então o sistema atualiza a lista com o registro de status 10
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Element Contains    locator=//span[@class='status-text d-block text-truncate'][contains(.,'Acordo concluído com êxito')]    text=Acordo concluído com êxito
    Page Should Contain    text=Acordo concluído com êxito

#Outras buscas

E preenche o campo "Buscar por" com o nome de uma parte
    #Clicar e preencher o campo de busca
    Wait Until Element Is Visible    //input[contains(@class,'form-control')]
    Click Element    ${INPUT_BUSCA}  
    Input Text   ${INPUT_BUSCA}    João

Então o sistema filtra os resultados pelo nome da parte informada 
    #Aguardar o elemento estar visível e validar o mesmo após a busca
    Wait Until Page Contains    text=João
    Page Should Contain    text=João

E preenche o campo "Buscar por" com o um registro inexistente
     #Clicar e preencher o campo de busca
    Wait Until Element Is Visible    //input[contains(@class,'form-control')]
    Click Element    ${INPUT_BUSCA}   
    Input Text   ${INPUT_BUSCA}    asdf

Então o sistema exibe mensagem sobre os critérios da busca
    #Aguardar até a página conter um elemento e validar a existência dele
    Wait Until Page Contains    text=Não existem mediações cadastradas que atendam ao critério da pesquisa.
    Page Should Contain    text=Não existem mediações cadastradas que atendam ao critério da pesquisa.