class HomePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # anyone can view home CHANGE LATER
      scope.all

      # only creator/user can view homes
      # scope.where(user: user)
    end
  end

  def create?
    true # anyone can create a home
  end

  def show?
    true # anyone can see a home
  end

  def update?
    user_is_owner_or_admin? # I can edit if I created the home
  end

  def destroy?
    user_is_owner_or_admin?
  end

  private

  def user_is_owner_or_admin?
    record.user == user # || user.admin
  end
end
