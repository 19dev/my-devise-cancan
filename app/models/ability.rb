class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.role? :geek
      can :read, Article
    end

    if user.role? :moderator
      can [:read, :create], Article
    end

    if user.role? :admin
      can [:read, :create, :update], Article
    end

    if user.role? :superadmin
      can :manage, Article
    end
  end
end
