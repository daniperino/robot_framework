*** Settings ***
Documentation   Essa suíte testa o navegador da Amazon.com.br
Resource    amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador 


*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Mais Vendidos"
    [Documentation]    Esse teste verifica o menu Eletrônicos do site da Amazon.com.br
    ...                e verifica a categoria Computadores e Informática   
    [Tags]    menus
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Mais Vendidos"
    Então o título da página deve ficar "Amazon.com.br | Tudo pra você, de A a Z."
    E o texto "Mais Vendidos em Eletrônicos" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página    

Caso de teste 02 - Pesquisa de um produto
    [Documentation]    Esse teste verifica a busca de um produto   
    [Tags]    pesquisa_produto    busca_produto
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página
    
     