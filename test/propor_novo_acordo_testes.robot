*** Settings ***

Library    SeleniumLibrary
Documentation    Essa suite testa a funcionalidade Propor Novo Acordo
Test Setup       Abrir o navegador
##Test Teardown    Close Browser 
Resource    ../resource/pages/propor_novo_acordo_page.resource

*** Test Cases ***

Caso de teste 01 - Acessar a tela "Proposta de Novo Acordo"
    Dado que estou logado no sistema de acordos
    E visualizo o título da página
    E clico no botão Propor Novo Acordo
    Então visualizo a tela Proposta de Novo Acordo

Caso de teste 02 - Criar novo acordo
    Dado que estou logado no sistema de acordos
    E visualizo o título da página
    E clico no botão Propor Novo Acordo
    E preencho o campo CNJ
    Então o campo é validado e preenchido
    E clico no botão Adicionar Requerente
    E preencho o campo CPF/CNPJ do Requerente
    E preencho o campo Nome completo do Requerente
    E preencho o campo Telefone do Requerente
    E preencho o campo e-mail do Requerente
    E clico no botão Salvar Requerente
    Então o sistema salva os dados do Requerente
    E clico no botão Adicionar Representante
    E preencho o campo Exposição Fática do Caso
    E preencho o campo CPF/CNPJ do Representante
    E preencho o campo Nome completo do Representante
    E preencho o campo OAB do Representante
    E preencho o campo Telefone do Representante
    E preencho o campo e-mail do Representante
    E clico no botão Salvar Representante
    Então o sistema salva os dados do Representante
    E clico no botão Adicionar Requerido
    E preencho o campo Ente/Órgão Público Estadual?como não
    E preencho o campo CPF/CNPJ do Requerido
    E preencho o campo Nome completo do Requerido
    E preencho o campo Telefone do Requerido
    E preencho o campo e-mail do Requerido
    E clico no botão Salvar Requerido
    Então o sistema salva os dados do Requerido
    E preencho o campo Tipo de Documento
    E preencho o campo Título do Documento
    E faço o upload de um arquivo
    E clico no botão Inserir Documento
    Então o documento é adicionado
    E clico no botão Salvar e Submeter à CASC
    ##Então o sistema ...

    