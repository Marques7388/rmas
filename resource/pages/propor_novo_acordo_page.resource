*** Settings ***

Library    SeleniumLibrary


*** Variables ***

${BROWSER}    chrome
${URL}    http://autocomposicao-frontend-dev.apps.ocppge.in.pge.rj.gov.br/acordos
${CLICK_BUTON_ACORDO}    //span[contains(.,'Propor Novo Acordo')]
${CAMINHO_ARQUIVO}   C:\\Users\\Colaborador\\Desktop\\TESTE.pdf
*** Keywords ***

Abrir o navegador
    #Abrir o navegador google chrome
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Fechar o navegador google chrome
    Close Browser

Dado que estou logado no sistema de acordos
 #Acessar um endereço no navegador
    Go To    url=${URL}

E visualizo o título da página
    #Validar título exibido na página inicial
    Wait Until Element Is Visible    //h4[contains(.,'Câmara Administrativa de Solução de Controvérsias - CASC')]
    Page Should Contain    text=Câmara Administrativa de Solução de Controvérsias - CASC
    Capture Page Screenshot
E clico no botão Propor Novo Acordo
    #clicar no botão para propor novo acordo
    Wait Until Element Is Visible  //span[contains(.,'Propor Novo Acordo')]
    Click Element    ${CLICK_BUTON_ACORDO}
    Capture Page Screenshot
Então visualizo a tela Proposta de Novo Acordo
    #Validar título exibido na página de novo acordo
    Wait Until Element Is Visible    //h3[contains(.,'Proposta de Novo Acordo')]
    Page Should Contain    text=Proposta de Novo Acordo
    Capture Page Screenshot
Dado que estou na tela Proposta de Novo Acordo
    #Validar título exibido na página inicial
    Page Should Contain    //h3[contains(.,'Proposta de Novo Acordo')]
    Capture Page Screenshot
E preencho o campo CNJ
    #Preenchimento do campo CNJ com valor válido
    Click Element    //input[@aria-label='Digite o Número do CNJ']
    Input Text    locator=//input[@aria-label='Digite o Número do CNJ']    text=0000354-80.2024.8.19.0001
    Capture Page Screenshot
Então o campo é validado e preenchido
    #Click fora do campo para validação do CNJ
    Click Element    //div[contains(@class,'fsCel')]
    Capture Page Screenshot
E clico no botão Adicionar Requerente
    #Clicar no botão para abrir a caixa de preenchimento
    Click Element    //span[contains(.,'Adicionar Requerente')]
    Capture Page Screenshot
E preencho o campo CPF/CNPJ do Requerente
    #Preencher o campo com valor válido
    Click Element    //input[contains(@placeholder,'Digite o CPF ou CNPJ')]
    Input Text    locator=//input[contains(@placeholder,'Digite o CPF ou CNPJ')]    text=054.565.490-42
    Capture Page Screenshot

E preencho o campo Nome completo do Requerente
    Click Element    locator=nome
    Input Text    locator=nome    text= Representante automação 1 
    Capture Page Screenshot   
E preencho o campo Telefone do Requerente
    Click Element    //input[@placeholder='Digite o Número do Telefone']
    Input Text    locator=//input[@placeholder='Digite o Número do Telefone']    text=2198475632
    Capture Page Screenshot
E preencho o campo e-mail do Requerente
    Click Element    (//input[@type='email'])[1]  
    Input Text    locator=(//input[@type='email'])[1]    text=emailreq@teste.com
    Capture Page Screenshot
E clico no botão Salvar Requerente
    Click Element    //button[contains(.,'Salvar Requerente')]
    Capture Page Screenshot
 Então o sistema salva os dados do Requerente
    Click Element    //div[contains(@class,'fsCel')] 
    Capture Page Screenshot
    
 E preencho o campo Exposição Fática do Caso
     Click Element    //div[contains(@role,'textbox')]
     Input Text    locator=//div[contains(@role,'textbox')]    text=Preenchimento do campo Exposição Fática do Caso   
     Capture Page Screenshot
   
E clico no botão Adicionar Representante
    #Clicar no botão para abrir a caixa de preenchimento
    Click Element    //span[contains(.,'Adicionar Representante')] 
    Capture Page Screenshot
    
E preencho o campo CPF/CNPJ do Representante
    Click Element  (//input[@placeholder='Digite o CPF ou CNPJ'])
    Input Text    locator=(//input[@placeholder='Digite o CPF ou CNPJ'])    text=165.119.500-50
    Capture Page Screenshot
E preencho o campo Nome completo do Representante
    Click Element    nome
    Input Text   locator=nome    text=Representante automação 1
    Capture Page Screenshot
E preencho o campo OAB do Representante
    Click Element    //input[@placeholder='Digite o Número da OAB']
    Input Text    locator=//input[@placeholder='Digite o Número da OAB']    text=RJ712223
    Capture Page Screenshot
E preencho o campo Telefone do Representante
    Click Element    //input[contains(@placeholder,'Digite o Número do Telefone')]
    Input Text    locator=//input[contains(@placeholder,'Digite o Número do Telefone')]    text=2195648796
    Capture Page Screenshot
E preencho o campo e-mail do Representante
    Click Element  (//input[@type='email'])[2]  
    Input Text    locator=(//input[@type='email'])[2]    text=emailrepe@email.com
    Capture Page Screenshot
E clico no botão Salvar Representante
    Click Element    //button[contains(.,'Salvar Representante')]
    Capture Page Screenshot
Então o sistema salva os dados do Representante
    Click Element    //div[contains(@class,'fsCel')] 
    Capture Page Screenshot
E clico no botão Adicionar Requerido
    Click Element  //span[contains(.,'Adicionar Requerido')]   
    Capture Page Screenshot 
E preencho o campo Ente/Órgão Público Estadual?como não
    Click Element    //input[@id='orgaoPublicoNao']
    Capture Page Screenshot
E preencho o campo CPF/CNPJ do Requerido
    Click Element    (//input[@placeholder='Digite o CPF ou CNPJ'])
    Input Text    locator=(//input[@placeholder='Digite o CPF ou CNPJ'])    text=33371333043
    Capture Page Screenshot
E preencho o campo Nome completo do Requerido
    Click Element    nome   
    Input Text    locator=nome    text=Requerido automação 1
    Capture Page Screenshot
E preencho o campo Telefone do Requerido  
    Click Element    //input[contains(@placeholder,'Digite o Número do Telefone')]
    Input Text    locator=//input[contains(@placeholder,'Digite o Número do Telefone')]   text=2195777796
    Capture Page Screenshot
E preencho o campo e-mail do Requerido
    Click Element    (//input[@type='email'])[3]
    Input Text    locator=(//input[@type='email'])[3]    text=emailreq@email.com
    Capture Page Screenshot
E clico no botão Salvar Requerido
    Click Element    //button[@type='button'][contains(.,'Salvar Requerido')]
    Capture Page Screenshot
Então o sistema salva os dados do Requerido
    Click Element    //div[contains(@class,'fsCel')]    
    Capture Page Screenshot 
E preencho o campo Tipo de Documento
    Click Element    //select[contains(@class,'form-select ')]
    Click Element    //option[@value='1'][contains(.,'Outros')]
    Capture Page Screenshot
E preencho o campo Título do Documento
    Click Element    //input[contains(@placeholder,'Título do Documento')]
    Input Text    locator=//input[contains(@placeholder,'Título do Documento')]    text=Teste
    Capture Page Screenshot
E faço o upload de um arquivo
    Click Element   //label[@for='file-upload'][contains(.,'Selecionar Documento')]
    Choose File    xpath=//input[@type="file"]    ${CAMINHO_ARQUIVO}  
    Capture Page Screenshot  
E clico no botão Inserir Documento
    Click Element    //button[contains(.,'Inserir Documento')] 
    Capture Page Screenshot   
Então o documento é adicionado
    Page Should Contain    text=Tipo de Documento
    Capture Page Screenshot
 E clico no botão Salvar e Submeter à CASC
     Click Element    //button[contains(.,'Salvar e Submeter à CASC')]
     Capture Page Screenshot
 Então o sistema ...