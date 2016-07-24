json.extract! vendedor, :id, :nome, :cpf, :ativo, :created_at, :updated_at
json.url vendedor_url(vendedor, format: :json)