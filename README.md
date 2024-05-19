## Projeto 1 (um) - "Robot Web"

- Autor Moisés Ademir Chiaretto
  
- Descrição das explicações de cada item da 'estrutura do projeto "Robot Web" desenvolvido' em Robot Framework com a IDE PyCharm.

- Objetivo acessar um site Web, navegar pela página e realizar um pesquisa de um produto.

    - Caso de Teste 01 - Acesso ao menu Eletrônicos
 
    - Caso de Teste 02 - Pesquisa de um Produto


- Site oficial do Robot Framework:

  https://robotframework.org

  ![11_Logo_Robot_Frame_Work](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/84624ffd-4c82-4ec8-8304-c8c94d96dde8)


## Estrutura do Projeto "Robot Web"


![10_Estrutura_do_Projeto](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/54263e3e-853c-4a99-a715-873d53422279)



## Configurações Passo a Passo de um Projeto Robot Framework


**1. Pré-requisitos**

1.1. IDE VSCode ou IDE PyCharm instaladas

1.2. Instalar o Python

https://www.python.org/downloads/

![04_Python](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/6061d1c0-e7a6-49d9-8100-b3dde59ad53a)



**2. Instalação do Robot FrameWork**

2.1. Site: https://robotframework.org

![11_Logo_Robot_Frame_Work](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/6bb3a2f7-5c0c-4a52-976c-bb79cdeb06f8)


2.2. Opção: GET STARTED

2.3. Opção: Install

2.4. Digitar no Terminal da IDE PyCharm / VSCode

pip install robotframework

2.5. Digitar no Terminal da IDE PyCharm / VSCode para atualização

pip install -U robotframework

2.6. Digitar no Terminal da IDE PyCharm / VSCode

robot --version

**3. Instalação da Library para Web Testing - SeleniumLibrary**

3.1. Site: https://robotframework.org

3.2. Opção: RESOURCES

3.3. Opção: LIBRARIES

3.4. Opção: SeleniumLibrary

3.5. No "Github" rolar abaixo até encontrar "SeleniumLibrary" e "Installation"

3.6. Digitar no Terminal da IDE PyCharm / VSCode

pip install -U robotframework-seleniumlibrary


**4. Instalação da Library para Web Testing - RequestsLibrary**

4.1. Site: https://robotframework.org

4.2. Opção: RESOURCES

4.3. Opção: LIBRARIES

4.4. Opção: HTTP RequestsLibrary (Python)

4.5. Digitar no Terminal da IDE PyCharm / VSCode

4.pip install robotframework-requests

**5. Verificar as bibliotecas instaladas na máquina**

5.1. Digitar no Terminal da IDE PyCharm / VSCode

pip list

**Dica é criar o arquivo "requeriments.txt"**

Informar neste arquivo todas as bibliotecas a serem instaladas e as versões, exemplos:

robotframework>=7.0

robotframework-pythonlibcore>=4.4.1

robotframework-requests>=0.9.7

robotframework-seleniumlibrary>=6.3.0

lxml>=5.2.2

**6. Instalar também a biblioteca para trabalhar com "XPath"**

6.1. Digitar no Terminal da IDE PyCharm / VSCode

pip install lxml


**7. Instalar o Plugin Robot Framework "IntelliLang"**

7.1. Instalar o Plugin "IntelliLang" na IDE PyCharm

7.2. Acessar o botão "Engrenagem" (canto superior direito) e a opção "Settings" na IDE PyCharm

![00_Botao_Configuracoes](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/19825b0e-d869-4be3-9284-d81c05ab5c91)

7.3. Clicar em "Plugins"

7.4. Desmarcar o Plugin "IntelliLang" para habilitar = "Enable"

![01_Configuracoes_Habilitar_Plugin_IntelliLang](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/58fe1f1c-78f6-4c45-9395-16f5bde4999f)

7.5. Clicar em "Plugins"

7.6. Desmarcar o Plugin "Gherkin = "Enable"

![02_Configuracoes_Habilitar_Plugin_Gherkin](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/1ad84f95-a3e8-4b17-9167-d86406a7799a)


7.7. Botão "OK"

7.8. Reiniciar (reset) a IDE PyCharm.

**8. Instalar no navegador (Chrome ou Firefox) a extensão TruePath**

- Esta extensão é utilizada para localizar o **"XPath"** dos elementos da tela.


**9. Baixar os drivers dos browsers "Google Chrome" e do "Mozilla Firefox"**

**9.1. Browser "Google Chrome"**

https://developer.chrome.com/docs/chromedriver/downloads?hl=pt-br

https://googlechromelabs.github.io/chrome-for-testing/

**9.2. Browser "Mozilla Firefox"**

https://github.com/mozilla/geckodriver/releases

**10. Consultas sobre as Library ou Keyword do Projeto Robot_Web**

https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

**11. Executar todo a suite de testes**
robot tests.robot

**12. Executar somente um cenário de testes**
robot -t "Caso de Teste 01 - Acesso ao menu Eletrônicos" tests.robot
robot -t "Caso de Teste 02 - Pesquisa de um Produto" tests.robot


## Arquivo "tests.robot"

- Caminho do arquivo "tests.robot":

  **/Robot_Web/web/tests**

- Contém os cenários de testes a serem executados.
    - Caso de Teste 01 - Acesso ao menu Eletrônicos
    - Caso de Teste 02 - Pesquisa de um Produto

```

*** Settings ***
Documentation  Essa suíte testa o site da Amazon.com.br
Resource       url_resources.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu Eletrônicos
    [Documentation]  Este teste verifica o menu eletrônicos do site da Amazon.com.br
    ...              e verifica a categoria Computadores e Informática
    [Tags]           menus  categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"
    Verificar se aparece a categoria "Tablets"

 Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]  Este teste verifica a busca de um produto
    [Tags]           busca_produtos  lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "xbox Series 5", no campo de pequisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"

```

## Arquivo "tests_bdd.robot"

- Caminho do arquivo "tests_bdd.robot":

  **/Robot_Web/web/tests**

- Contém o BDD dos Cenários de Testes.

```

*** Settings ***
Documentation  Essa suíte testa o site da Amazon.com.br
Resource       url_resources.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu Eletrônicos
    [Documentation]  Este teste verifica o menu eletrônicos do site da Amazon.com.br
    ...              e verifica a categoria Computadores e Informática
    [Tags]           menus  categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página

 Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]  Este teste verifica a busca de um produto
    [Tags]           busca_produtos  lista_busca
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página


```

## Arquivo "url_resources.robot"

- Caminho do arquivo "url_resources.robot":

  **/Robot_Web/web/tests**

- Contém o código (keyword) do Robot Framework que será executado de acordo com o BDD, os cenários de testes.

```

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

```

## Executar os testes "tests.robot"

- Caminho do arquivo "tests.robot":

  **/Robot_Web/web/tests**

**1. Executar toda a suite de testes, digitar o comando abaixo no terminal**

robot tests.robot

**2. Executar somente um cenário de testes, digitar o comando abaixo no terminal**

robot -t "Caso de Teste 01 - Acesso ao menu Eletrônicos" tests.robot

robot -t "Caso de Teste 02 - Pesquisa de um Produto" tests.robot


**3. Executar o arquivo tests.robot dentro da pasta /web/tests e gerando os arquivos de logs dentro da pasta /log.**

  - **Conforme a **"Estrutura do Projeto Robot Web", especificad acima.**

  - Ver o comando e a imagem abaixo.

robot -d ./log ./web/tests/tests.robot


![04_Testes_Pass](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/f9cf3fc6-fc6e-47f6-8495-27e5cb4959c8)



## Log dos Testes Executados - Report

- Relatório dos resultados dos testes executados, inclusive com estatística dos resultados e evidências de telas.

- Informar no navegador ou o caminho do **arquivo de log**, exemplo:

  **C:\Users\Moises\PycharmProjects\Robot_Web\Robot_Web\log\log.html**

- Ou localizar e abrir o arquivo **log.html**


![05_Tests_Log](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/336aada4-2464-48d1-9ac3-c81dffc28fb1)



![06_Tests_Log_CT01](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/4f6ae483-8962-4cc6-b6eb-d33e6ba1749e)



![07_Tests_Log_CT01](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/94e2bf4d-3f6b-49f6-98ea-2ddc620322f4)



![08_Tests_Log_CT02](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/2dc9323a-243c-4da5-af22-9302b3f20f39)



![09_Tests_Report](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/fd8aa7c9-2ece-4743-8fdb-e4ae18dcb5f1)



![09_Tests_Report_Statistics_Details](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/70a238ea-21e0-40fc-83c6-1c8f0e3b8dab)

