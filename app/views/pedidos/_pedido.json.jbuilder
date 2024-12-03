json.extract! pedido, :id, :cliente_id, :estado, :fecha, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
