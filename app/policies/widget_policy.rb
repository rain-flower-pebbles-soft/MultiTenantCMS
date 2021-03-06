class WidgetPolicy < ApplicationPolicy
  
  def create?
    record.site.user === user
  end
  
  def update?
    record.site.user === user
  end
  
  def destroy?
    record.site.user === user
  end
  
  class Scope < Scope
    def resolve
      scope
    end
  end
end
