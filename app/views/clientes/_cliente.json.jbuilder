json.extract! cliente, :id, :nome, :cpf_cnpj, :rua, :numero, :cep, :bairro, :telefone, :celular, :telefone_comercial, :data_nascimento, :rg, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)