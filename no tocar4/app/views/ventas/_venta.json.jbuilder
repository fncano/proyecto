json.extract! venta, :id, :fecha, :num_fact, :cliente, :fecha_entrega, :empleado, :cant, :prenda, :pieza, :talla, :val_uni, :total, :subtotal, :iva, :total, :created_at, :updated_at
json.url venta_url(venta, format: :json)
