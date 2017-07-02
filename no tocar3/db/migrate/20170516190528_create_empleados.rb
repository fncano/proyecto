class CreateEmpleados < ActiveRecord::Migration[5.1]
  def change
    create_table :empleados do |t|
      t.string :documento
      t.integer :numero
      t.string :nombre
      t.string :direcion
      t.string :lugar
      t.string :telefono
      t.string :movil
      t.string :correo
      t.string :usuario
      t.string :contrasena

      t.timestamps
    end
  end
end
