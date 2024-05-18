## Projeto 1 (um) - "Robot Web"

- Autor Moisés Ademir Chiaretto
  
- Descrição das explicações de cada item da 'estrutura do projeto "Robot Web" desenvolvido' em Robot Framework com a IDE PyCharm.

- Site oficial do Robot Framework:

  https://robotframework.org

  ![11_Logo_Robot_Frame_Work](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/84624ffd-4c82-4ec8-8304-c8c94d96dde8)


## Estrutura do Projeto "Robot Web"

![10_Estrutura_do_Projeto](https://github.com/moiseschiaretto/Robot_Web/assets/84775466/1c1dca7f-53a0-4d93-bd18-030e9cd8d9eb)


## Configurações Passo a Passo de um Projeto Robot Framework

```
  **Pré-requisitos**
  1. IDE VSCode ou IDE PyCharm instaladas
  2. Instalar o Python
  https://www.python.org/downloads/
  
  
  **Instalação do Robot FrameWork**
  1. Site: https://robotframework.org
  2. Opção: GET STARTED
  3. Opção: Install
  4. Digitar no Terminal da IDE PyCharm / VSCode
  pip install robotframework
  5. Digitar no Terminal da IDE PyCharm / VSCode para atualização
  pip install -U robotframework
  6. Digitar no Terminal da IDE PyCharm / VSCode
  robot --version
  
  **Instalação da Library para Web Testing - SeleniumLibrary**
  1. Site: https://robotframework.org
  2. Opção: RESOURCES
  3. Opção: LIBRARIES
  4. Opção: SeleniumLibrary
  5. No "Github" rolar abaixo até encontrar "SeleniumLibrary" e "Installation"
  6. Digitar no Terminal da IDE PyCharm / VSCode
  pip install -U robotframework-seleniumlibrary
  
  
  **Instalação da Library para Web Testing - RequestsLibrary**
  1. Site: https://robotframework.org
  2. Opção: RESOURCES
  3. Opção: LIBRARIES
  4. Opção: HTTP RequestsLibrary (Python)
  5. Digitar no Terminal da IDE PyCharm / VSCode
  pip install robotframework-requests
  
  **Verificar as bibliotecas instaladas na máquina**
  1. Digitar no Terminal da IDE PyCharm / VSCode
  pip list
  
  **Dica é criar o arquivo "requeriments.txt"**
  Informar neste arquivo todas as bibliotecas a serem instaladas e as versões, exemplo
  robotframework>=7.0
  robotframework-pythonlibcore>=4.4.1
  robotframework-requests>=0.9.7
  robotframework-seleniumlibrary>=6.3.0
  lxml>=5.2.2
  
  **Instalar também a biblioteca para trabalhar com "XPath"**
  1. Digitar no Terminal da IDE PyCharm / VSCode
  pip install lxml
  
  **Instalar o Plugin Robot Framework "IntelliLang"**
  1. Instalar o Plugin "IntelliLang" na IDE PyCharm
  2. Acessar o botão "Engrenagem" (canto superior direito) e a opção "Settings" na IDE PyCharm
  3. Clicar em "Plugins"
  4. Desmarcar o Plugin "IntelliLang" para habilitar = "Enable"
  5. Botão "OK"
  6. Reiniciar (reset) a IDE PyCharm.
  
  **Instalar no navegador (Chrome ou Firefox) a extensão TruePath**
  - Esta extensão é utilizada para localizar o "XPath" dos elementos da tela.
  
  **Baixar os drivers dos browsers "Google Chrome" e do "Mozilla Firefox"**

  **1. Browser "Google Chrome"**
  https://developer.chrome.com/docs/chromedriver/downloads?hl=pt-br
  https://googlechromelabs.github.io/chrome-for-testing/
  
  **2. Browser "Mozilla Firefox"**
  https://github.com/mozilla/geckodriver/releases
  
  **Consultas sobre as Library ou Keyword do Projeto Robot_Web**
  https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
  
  **Executar todo a suite de testes**
  robot tests.robot
  
  **Executar somente um cenário de testes**
  robot -t "Caso de Teste 01 - Acesso ao menu Eletrônicos" tests.robot
  robot -t "Caso de Teste 02 - Pesquisa de um Produto" tests.robot

```

