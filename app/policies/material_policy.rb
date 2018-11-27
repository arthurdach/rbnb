class MaterialPolicy < ApplicationPolicy

  def show?
    return true
  end

  def create?
    return true
  end

  def update?
    return false
  end

  def destroy?
    return false
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
