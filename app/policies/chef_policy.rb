class ChefPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def create?
   record.chef == true
  end

  def update?
    record.chef == true
  end

  def destroy?
    record.chef == true
  end
end
