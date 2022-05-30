Estória: Saque no Caixa Eletrônico
    Sendo um cliente que é correntista do Ninja Bank
    Posso sacar dinheiro
    Para que eu consiga comprar em lugares que não aceitem débito ou crédito.


Cenário: Saque em conta conrrente
    Dado que eu tenha R$1000,00 em minha conta conrrente
    Quando faço um saque de R$200,00
    Então meu saldo final deve ser R$800,00


Cenário: Deu ruim não tenho saldo
    Dado que eu tenha R$0,00 em minha conta conrrente
    Quando faço um saque de R$100,00
    Então vejo a mensagem 'Saldo insuficiente para saque :('
    E meu saldo final deve ser R$0,00

Cenário: Tenho saldo mas não o suficiente
    Dado que eu tenha R$500,00 em minha conta conrrente
    Quando faço um saque de R$501,00
    Então vejo a mensagem 'Saldo insuficiente para saque :('
    E meu saldo final deve ser R$500,00

Cenário: Limite por saque
    Dado que eu tenha R$1000,00 em minha conta conrrente
    Quando faço um saque de R$701,00
    Então vejo a mensagem 'Limite máximo por saque é de R$700,00'
    E meu saldo final deve ser R$1000,00


