class Venta < ApplicationRecord
    def self.search(search, page)
      where(['upper(cliente) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("cliente")
    end
end
