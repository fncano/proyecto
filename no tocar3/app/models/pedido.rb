class Pedido < ApplicationRecord
  
  validates :num_pedi, :cliente, :empleado,  presence: true
  
    def self.search(search, page)
      where(['upper(num_pedi) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("num_pedi")
    end
end
