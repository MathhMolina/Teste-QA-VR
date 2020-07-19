
Dado('que tenho um CEP {string}') do |cep|
    @cep = cep
end

Quando('realizo a consulta na API') do
    @consulta = ConsultaDeCep.new
    @retorno = @consulta.get_cep(@cep)
end

Então('tenho o retorno do cenario {string}') do |retorno|
    if retorno == "Aprovado"
        expect(@retorno.code).to eql(200)
        expect(@retorno["cep"]).to eql(@cep)
        expect(@retorno["logradouro"]).to eql("Rua Miguel Mascarenhas")
        expect(@retorno["complemento"]).to eql("")
        expect(@retorno["bairro"]).to eql("Parque Savoy City")
        expect(@retorno["localidade"]).to eql("São Paulo")
        expect(@retorno["uf"]).to eql("SP")
        expect(@retorno["unidade"]).to eql("")
        expect(@retorno["ibge"]).to eql("3550308")
        expect(@retorno["gia"]).to eql("1004")
        log("O código de IBGE do cep consultado é #{@retorno["ibge"]}")
    else
        expect(@retorno["erro"]).to eql(true)
    end
end