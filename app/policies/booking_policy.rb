class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def new?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def accept?
    user.is_chef == true
  end

  def decline?
    user.is_chef == true
  end
end
