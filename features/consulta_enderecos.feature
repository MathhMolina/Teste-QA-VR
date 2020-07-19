# language: pt
@consulta_cep
Funcionalidade: Consultar os dados de um endereço a partir de um CEP.
    Eu como usuario
    Desejo consultar um CEP
    Para encontrar um endereço

    Esquema do Cenário: Realizar consulta de CEP
        Dado que tenho um CEP "<CEP>"
        Quando realizo a consulta na API
        Então tenho o retorno do cenario "<Retorno>"

        Exemplos: 
            |CEP      |Retorno |
            |03570-220|Aprovado|
            |00000-000|Negado  |
      



