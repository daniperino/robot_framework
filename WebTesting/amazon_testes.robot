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
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Mais vendidos"
    Verificar se aparece a frase "Mais Vendidos em Eletrônicos"
    Verificar se o título da página fica "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"
    Verificar se aparece a categoria "Computadores e Informática"

Caso de teste 02 - Pesquisa de um produto
    [Documentation]    Esse teste verifica a busca de um produto   
    [Tags]    pesquisa_produto    busca_produto
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa




    