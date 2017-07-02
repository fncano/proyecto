class AddDocumentoToEmpleados < ActiveRecord::Migration[5.1]
  def change
    add_reference :empleados, :documento, foreign_key: true
  end
end
