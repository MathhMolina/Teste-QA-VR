class ConsultaDeCep
    include HTTParty

    base_uri "https://viacep.com.br"

    def get_cep(cep)
        url =  "/ws/#{cep}/json/"
        self.class.get(url)
    end
end