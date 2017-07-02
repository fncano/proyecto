class CreateProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :precio
      t.integer :cantidad
      t.integer :iva
      t.references :marca, foreign_key: true

      t.timestamps
    end
  end
end
