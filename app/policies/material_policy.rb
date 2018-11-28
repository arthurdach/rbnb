class MaterialPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.where(user: user)
      # For a multi-tenant SaaS app, you may want to use:
      # scope.where(user: user)
    end
  end

  def new?
    return true
  end


  def index?
    return true
  end

  def show?
    return true
  end

  def create?
    return true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def edit?
     update?
  end
end
