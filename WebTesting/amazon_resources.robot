*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com.br/
${LOGO_DA_PAGINA}             //a[contains(@class,'nav-logo-link nav-progressive-attribute')]
${MENU_MAIS_VENDIDOS}         //a[@href='/gp/bestsellers/?ref_=nav_cs_bestsellers'][contains(.,'Mais Vendidos')]
${HEADER_MAIS_VENDIDOS}       //h2[@class='a-carousel-heading a-inline-block'][contains(.,'Mais Vendidos em Eletrônicos')]
${TEXTO_MAIS_VENDIDOS}        Mais Vendidos em Eletrônicos
${NOME_CATEGORIA}             //a[@href='/gp/bestsellers/computers/ref=zg_bs_nav_0'][contains(.,'Computadores e Informática')]



*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGO_DA_PAGINA}

Entrar no menu "Mais vendidos"
    Click Element    locator=${MENU_MAIS_VENDIDOS}   

Verificar se aparece a frase "Mais Vendidos em Eletrônicos"
    Wait Until Page Contains    text=${TEXTO_MAIS_VENDIDOS}
    Wait Until Element Is Visible    locator=${HEADER_MAIS_VENDIDOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "Computadores e Informática"
    Element Should Be Visible    locator=${NOME_CATEGORIA}

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa  
    Click Element    locator=nav-search-submit-button 
    
Verificar se no resultado da pesquisa está listado o produto "${PRODUTO}" 
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[2]
    
    
    

 #    Gherkin BDD

Dado que estou na home page da Amazon.com.br   
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."

Quando acessar o menu "Mais Vendidos"
    Entrar no menu "Mais vendidos"

Então o título da página deve ficar "Amazon.com.br | Tudo pra você, de A a Z."
    Verificar se aparece a frase "Mais Vendidos em Eletrônicos"

 E o texto "Mais Vendidos em Eletrônicos" deve ser exibido na página   
     Verificar se aparece a frase "Mais Vendidos em Eletrônicos"

E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"

Quando pesquisar pelo produto "Xbox Series S" 
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa

Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
        Verificar se o título da página fica "Amazon.com.br : Xbox Series S"

 E um produto da linha "Xbox Series S" deve ser mostrado na página
         Verificar se no resultado da pesquisa está listado o produto "Console Xbox Series S"    
        

         




    

    

       
    
            



