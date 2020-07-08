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

  def edit?
    record.user == user ? true : false # I can edit if I created the home
  end

  def update?
    record.user == user ? true : false
  end

  def destroy?
    record.user == user ? true : false
  end
end
