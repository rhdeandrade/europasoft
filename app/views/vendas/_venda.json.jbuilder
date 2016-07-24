json.extract! venda, :id, :data, :cliente_id, :vendedor_id, :produto, :valor_total, :created_at, :updated_at
json.url venda_url(venda, format: :json)