class Producto < ApplicationRecord
  belongs_to :marca
  
  def marca_nombre
     marca.nombre if marca
  end
 
  def marca_nombre=(nombre)
      self.marca = Marca.find_by_nombre(nombre) unless nombre.blank?
  end

end
