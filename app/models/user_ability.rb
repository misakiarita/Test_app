# frozen_string_literal: true

class UserAbility
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, Blog
    elsif user.organization?
      can :create, Blog
      can :update, Blog
      can :destroy, Blog
      can :read, Blog
    
    elsif user.general?
      can :update, Blog
      can :read, Blog

    else
      can :read, Blog 
    end
  end
end
