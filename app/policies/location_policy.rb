class LocationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    return true
  end

  def show?
    return true
  end

  def new?
    create?
  end

  def create?
    record.material.user != user
  end

  def validation?
    record.user == user
  end
end
