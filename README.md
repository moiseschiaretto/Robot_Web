## Projeto 1 (um) - "Robot Web"

- Autor Moisés Ademir Chiaretto
  
- Descrição das explicações de cada item da 'estrutura do projeto "Robot Web" desenvolvido' em Robot Framework com a IDE PyCharm.

- O objetivo acessar um site Web, navegar pela página e realizar uma pesquisa de um produto.

    - Caso de Teste 01 - Acesso ao menu Eletrônicos
 
    - Caso de Teste 02 - Pesquisa de um Produto


- Site oficial do Robot Framework:

  https://robotframework.org

  ![11_Logo_Robot_Frame_Work](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/84624ffd-4c82-4ec8-8304-c8c94d96dde8)


## Estrutura do Projeto "Robot Web"


![10_Estrutura_do_Projeto](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/222a1bf1-157d-44a8-9b0e-6a71e91f69a4)



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

```
pip install robotframework
```

2.5. Digitar no Terminal da IDE PyCharm / VSCode para atualização

```
pip install -U robotframework

```
2.6. Digitar no Terminal da IDE PyCharm / VSCode

```
robot --version
```

**3. Instalação da Library para Web Testing - SeleniumLibrary**

3.1. Site: https://robotframework.org

3.2. Opção: RESOURCES

3.3. Opção: LIBRARIES

3.4. Opção: SeleniumLibrary

3.5. No "Github" rolar abaixo até encontrar "SeleniumLibrary" e "Installation"

3.6. Digitar no Terminal da IDE PyCharm / VSCode

```
pip install -U robotframework-seleniumlibrary
```

**4. Instalação da Library para Web Testing - RequestsLibrary**

4.1. Site: https://robotframework.org

4.2. Opção: RESOURCES

4.3. Opção: LIBRARIES

4.4. Opção: HTTP RequestsLibrary (Python)

4.5. Digitar no Terminal da IDE PyCharm / VSCode

```

pip install robotframework-requests

```

**5. Verificar as bibliotecas instaladas na máquina**

5.1. Digitar no Terminal da IDE PyCharm / VSCode

```
pip list
```

**Dica é criar o arquivo "requeriments.txt"**

Informar neste arquivo todas as bibliotecas a serem instaladas e as versões, exemplos:

```
robotframework>=7.0

robotframework-pythonlibcore>=4.4.1

robotframework-requests>=0.9.7

robotframework-seleniumlibrary>=6.3.0

lxml>=5.2.2

```

**6. Instalar também a biblioteca para trabalhar com "XPath"**

6.1. Digitar no Terminal da IDE PyCharm / VSCode

```
pip install lxml
```


**7. Instalar o Plugin "Robot Framework Language Server"**

7.1. Instalar o Plugin "Robot Framework Language Server" na IDE PyCharm

7.2. Acessar o botão "Engrenagem" (canto superior direito) e a opção "Settings" na IDE PyCharm

![00_Botao_Configuracoes](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/19825b0e-d869-4be3-9284-d81c05ab5c91)

7.3. Clicar em "Plugins"

7.4 Guia "Marketplace" pesquisar por "ROBOT"

7.5 Selecionar o Pluging **"Robot Framework Language Server"**

7.6 Clicar em **"Install"**

![02_Plugins_Robot_Framework](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/742dcb3a-73d8-4f05-8e2d-d6ac676d5e60)


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

```

robot tests.robot

```

**12. Executar somente um cenário de testes**

```

robot -t "Caso de Teste 01 - Acesso ao menu Eletrônicos" tests.robot

robot -t "Caso de Teste 02 - Pesquisa de um Produto" tests.robot


```

## Dica para configurar o "Tipo de Arquivo" na IDE PyCharm

**1.** Acessar o botão "Engrenagem" (canto superior direito) e a opção "Settings" na IDE PyCharm

![00_Botao_Configuracoes](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/dc7d4090-326f-4fad-8dc5-540677e84a4d)

**2.** Clicar em "Editor" >> "File Types" >> "Robot Framework" >> ""File name patterns".

![01_EDITOR_FILE_TYPES](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/8caad38f-705d-4d99-badf-e47bf9482ef9)



## Arquivo "tests.robot"

- Caminho do arquivo "tests.robot":

**/Robot_Web/web/tests**

- Contém os cenários de testes a serem executados.
    - Caso de Teste 01 - Acesso ao menu Eletrônicos
    - Caso de Teste 02 - Pesquisa de um Produto

```

*** Settings ***
Documentation  Essa suíte testa o site da Amazon.com.br
Resource       pesquisa.robot
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


## Arquivo "pesquisa.robot"

- Caminho do arquivo "pesquisa.robot":

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

```

robot tests.robot

```


**2. Executar somente um cenário de testes, digitar o comando abaixo no terminal**

```

robot -t "Caso de Teste 01 - Acesso ao menu Eletrônicos" tests.robot

robot -t "Caso de Teste 02 - Pesquisa de um Produto" tests.robot


```


**3. Executar o arquivo tests.robot dentro da pasta /web/tests e gerando os arquivos de logs dentro da pasta /log.**

  - **Conforme a "Estrutura do Projeto Robot Web", especificada acima.**

  - Ver o comando e as imagens abaixo.

```

robot -d ./log ./web/tests/tests.robot

```


![12_LOG](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/4d219c67-3c16-45c9-853a-f04aac0f7901)



![12_TESTS](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/6d527388-4164-46c2-a86d-a106419aa7cf)



![04_Testes_Pass](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/82dd27a9-ceb0-49b9-af4a-d274d049c442)




## Log dos Testes Executados - Report

- Relatório dos resultados dos testes executados, inclusive com estatística dos resultados e evidências de telas.

- Informar no navegador ou o caminho do **arquivo de log**, exemplo:

  **C:\Users\Moises\PycharmProjects\Robot_Web\Robot_Web\log\log.html**

- Outra forma é localizar e abrir o arquivo **log.html**


![12_LOG](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/2dc5140c-5910-49a1-a68c-de52f94b265f)



![05_Tests_Log](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/456d081c-bd64-44f3-9af8-64b55e44f99a)



![06_Tests_Log_CT01](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/756783c6-e0ac-4246-8480-572b8e8eca59)



![07_Tests_Log_CT01](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/a119af8c-ee89-4750-b7b0-1ef2316218b8)



![08_Tests_Log_CT02](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/681d20a2-24f4-41fc-8412-d4af324cff9d)



![09_Tests_Report](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/29c3dc05-4257-4492-9d36-8f1cd2ffd9f5)



![09_Tests_Report_Statistics_Details](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/50fa61bd-319d-44b5-825d-593f05e48c63)

