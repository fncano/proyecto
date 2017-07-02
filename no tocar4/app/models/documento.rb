class Documento < ApplicationRecord
    has_many :empleados
    
def name
 	self.nombre
end
    
    
    
end
