#language: pt

Funcionalidade: Login
    Para que eu possa fazer compras dos itens clássicos
    Sendo um usuário cadastrado
    Posso me autenticar pela tela de login

    @login_happy
    Cenario: Usuário logado 

        Dado que acesso a tela de login
        Quando eu faço login com "joe@taekwonwikia.com.br" e "pass123"
        Então posso ver a tela minha conta

    @login_happiless
    Esquema do Cenario: Tentar logar

        Dado que acesso a tela de login
        Quando eu faço login com <email> e <senha>
        Então devo ver <mensagem> como popup

    Exemplos: 
        | email                     | senha     | mensagem                            |
        | "joe@taekwonwikia.com.br" | "123pass" | "Usuário e/ou senha inválidos."     |
        | "adam.warlok#yahoo.com"   | "123pass" | "Usuário e/ou senha inválidos."     |
        | ""                        | "123pass" | "Todos os campos são obrigatórios." |
        | "joe@taekwonwikia.com.br" | ""        | "Todos os campos são obrigatórios." |

    @last_try
    Cenario: Login na 3a tentativa

        Dado que acesso a tela de login
        Quando logo sem sucesso 2 vezes
        E faço login na última tentativa
        Então posso ver a tela minha conta
