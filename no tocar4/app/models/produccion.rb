class Produccion < ApplicationRecord
    def self.search(search, page)
      where(['upper(empleado) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("empleado")
    end
end
