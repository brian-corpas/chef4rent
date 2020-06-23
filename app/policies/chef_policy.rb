class ChefPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def show?
    true
  end

  def create?
    user.is_chef == true
  end

  def update?
    user.is_chef == true
  end

  def destroy?
    user.is_chef == true
  end
end
