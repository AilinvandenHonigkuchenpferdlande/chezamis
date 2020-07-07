class HomePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true # anyone can create a home
  end

  def show?
    true #anyone can see a home
  end
end
