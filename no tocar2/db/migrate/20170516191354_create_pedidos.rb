class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.date :fecha
      t.integer :num_pedi
      t.string :cliente
      t.date :fecha_entrega
      t.string :empleado
      t.integer :cant
      t.string :prenda
      t.string :pieza
      t.string :talla
      t.integer :val_uni
      t.integer :total
      t.integer :subtotal
      t.integer :iva
      t.integer :total

      t.timestamps
    end
  end
end
