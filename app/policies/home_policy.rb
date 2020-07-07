class HomePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true # anyone can create a restaurant
  end

  def show?
    true
  end
end
