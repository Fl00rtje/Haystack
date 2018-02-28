class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
    # change to 'true' if you want to work on the show page wo being loged in
  end

  def create?
    true
  end

  def edit?
    record.user == user
    # change to 'true' if you want to work on the show page wo being loged in
  end

  def update?
    record.user == user
    # change to 'true' if you want to work on the show page wo being loged in
  end
end
