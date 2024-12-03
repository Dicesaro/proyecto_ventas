json.extract! factura, :id, :pedido_id, :monto, :fecha_pago, :created_at, :updated_at
json.url factura_url(factura, format: :json)
