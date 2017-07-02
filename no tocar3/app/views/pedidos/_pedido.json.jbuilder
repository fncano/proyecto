json.extract! pedido, :id, :fecha, :num_pedi, :cliente, :fecha_entrega, :empleado, :cant, :prenda, :pieza, :talla, :val_uni, :total, :subtotal, :iva, :total, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
