*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                  https://www.amazon.com.br
${BROWSER}              firefox
${MENU_ELETRONICOS}     //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}   //h1[contains(.,'Eletrônicos e Tecnologia')]
${TITULO}               //title[contains(.,'Eletrônicos e Tecnologia | Amazon.com.br')]

*** Keywords ***
Abrir o navegador
    Open Browser  browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To  url=${URL}
    Sleep  2s
    Wait Until Element Is Visible  ${MENU_ELETRONICOS}  timeout=5s

Entrar no menu "Eletrônicos"
    Click Element   ${MENU_ELETRONICOS}
    Sleep  5s

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains        text=${FRASE}
    Wait Until Element Is Visible   locator=${HEADER_ELETRONICOS}
    Sleep  2s

Verificar se o título da página fica "${TITULO}"
    Title Should Be  title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Wait Until Page Contains        text=${NOME_CATEGORIA}
    Wait Until Element Is Visible   locator=//a[@aria-label='${NOME_CATEGORIA}']
    Sleep  2s

Digitar o nome de produto "${PRODUTO}", no campo de pequisa
    Input Text  locator=twotabsearchtextbox  text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element  locator=nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible   locator=(//span[contains(.,'${PRODUTO}')])[3]


# BDD - Gherkin
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletrônicos"
Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"

 Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "xbox Series 5", no campo de pequisa
    Clicar no botão de pesquisa
 Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
 E um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
