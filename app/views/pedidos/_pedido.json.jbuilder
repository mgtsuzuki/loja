json.extract! pedido, :id, :numpedido, :prazoentrega, :vendedor_id, :cliente_id, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
