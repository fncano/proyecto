class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
     if user.has_role? :admin
   	    can :manage, :all
   	 elsif user.has_role? :secretaria
       can :manage, Empleado
       can :read, Pedido
       can :read, Venta
       can :read, Perdida
       can :read, Produccion
     elsif user.has_role? :cliente 
       can :read, Pedido
     #else
   	 #   can :read, :all
     end
  end

end
