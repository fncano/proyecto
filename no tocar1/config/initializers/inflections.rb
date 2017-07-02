ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.clear

  inflect.plural(/([^djlnrs])([A-Z]|_|$)/, '\1s\2')
  inflect.plural(/([djlnrs])([A-Z]|_|$)/, '\1es\2')
  inflect.plural(/(.*)z([A-Z]|_|$)$/i, '\1ces\2')

  inflect.singular(/([^djlnrs])s([A-Z]|_|$)/, '\1\2')
  inflect.singular(/([djlnrs])es([A-Z]|_|$)/, '\1\2')
  inflect.singular(/(.*)ces([A-Z]|_|$)$/i, '\1z\2')

  inflect.irregular('el', 'los')
  inflect.irregular('user', 'users')

end
