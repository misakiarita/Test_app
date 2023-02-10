# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Blog
  end

end
