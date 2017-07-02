class Insumo < ApplicationRecord
  
  validates :num_fact, :proveedor, :numero, :empleado,  presence: true
  
  
  
  
    def self.search(search, page)
      where(['upper(proveedor) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("proveedor")
    end
end
