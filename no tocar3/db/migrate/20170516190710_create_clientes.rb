class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :documento
      t.integer :numero
      t.string :nombre
      t.string :direcion
      t.string :lugar
      t.string :telefono
      t.string :movil
      t.string :correo
      t.string :empleado

      t.timestamps
    end
  end
end
