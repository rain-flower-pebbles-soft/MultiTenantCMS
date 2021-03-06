class LinkPolicy < ApplicationPolicy

  def update?
    record.site.user === user || user.admin?
  end

  def create?
    record.site.user === user || user.admin?
  end

  def destroy?
    record.site.user === user || user.admin?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
