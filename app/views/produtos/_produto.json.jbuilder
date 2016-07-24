json.extract! produto, :id, :nome, :tipo, :vencimento, :created_at, :updated_at
json.url produto_url(produto, format: :json)