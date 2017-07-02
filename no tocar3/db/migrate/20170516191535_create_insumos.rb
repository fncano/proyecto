class CreateInsumos < ActiveRecord::Migration[5.1]
  def change
    create_table :insumos do |t|
      t.date :fecha
      t.integer :num_fact
      t.string :proveedor
      t.string :documento
      t.integer :numero
      t.string :empleado
      t.integer :cant
      t.string :detalle
      t.integer :val_uni
      t.integer :total
      t.integer :subtotal
      t.integer :iva
      t.integer :total

      t.timestamps
    end
  end
end
