class Empleado < ApplicationRecord
  
  belongs_to :documento
  
 

  
  
  
  
  
  
  validates :numero, :nombre, :telefono, :usuario, :contrasena,  presence: true
  
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates :correo, format: { with: EMAIL_REGEX, message: "Formato de email invalido" }
  
    def self.search(search, page)
      where(['upper(nombre) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
    end
end
